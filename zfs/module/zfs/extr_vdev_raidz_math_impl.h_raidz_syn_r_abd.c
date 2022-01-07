
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const v_t ;


 int LOAD (int const*,int ) ;
 int MUL2_SETUP () ;
 int R_D_SYNDROME (int ,int ,int const*) ;
 int R_SYNDROME (int ,int const*) ;
 int SYN_R_D ;
 int SYN_R_DEFINE () ;
 int SYN_R_X ;
 int SYN_STRIDE ;
 size_t TARGET_X ;

__attribute__((used)) static void
raidz_syn_r_abd(void **xc, const void *dc, const size_t tsize,
    const size_t dsize)
{
 v_t *x = (v_t *)xc[TARGET_X];
 const v_t *d = (v_t *)dc;
 const v_t * const dend = d + (dsize / sizeof (v_t));
 const v_t * const xend = x + (tsize / sizeof (v_t));

 SYN_R_DEFINE();

 MUL2_SETUP();

 for (; d < dend; d += SYN_STRIDE, x += SYN_STRIDE) {
  LOAD(d, SYN_R_D);
  R_D_SYNDROME(SYN_R_D, SYN_R_X, x);
 }
 for (; x < xend; x += SYN_STRIDE) {
  R_SYNDROME(SYN_R_X, x);
 }
}
