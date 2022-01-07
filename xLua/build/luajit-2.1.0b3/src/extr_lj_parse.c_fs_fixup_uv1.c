
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
typedef int VarIndex ;
struct TYPE_6__ {int nuv; int uvtmp; } ;
struct TYPE_5__ {int sizeuv; int uv; } ;
typedef TYPE_1__ GCproto ;
typedef TYPE_2__ FuncState ;


 int memcpy (int *,int ,int) ;
 int setmref (int ,int *) ;

__attribute__((used)) static void fs_fixup_uv1(FuncState *fs, GCproto *pt, uint16_t *uv)
{
  setmref(pt->uv, uv);
  pt->sizeuv = fs->nuv;
  memcpy(uv, fs->uvtmp, fs->nuv*sizeof(VarIndex));
}
