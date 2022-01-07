
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_8__ {int L; } ;
struct TYPE_7__ {int info; } ;
typedef int TValue ;
typedef int CTypeID ;
typedef TYPE_1__ CType ;
typedef TYPE_2__ CTState ;
typedef int CTSize ;
typedef int CTInfo ;


 int CTF_BOOL ;
 int CTF_UNSIGNED ;
 int CTID_BOOL ;
 int CTID_INT32 ;
 int CTID_UINT32 ;
 int LJ_ERR_FFI_NYIPACKBIT ;
 int ctype_bitbsz (int) ;
 int ctype_bitcsz (int) ;
 int ctype_bitpos (int) ;
 int ctype_get (TYPE_2__*,int ) ;
 int ctype_isbitfield (int) ;
 int lj_cconv_ct_tv (TYPE_2__*,int ,int*,int *,int ) ;
 int lj_err_caller (int ,int ) ;
 int lua_assert (int) ;

void lj_cconv_bf_tv(CTState *cts, CType *d, uint8_t *dp, TValue *o)
{
  CTInfo info = d->info;
  CTSize pos, bsz;
  uint32_t val, mask;
  lua_assert(ctype_isbitfield(info));
  if ((info & CTF_BOOL)) {
    uint8_t tmpbool;
    lua_assert(ctype_bitbsz(info) == 1);
    lj_cconv_ct_tv(cts, ctype_get(cts, CTID_BOOL), &tmpbool, o, 0);
    val = tmpbool;
  } else {
    CTypeID did = (info & CTF_UNSIGNED) ? CTID_UINT32 : CTID_INT32;
    lj_cconv_ct_tv(cts, ctype_get(cts, did), (uint8_t *)&val, o, 0);
  }
  pos = ctype_bitpos(info);
  bsz = ctype_bitbsz(info);
  lua_assert(pos < 8*ctype_bitcsz(info));
  lua_assert(bsz > 0 && bsz <= 8*ctype_bitcsz(info));

  if (pos + bsz > 8*ctype_bitcsz(info))
    lj_err_caller(cts->L, LJ_ERR_FFI_NYIPACKBIT);
  mask = ((1u << bsz) - 1u) << pos;
  val = (val << pos) & mask;

  switch (ctype_bitcsz(info)) {
  case 4: *(uint32_t *)dp = (*(uint32_t *)dp & ~mask) | (uint32_t)val; break;
  case 2: *(uint16_t *)dp = (*(uint16_t *)dp & ~mask) | (uint16_t)val; break;
  case 1: *(uint8_t *)dp = (*(uint8_t *)dp & ~mask) | (uint8_t)val; break;
  default: lua_assert(0); break;
  }
}
