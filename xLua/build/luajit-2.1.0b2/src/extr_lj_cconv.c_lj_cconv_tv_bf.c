
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int lua_Number ;
typedef int int32_t ;
struct TYPE_6__ {int L; } ;
struct TYPE_5__ {int info; } ;
typedef int TValue ;
typedef TYPE_1__ CType ;
typedef TYPE_2__ CTState ;
typedef int CTSize ;
typedef int CTInfo ;


 int CTF_BOOL ;
 int CTF_UNSIGNED ;
 int LJ_DUALNUM ;
 int LJ_ERR_FFI_NYIPACKBIT ;
 int ctype_bitbsz (int) ;
 int ctype_bitcsz (int) ;
 int ctype_bitpos (int) ;
 int ctype_isbitfield (int) ;
 int lj_err_caller (int ,int ) ;
 int lua_assert (int) ;
 int setboolV (int *,int) ;
 int setintV (int *,int) ;
 int setnumV (int *,int ) ;

int lj_cconv_tv_bf(CTState *cts, CType *s, TValue *o, uint8_t *sp)
{
  CTInfo info = s->info;
  CTSize pos, bsz;
  uint32_t val;
  lua_assert(ctype_isbitfield(info));

  switch (ctype_bitcsz(info)) {
  case 4: val = *(uint32_t *)sp; break;
  case 2: val = *(uint16_t *)sp; break;
  case 1: val = *(uint8_t *)sp; break;
  default: lua_assert(0); val = 0; break;
  }

  pos = ctype_bitpos(info);
  bsz = ctype_bitbsz(info);
  lua_assert(pos < 8*ctype_bitcsz(info));
  lua_assert(bsz > 0 && bsz <= 8*ctype_bitcsz(info));
  if (pos + bsz > 8*ctype_bitcsz(info))
    lj_err_caller(cts->L, LJ_ERR_FFI_NYIPACKBIT);
  if (!(info & CTF_BOOL)) {
    CTSize shift = 32 - bsz;
    if (!(info & CTF_UNSIGNED)) {
      setintV(o, (int32_t)(val << (shift-pos)) >> shift);
    } else {
      val = (val << (shift-pos)) >> shift;
      if (!LJ_DUALNUM || (int32_t)val < 0)
 setnumV(o, (lua_Number)(uint32_t)val);
      else
 setintV(o, (int32_t)val);
    }
  } else {
    lua_assert(bsz == 1);
    setboolV(o, (val >> pos) & 1);
  }
  return 0;
}
