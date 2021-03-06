package CXGN::Phenome::Schema::Germplasm;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("germplasm");
__PACKAGE__->add_columns(
  "germplasm_id",
  {
    data_type => "integer",
    default_value => "nextval('germplasm_germplasm_id_seq'::regclass)",
    is_nullable => 0,
    size => 4,
  },
  "germplasm_type",
  {
    data_type => "character varying",
    default_value => undef,
    is_nullable => 1,
    size => 10,
  },
  "individual_id",
  { data_type => "bigint", default_value => undef, is_nullable => 0, size => 8 },
  "description",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "dbxref_id",
  { data_type => "bigint", default_value => undef, is_nullable => 1, size => 8 },
  "sp_person_id",
  { data_type => "bigint", default_value => undef, is_nullable => 1, size => 8 },
  "create_date",
  {
    data_type => "timestamp with time zone",
    default_value => "now()",
    is_nullable => 1,
    size => 8,
  },
  "modified_date",
  {
    data_type => "timestamp with time zone",
    default_value => undef,
    is_nullable => 1,
    size => 8,
  },
  "obsolete",
  {
    data_type => "boolean",
    default_value => "false",
    is_nullable => 1,
    size => 1,
  },
);
__PACKAGE__->set_primary_key("germplasm_id");
__PACKAGE__->add_unique_constraint("germplasm_pkey", ["germplasm_id"]);
__PACKAGE__->belongs_to(
  "individual_id",
  "CXGN::Phenome::Schema::Individual",
  { individual_id => "individual_id" },
);


# Created by DBIx::Class::Schema::Loader v0.04005 @ 2010-05-27 04:17:48
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:riQ0dYDmVEJ3BZdH72KUxQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
