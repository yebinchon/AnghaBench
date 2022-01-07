
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32 ;
typedef int compression_info_vec ;
typedef int * TupleDesc ;
struct TYPE_6__ {scalar_t__ element_type; int typalign; int typbyval; int typlen; } ;
struct TYPE_5__ {int t_data; int t_len; } ;
typedef scalar_t__ Oid ;
typedef int HeapTupleHeader ;
typedef TYPE_1__ HeapTupleData ;
typedef int Datum ;
typedef int ArrayType ;
typedef TYPE_2__ ArrayMetaState ;
typedef int ArrayIterator ;


 int Assert (int) ;
 int CurrentMemoryContext ;
 int DatumGetHeapTupleHeaderCopy (int ) ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleHeaderGetDatumLength (int ) ;
 int HeapTupleHeaderGetTypMod (int ) ;
 scalar_t__ HeapTupleHeaderGetTypeId (int ) ;
 int ReleaseTupleDesc (int *) ;
 int array_create_iterator (int *,int ,TYPE_2__*) ;
 scalar_t__ array_iterate (int ,int *,int*) ;
 int compression_info_vec_append (int *,void*) ;
 int * compression_info_vec_create (int ,int ) ;
 int get_typlenbyvalalign (scalar_t__,int *,int *,int *) ;
 int * lookup_rowtype_tupdesc (scalar_t__,int ) ;

__attribute__((used)) static compression_info_vec *
compression_info_from_array(ArrayType *compression_info_arr, Oid form_oid)
{
 ArrayMetaState compression_info_arr_meta = {
  .element_type = form_oid,
 };
 ArrayIterator compression_info_iter;
 Datum compression_info_datum;
 bool is_null;
 compression_info_vec *compression_info = compression_info_vec_create(CurrentMemoryContext, 0);
 TupleDesc form_desc = ((void*)0);

 get_typlenbyvalalign(compression_info_arr_meta.element_type,
       &compression_info_arr_meta.typlen,
       &compression_info_arr_meta.typbyval,
       &compression_info_arr_meta.typalign);

 compression_info_iter =
  array_create_iterator(compression_info_arr, 0, &compression_info_arr_meta);

 while (array_iterate(compression_info_iter, &compression_info_datum, &is_null))
 {
  HeapTupleHeader form;
  HeapTupleData tmptup;

  Assert(!is_null);
  form = DatumGetHeapTupleHeaderCopy(compression_info_datum);
  Assert(HeapTupleHeaderGetTypeId(form) == form_oid);
  if (form_desc == ((void*)0))
  {
   int32 formTypmod = HeapTupleHeaderGetTypMod(form);
   form_desc = lookup_rowtype_tupdesc(form_oid, formTypmod);
  }

  tmptup.t_len = HeapTupleHeaderGetDatumLength(form);
  tmptup.t_data = form;
  compression_info_vec_append(compression_info, (void *) GETSTRUCT(&tmptup));
 }
 if (form_desc != ((void*)0))
  ReleaseTupleDesc(form_desc);
 return compression_info;
}
