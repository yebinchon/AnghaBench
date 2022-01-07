
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filter; int sb; int * lzma2; int * bigAlloc; int * alloc; } ;
typedef int ISzAlloc ;
typedef TYPE_1__ CLzma2WithFilters ;


 int SbEncInStream_Construct (int *,int *) ;
 int SeqInFilter_Construct (int *) ;

__attribute__((used)) static void Lzma2WithFilters_Construct(CLzma2WithFilters *p, ISzAlloc *alloc, ISzAlloc *bigAlloc)
{
  p->alloc = alloc;
  p->bigAlloc = bigAlloc;
  p->lzma2 = ((void*)0);



  SeqInFilter_Construct(&p->filter);
}
