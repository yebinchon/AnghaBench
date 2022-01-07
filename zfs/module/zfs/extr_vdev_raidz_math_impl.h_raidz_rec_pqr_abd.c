
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const v_t ;


 size_t CODE_P ;
 size_t CODE_Q ;
 size_t CODE_R ;
 int COPY (int ,int ) ;
 int LOAD (int const*,int ) ;
 int MUL (unsigned int const,int ) ;
 size_t MUL_PQR_XP ;
 size_t MUL_PQR_XQ ;
 size_t MUL_PQR_XR ;
 size_t MUL_PQR_YP ;
 size_t MUL_PQR_YQ ;
 size_t MUL_PQR_YU ;
 int REC_PQR_DEFINE () ;
 int REC_PQR_STRIDE ;
 int REC_PQR_X ;
 int REC_PQR_XS ;
 int REC_PQR_Y ;
 int REC_PQR_YS ;
 int REC_PQR_Z ;
 int STORE (int const*,int ) ;
 size_t TARGET_X ;
 size_t TARGET_Y ;
 size_t TARGET_Z ;
 int XOR (int ,int ) ;
 int XOR_ACC (int const*,int ) ;

__attribute__((used)) static void
raidz_rec_pqr_abd(void **t, const size_t tsize, void **c,
    const unsigned * const mul)
{
 v_t *x = (v_t *)t[TARGET_X];
 v_t *y = (v_t *)t[TARGET_Y];
 v_t *z = (v_t *)t[TARGET_Z];
 const v_t * const xend = x + (tsize / sizeof (v_t));
 const v_t *p = (v_t *)c[CODE_P];
 const v_t *q = (v_t *)c[CODE_Q];
 const v_t *r = (v_t *)c[CODE_R];

 REC_PQR_DEFINE();

 for (; x < xend; x += REC_PQR_STRIDE, y += REC_PQR_STRIDE,
     z += REC_PQR_STRIDE, p += REC_PQR_STRIDE, q += REC_PQR_STRIDE,
     r += REC_PQR_STRIDE) {
  LOAD(x, REC_PQR_X);
  LOAD(y, REC_PQR_Y);
  LOAD(z, REC_PQR_Z);

  XOR_ACC(p, REC_PQR_X);
  XOR_ACC(q, REC_PQR_Y);
  XOR_ACC(r, REC_PQR_Z);


  COPY(REC_PQR_X, REC_PQR_XS);
  COPY(REC_PQR_Y, REC_PQR_YS);


  MUL(mul[MUL_PQR_XP], REC_PQR_X);
  MUL(mul[MUL_PQR_XQ], REC_PQR_Y);
  XOR(REC_PQR_Y, REC_PQR_X);
  MUL(mul[MUL_PQR_XR], REC_PQR_Z);
  XOR(REC_PQR_Z, REC_PQR_X);
  STORE(x, REC_PQR_X);


  XOR(REC_PQR_X, REC_PQR_XS);
  MUL(mul[MUL_PQR_YU], REC_PQR_X);
  XOR(REC_PQR_X, REC_PQR_YS);
  COPY(REC_PQR_XS, REC_PQR_X);
  MUL(mul[MUL_PQR_YP], REC_PQR_X);
  MUL(mul[MUL_PQR_YQ], REC_PQR_YS);
  XOR(REC_PQR_X, REC_PQR_YS);
  STORE(y, REC_PQR_YS);


  XOR(REC_PQR_XS, REC_PQR_YS);
  STORE(z, REC_PQR_YS);
 }
}
