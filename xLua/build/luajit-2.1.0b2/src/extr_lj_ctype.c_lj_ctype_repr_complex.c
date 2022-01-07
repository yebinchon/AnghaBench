
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int hi; } ;
struct TYPE_4__ {double n; TYPE_1__ u32; } ;
typedef TYPE_2__ TValue ;
typedef int SBuf ;
typedef int GCstr ;
typedef int CTSize ;


 int STRFMT_G14 ;
 int lj_buf_putchar (int *,char) ;
 int * lj_buf_str (int *,int *) ;
 int * lj_buf_tmp_ (int *) ;
 int lj_strfmt_putfnum (int *,int ,double) ;
 char* sbufP (int *) ;

GCstr *lj_ctype_repr_complex(lua_State *L, void *sp, CTSize size)
{
  SBuf *sb = lj_buf_tmp_(L);
  TValue re, im;
  if (size == 2*sizeof(double)) {
    re.n = *(double *)sp; im.n = ((double *)sp)[1];
  } else {
    re.n = (double)*(float *)sp; im.n = (double)((float *)sp)[1];
  }
  lj_strfmt_putfnum(sb, STRFMT_G14, re.n);
  if (!(im.u32.hi & 0x80000000u) || im.n != im.n) lj_buf_putchar(sb, '+');
  lj_strfmt_putfnum(sb, STRFMT_G14, im.n);
  lj_buf_putchar(sb, sbufP(sb)[-1] >= 'a' ? 'I' : 'i');
  return lj_buf_str(L, sb);
}
