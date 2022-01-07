
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const v_t ;


 int LOAD (int const*,int ) ;
 int MUL2_SETUP () ;
 int Q_D_SYNDROME (int ,int ,int const*) ;
 int Q_SYNDROME (int ,int const*) ;
 int SYN_Q_D ;
 int SYN_Q_DEFINE () ;
 int SYN_Q_X ;
 int SYN_STRIDE ;
 size_t TARGET_X ;

__attribute__((used)) static void
raidz_syn_q_abd(void **xc, const void *dc, const size_t xsize,
    const size_t dsize)
{
 v_t *x = (v_t *)xc[TARGET_X];
 const v_t *d = (v_t *)dc;
 const v_t * const dend = d + (dsize / sizeof (v_t));
 const v_t * const xend = x + (xsize / sizeof (v_t));

 SYN_Q_DEFINE();

 MUL2_SETUP();

 for (; d < dend; d += SYN_STRIDE, x += SYN_STRIDE) {
  LOAD(d, SYN_Q_D);
  Q_D_SYNDROME(SYN_Q_D, SYN_Q_X, x);
 }
 for (; x < xend; x += SYN_STRIDE) {
  Q_SYNDROME(SYN_Q_X, x);
 }
}
