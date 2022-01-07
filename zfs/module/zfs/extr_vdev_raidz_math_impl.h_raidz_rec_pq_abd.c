
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const v_t ;


 size_t CODE_P ;
 size_t CODE_Q ;
 int COPY (int ,int ) ;
 int LOAD (int const*,int ) ;
 int MUL (unsigned int const,int ) ;
 size_t MUL_PQ_X ;
 size_t MUL_PQ_Y ;
 int REC_PQ_DEFINE () ;
 int REC_PQ_STRIDE ;
 int REC_PQ_T ;
 int REC_PQ_X ;
 int REC_PQ_Y ;
 int STORE (int const*,int ) ;
 size_t TARGET_X ;
 size_t TARGET_Y ;
 int XOR (int ,int ) ;
 int XOR_ACC (int const*,int ) ;

__attribute__((used)) static void
raidz_rec_pq_abd(void **tc, const size_t tsize, void **c,
    const unsigned *mul)
{
 v_t *x = (v_t *)tc[TARGET_X];
 v_t *y = (v_t *)tc[TARGET_Y];
 const v_t * const xend = x + (tsize / sizeof (v_t));
 const v_t *p = (v_t *)c[CODE_P];
 const v_t *q = (v_t *)c[CODE_Q];

 REC_PQ_DEFINE();

 for (; x < xend; x += REC_PQ_STRIDE, y += REC_PQ_STRIDE,
     p += REC_PQ_STRIDE, q += REC_PQ_STRIDE) {
  LOAD(x, REC_PQ_X);
  LOAD(y, REC_PQ_Y);

  XOR_ACC(p, REC_PQ_X);
  XOR_ACC(q, REC_PQ_Y);


  COPY(REC_PQ_X, REC_PQ_T);


  MUL(mul[MUL_PQ_X], REC_PQ_X);
  MUL(mul[MUL_PQ_Y], REC_PQ_Y);
  XOR(REC_PQ_Y, REC_PQ_X);
  STORE(x, REC_PQ_X);


  XOR(REC_PQ_T, REC_PQ_X);
  STORE(y, REC_PQ_X);
 }
}
