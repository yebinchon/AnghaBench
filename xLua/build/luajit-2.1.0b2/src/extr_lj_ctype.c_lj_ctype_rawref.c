
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int info; } ;
typedef int CTypeID ;
typedef TYPE_1__ CType ;
typedef int CTState ;


 TYPE_1__* ctype_child (int *,TYPE_1__*) ;
 TYPE_1__* ctype_get (int *,int ) ;
 scalar_t__ ctype_isattrib (int ) ;
 scalar_t__ ctype_isref (int ) ;

CType *lj_ctype_rawref(CTState *cts, CTypeID id)
{
  CType *ct = ctype_get(cts, id);
  while (ctype_isattrib(ct->info) || ctype_isref(ct->info))
    ct = ctype_child(cts, ct);
  return ct;
}
