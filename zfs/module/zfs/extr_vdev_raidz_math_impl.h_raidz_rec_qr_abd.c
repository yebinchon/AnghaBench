
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
 size_t MUL_QR_X ;
 size_t MUL_QR_XQ ;
 size_t MUL_QR_Y ;
 size_t MUL_QR_YQ ;
 int REC_QR_DEFINE () ;
 int REC_QR_STRIDE ;
 int REC_QR_T ;
 int REC_QR_X ;
 int REC_QR_Y ;
 int STORE (int const*,int ) ;
 size_t TARGET_X ;
 size_t TARGET_Y ;
 int XOR (int ,int ) ;
 int XOR_ACC (int const*,int ) ;

__attribute__((used)) static void
raidz_rec_qr_abd(void **t, const size_t tsize, void **c,
    const unsigned *mul)
{
 v_t *x = (v_t *)t[TARGET_X];
 v_t *y = (v_t *)t[TARGET_Y];
 const v_t * const xend = x + (tsize / sizeof (v_t));
 const v_t *p = (v_t *)c[CODE_P];
 const v_t *q = (v_t *)c[CODE_Q];

 REC_QR_DEFINE();

 for (; x < xend; x += REC_QR_STRIDE, y += REC_QR_STRIDE,
     p += REC_QR_STRIDE, q += REC_QR_STRIDE) {
  LOAD(x, REC_QR_X);
  LOAD(y, REC_QR_Y);

  XOR_ACC(p, REC_QR_X);
  XOR_ACC(q, REC_QR_Y);


  COPY(REC_QR_X, REC_QR_T);


  MUL(mul[MUL_QR_XQ], REC_QR_X);
  XOR(REC_QR_Y, REC_QR_X);
  MUL(mul[MUL_QR_X], REC_QR_X);
  STORE(x, REC_QR_X);


  MUL(mul[MUL_QR_YQ], REC_QR_T);
  XOR(REC_QR_Y, REC_QR_T);
  MUL(mul[MUL_QR_Y], REC_QR_T);
  STORE(y, REC_QR_T);
 }
}
