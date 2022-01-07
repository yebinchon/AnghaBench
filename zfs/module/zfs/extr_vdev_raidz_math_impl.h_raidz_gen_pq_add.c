
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const v_t ;


 int GEN_PQ_C ;
 int GEN_PQ_D ;
 int GEN_PQ_DEFINE () ;
 int GEN_PQ_STRIDE ;
 int LOAD (int const*,int ) ;
 int MUL2_SETUP () ;
 int P_D_SYNDROME (int ,int ,int const*) ;
 int Q_D_SYNDROME (int ,int ,int const*) ;
 int Q_SYNDROME (int ,int const*) ;

__attribute__((used)) static void
raidz_gen_pq_add(void **c, const void *dc, const size_t csize,
    const size_t dsize)
{
 v_t *p = (v_t *)c[0];
 v_t *q = (v_t *)c[1];
 const v_t *d = (v_t *)dc;
 const v_t * const dend = d + (dsize / sizeof (v_t));
 const v_t * const qend = q + (csize / sizeof (v_t));

 GEN_PQ_DEFINE();

 MUL2_SETUP();

 for (; d < dend; d += GEN_PQ_STRIDE, p += GEN_PQ_STRIDE,
     q += GEN_PQ_STRIDE) {
  LOAD(d, GEN_PQ_D);
  P_D_SYNDROME(GEN_PQ_D, GEN_PQ_C, p);
  Q_D_SYNDROME(GEN_PQ_D, GEN_PQ_C, q);
 }
 for (; q < qend; q += GEN_PQ_STRIDE) {
  Q_SYNDROME(GEN_PQ_C, q);
 }
}
