
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int info; } ;
typedef int CTypeID ;
typedef TYPE_1__ CType ;
typedef int CTState ;
typedef int CTSize ;


 int CTSIZE_INVALID ;
 scalar_t__ ctype_hassize (int ) ;
 TYPE_1__* ctype_raw (int *,int ) ;

CTSize lj_ctype_size(CTState *cts, CTypeID id)
{
  CType *ct = ctype_raw(cts, id);
  return ctype_hassize(ct->info) ? ct->size : CTSIZE_INVALID;
}
