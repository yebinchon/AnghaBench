
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const v_t ;


 size_t CODE_R ;
 int GEN_PQR_C ;
 int GEN_PQR_D ;
 int GEN_PQR_DEFINE () ;
 int GEN_PQR_STRIDE ;
 int LOAD (int const*,int ) ;
 int MUL2_SETUP () ;
 int P_D_SYNDROME (int ,int ,int const*) ;
 int Q_D_SYNDROME (int ,int ,int const*) ;
 int Q_SYNDROME (int ,int const*) ;
 int R_D_SYNDROME (int ,int ,int const*) ;
 int R_SYNDROME (int ,int const*) ;

__attribute__((used)) static void
raidz_gen_pqr_add(void **c, const void *dc, const size_t csize,
    const size_t dsize)
{
 v_t *p = (v_t *)c[0];
 v_t *q = (v_t *)c[1];
 v_t *r = (v_t *)c[CODE_R];
 const v_t *d = (v_t *)dc;
 const v_t * const dend = d + (dsize / sizeof (v_t));
 const v_t * const qend = q + (csize / sizeof (v_t));

 GEN_PQR_DEFINE();

 MUL2_SETUP();

 for (; d < dend; d += GEN_PQR_STRIDE, p += GEN_PQR_STRIDE,
     q += GEN_PQR_STRIDE, r += GEN_PQR_STRIDE) {
  LOAD(d, GEN_PQR_D);
  P_D_SYNDROME(GEN_PQR_D, GEN_PQR_C, p);
  Q_D_SYNDROME(GEN_PQR_D, GEN_PQR_C, q);
  R_D_SYNDROME(GEN_PQR_D, GEN_PQR_C, r);
 }
 for (; q < qend; q += GEN_PQR_STRIDE, r += GEN_PQR_STRIDE) {
  Q_SYNDROME(GEN_PQR_C, q);
  R_SYNDROME(GEN_PQR_C, r);
 }
}
