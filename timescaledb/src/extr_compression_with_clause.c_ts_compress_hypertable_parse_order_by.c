
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_default; int parsed; } ;
typedef TYPE_1__ WithClauseResult ;
typedef int List ;
typedef int Hypertable ;
typedef int Datum ;


 size_t CompressOrderBy ;
 int * NIL ;
 int TextDatumGetCString (int ) ;
 int * parse_order_collist (int ,int *) ;

List *
ts_compress_hypertable_parse_order_by(WithClauseResult *parsed_options, Hypertable *hypertable)
{
 if (parsed_options[CompressOrderBy].is_default == 0)
 {
  Datum textarg = parsed_options[CompressOrderBy].parsed;
  return parse_order_collist(TextDatumGetCString(textarg), hypertable);
 }
 else
  return NIL;
}
