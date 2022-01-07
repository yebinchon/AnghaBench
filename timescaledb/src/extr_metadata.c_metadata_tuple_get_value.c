
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int desc; int tuple; } ;
typedef TYPE_1__ TupleInfo ;
struct TYPE_5__ {int typeid; int value; int isnull; } ;
typedef int ScanTupleResult ;
typedef TYPE_2__ DatumValue ;


 int Anum_metadata_value ;
 int SCAN_DONE ;
 int convert_text_to_type (int ,int ) ;
 int heap_getattr (int ,int ,int ,int *) ;

__attribute__((used)) static ScanTupleResult
metadata_tuple_get_value(TupleInfo *ti, void *data)
{
 DatumValue *dv = data;

 dv->value = heap_getattr(ti->tuple, Anum_metadata_value, ti->desc, &dv->isnull);

 if (!dv->isnull)
  dv->value = convert_text_to_type(dv->value, dv->typeid);

 return SCAN_DONE;
}
