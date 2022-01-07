
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const v_t ;


 int LOAD (int const*,int ) ;
 int MUL2_SETUP () ;
 int Q_D_SYNDROME (int ,int ,int const*) ;
 int Q_SYNDROME (int ,int const*) ;
 int R_D_SYNDROME (int ,int ,int const*) ;
 int R_SYNDROME (int ,int const*) ;
 int SYN_PQ_D ;
 int SYN_QR_D ;
 int SYN_QR_DEFINE () ;
 int SYN_QR_X ;
 int SYN_STRIDE ;
 size_t TARGET_X ;
 size_t TARGET_Y ;

__attribute__((used)) static void
raidz_syn_qr_abd(void **c, const void *dc, const size_t tsize,
    const size_t dsize)
{
 v_t *x = (v_t *)c[TARGET_X];
 v_t *y = (v_t *)c[TARGET_Y];
 const v_t * const xend = x + (tsize / sizeof (v_t));
 const v_t *d = (v_t *)dc;
 const v_t * const dend = d + (dsize / sizeof (v_t));

 SYN_QR_DEFINE();

 MUL2_SETUP();

 for (; d < dend; d += SYN_STRIDE, x += SYN_STRIDE, y += SYN_STRIDE) {
  LOAD(d, SYN_PQ_D);
  Q_D_SYNDROME(SYN_QR_D, SYN_QR_X, x);
  R_D_SYNDROME(SYN_QR_D, SYN_QR_X, y);
 }
 for (; x < xend; x += SYN_STRIDE, y += SYN_STRIDE) {
  Q_SYNDROME(SYN_QR_X, x);
  R_SYNDROME(SYN_QR_X, y);
 }
}
