
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


 size_t CompressSegmentBy ;
 int * NIL ;
 int TextDatumGetCString (int ) ;
 int * parse_segment_collist (int ,int *) ;

List *
ts_compress_hypertable_parse_segment_by(WithClauseResult *parsed_options, Hypertable *hypertable)
{
 if (parsed_options[CompressSegmentBy].is_default == 0)
 {
  Datum textarg = parsed_options[CompressSegmentBy].parsed;
  return parse_segment_collist(TextDatumGetCString(textarg), hypertable);
 }
 else
  return NIL;
}
