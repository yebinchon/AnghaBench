
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;
typedef int Datum ;
typedef int ArrayType ;


 int ERROR ;
 int * NIL ;
 int TEXTOID ;
 int TextDatumGetCString (int ) ;
 int deconstruct_array (int *,int ,int,int,char,int **,int**,int*) ;
 int elog (int ,char*) ;
 int * lappend (int *,int ) ;

__attribute__((used)) static List *
extract_addrnames(ArrayType *arr)
{
 Datum *elems;
 bool *nulls;
 int nelems;
 List *list = NIL;
 int i;

 deconstruct_array(arr, TEXTOID, -1, 0, 'i', &elems, &nulls, &nelems);

 for (i = 0; i < nelems; i++)
 {
  if (nulls[i])
   elog(ERROR, "unexpected NULL in name list");


  list = lappend(list, TextDatumGetCString(elems[i]));
 }

 return list;
}
