
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cts; int L; } ;
typedef TYPE_1__ CPState ;


 int LJ_CTYPE_RESTORE (int ) ;
 int LJ_CTYPE_SAVE (int ) ;
 int cp_cleanup (TYPE_1__*) ;
 int cpcparser ;
 int lj_vm_cpcall (int ,int *,TYPE_1__*,int ) ;

int lj_cparse(CPState *cp)
{
  LJ_CTYPE_SAVE(cp->cts);
  int errcode = lj_vm_cpcall(cp->L, ((void*)0), cp, cpcparser);
  if (errcode)
    LJ_CTYPE_RESTORE(cp->cts);
  cp_cleanup(cp);
  return errcode;
}
