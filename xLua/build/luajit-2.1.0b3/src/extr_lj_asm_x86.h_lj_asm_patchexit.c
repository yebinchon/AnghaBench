
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef int jit_State ;
typedef int int32_t ;
struct TYPE_7__ {int vmstate; } ;
struct TYPE_6__ {int vmstate; } ;
struct TYPE_5__ {int* mcode; int szmcode; } ;
typedef int MSize ;
typedef int MCode ;
typedef TYPE_1__ GCtrace ;
typedef int ExitNo ;


 scalar_t__ GG_OFS (int ) ;
 TYPE_4__* J2G (int *) ;
 int LJ_64 ;
 int LJ_GC64 ;
 int XI_JMP ;
 int XI_MOVmi ;
 int asm_x86_inslen (int*) ;
 int dispatch ;
 int* exitstub_addr (int *,int ) ;
 TYPE_3__ g ;
 int jmprel (int*,int*) ;
 int* lj_mcode_patch (int *,int*,int) ;
 int lj_mcode_sync (int*,int*) ;
 int lua_assert (int) ;
 scalar_t__ u32ptr (int *) ;

void lj_asm_patchexit(jit_State *J, GCtrace *T, ExitNo exitno, MCode *target)
{
  MCode *p = T->mcode;
  MCode *mcarea = lj_mcode_patch(J, p, 0);
  MSize len = T->szmcode;
  MCode *px = exitstub_addr(J, exitno) - 6;
  MCode *pe = p+len-6;



  uint32_t statei = u32ptr(&J2G(J)->vmstate);

  if (len > 5 && p[len-5] == XI_JMP && p+len-6 + *(int32_t *)(p+len-4) == px)
    *(int32_t *)(p+len-4) = jmprel(p+len, target);

  for (; p < pe; p += asm_x86_inslen(p)) {
    intptr_t ofs = LJ_GC64 ? (p[0] & 0xf0) == 0x40 : LJ_64;
    if (*(uint32_t *)(p+2+ofs) == statei && p[ofs+LJ_GC64-LJ_64] == XI_MOVmi)
      break;
  }
  lua_assert(p < pe);
  for (; p < pe; p += asm_x86_inslen(p))
    if ((*(uint16_t *)p & 0xf0ff) == 0x800f && p + *(int32_t *)(p+2) == px)
      *(int32_t *)(p+2) = jmprel(p+6, target);
  lj_mcode_sync(T->mcode, T->mcode + T->szmcode);
  lj_mcode_patch(J, mcarea, 1);
}
