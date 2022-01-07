
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v_t ;


 int LOAD (int *,int ) ;
 int MUL (unsigned int const,int ) ;
 int MUL_D ;
 int MUL_DEFINE () ;
 int MUL_STRIDE ;
 int STORE (int *,int ) ;

__attribute__((used)) static int
raidz_mul_abd_cb(void *dc, size_t size, void *private)
{
 const unsigned mul = *((unsigned *)private);
 v_t *d = (v_t *)dc;
 size_t i;

 MUL_DEFINE();

 for (i = 0; i < size / sizeof (v_t); i += (2 * MUL_STRIDE)) {
  LOAD(d + i, MUL_D);
  MUL(mul, MUL_D);
  STORE(d + i, MUL_D);

  LOAD(d + i + MUL_STRIDE, MUL_D);
  MUL(mul, MUL_D);
  STORE(d + i + MUL_STRIDE, MUL_D);
 }

 return (0);
}
