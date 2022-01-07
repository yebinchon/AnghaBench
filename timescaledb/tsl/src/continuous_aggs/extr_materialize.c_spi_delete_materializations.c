
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int end; int start; int type; } ;
typedef TYPE_1__ TimeRange ;
struct TYPE_10__ {int * name; int * schema; } ;
struct TYPE_9__ {int data; } ;
typedef TYPE_2__* StringInfo ;
typedef TYPE_3__ SchemaAndName ;
typedef int Oid ;
typedef int * Name ;


 int ERROR ;
 int NameStr (int ) ;
 char* OidOutputFunctionCall (int ,int ) ;
 int SPI_execute_with_args (int ,int ,int *,int *,int *,int,int ) ;
 int appendStringInfo (TYPE_2__*,char*,int ,int ,int ,int ,int ,int ) ;
 int elog (int ,char*) ;
 int getTypeOutputInfo (int ,int *,int*) ;
 TYPE_2__* makeStringInfo () ;
 int quote_identifier (int ) ;
 int quote_literal_cstr (char*) ;

__attribute__((used)) static void
spi_delete_materializations(SchemaAndName materialization_table, Name time_column_name,
       TimeRange invalidation_range)
{
 int res;
 StringInfo command = makeStringInfo();
 Oid out_fn;
 bool type_is_varlena;
 char *invalidation_start;
 char *invalidation_end;

 getTypeOutputInfo(invalidation_range.type, &out_fn, &type_is_varlena);

 invalidation_start = OidOutputFunctionCall(out_fn, invalidation_range.start);
 invalidation_end = OidOutputFunctionCall(out_fn, invalidation_range.end);

 appendStringInfo(command,
      "DELETE FROM %s.%s AS D WHERE "
      "D.%s >= %s AND D.%s < %s;",
      quote_identifier(NameStr(*materialization_table.schema)),
      quote_identifier(NameStr(*materialization_table.name)),
      quote_identifier(NameStr(*time_column_name)),
      quote_literal_cstr(invalidation_start),
      quote_identifier(NameStr(*time_column_name)),
      quote_literal_cstr(invalidation_end));

 res = SPI_execute_with_args(command->data,
        0 ,
        ((void*)0),
        ((void*)0),
        ((void*)0) ,
        0 ,
        0 );
 if (res < 0)
  elog(ERROR, "could not delete old values from materialization table");
}
