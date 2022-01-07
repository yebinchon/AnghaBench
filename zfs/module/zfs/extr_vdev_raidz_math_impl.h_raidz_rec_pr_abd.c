
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
 size_t MUL_PR_X ;
 size_t MUL_PR_Y ;
 int REC_PR_DEFINE () ;
 int REC_PR_STRIDE ;
 int REC_PR_T ;
 int REC_PR_X ;
 int REC_PR_Y ;
 int STORE (int const*,int ) ;
 size_t TARGET_X ;
 size_t TARGET_Y ;
 int XOR (int ,int ) ;
 int XOR_ACC (int const*,int ) ;

__attribute__((used)) static void
raidz_rec_pr_abd(void **t, const size_t tsize, void **c,
    const unsigned *mul)
{
 v_t *x = (v_t *)t[TARGET_X];
 v_t *y = (v_t *)t[TARGET_Y];
 const v_t * const xend = x + (tsize / sizeof (v_t));
 const v_t *p = (v_t *)c[CODE_P];
 const v_t *q = (v_t *)c[CODE_Q];

 REC_PR_DEFINE();

 for (; x < xend; x += REC_PR_STRIDE, y += REC_PR_STRIDE,
     p += REC_PR_STRIDE, q += REC_PR_STRIDE) {
  LOAD(x, REC_PR_X);
  LOAD(y, REC_PR_Y);
  XOR_ACC(p, REC_PR_X);
  XOR_ACC(q, REC_PR_Y);


  COPY(REC_PR_X, REC_PR_T);


  MUL(mul[MUL_PR_X], REC_PR_X);
  MUL(mul[MUL_PR_Y], REC_PR_Y);
  XOR(REC_PR_Y, REC_PR_X);
  STORE(x, REC_PR_X);


  XOR(REC_PR_T, REC_PR_X);
  STORE(y, REC_PR_X);
 }
}
