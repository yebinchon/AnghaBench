
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int end; int start; int type; } ;
typedef TYPE_1__ TimeRange ;
struct TYPE_11__ {int * name; int * schema; } ;
struct TYPE_10__ {int data; } ;
typedef TYPE_2__* StringInfo ;
typedef TYPE_3__ SchemaAndName ;
typedef int Oid ;
typedef int * Name ;


 int ERROR ;
 int NameStr (int ) ;
 char* OidOutputFunctionCall (int ,int ) ;
 int SPI_execute_with_args (int ,int ,int *,int *,int *,int,int ) ;
 int appendStringInfo (TYPE_2__*,char*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int elog (int ,char*) ;
 int getTypeOutputInfo (int ,int *,int*) ;
 TYPE_2__* makeStringInfo () ;
 int quote_identifier (int ) ;
 int quote_literal_cstr (char*) ;

__attribute__((used)) static void
spi_insert_materializations(SchemaAndName partial_view, SchemaAndName materialization_table,
       Name time_column_name, TimeRange materialization_range)
{
 int res;
 StringInfo command = makeStringInfo();
 Oid out_fn;
 bool type_is_varlena;
 char *materialization_start;
 char *materialization_end;

 getTypeOutputInfo(materialization_range.type, &out_fn, &type_is_varlena);

 materialization_start = OidOutputFunctionCall(out_fn, materialization_range.start);
 materialization_end = OidOutputFunctionCall(out_fn, materialization_range.end);

 appendStringInfo(command,
      "INSERT INTO %s.%s SELECT * FROM %s.%s AS I "
      "WHERE I.%s >= %s AND I.%s < %s;",
      quote_identifier(NameStr(*materialization_table.schema)),
      quote_identifier(NameStr(*materialization_table.name)),
      quote_identifier(NameStr(*partial_view.schema)),
      quote_identifier(NameStr(*partial_view.name)),
      quote_identifier(NameStr(*time_column_name)),
      quote_literal_cstr(materialization_start),
      quote_identifier(NameStr(*time_column_name)),
      quote_literal_cstr(materialization_end));

 res = SPI_execute_with_args(command->data,
        0 ,
        ((void*)0) ,
        ((void*)0) ,
        ((void*)0) ,
        0 ,
        0
 );
 if (res < 0)
  elog(ERROR, "could materialize values into the materialization table");
}
