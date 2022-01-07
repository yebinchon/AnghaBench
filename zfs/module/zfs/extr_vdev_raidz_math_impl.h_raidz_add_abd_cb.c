
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v_t ;


 int ADD_D ;
 int ADD_DEFINE () ;
 int ADD_STRIDE ;
 int LOAD (int *,int ) ;
 int STORE (int *,int ) ;
 int XOR_ACC (int const*,int ) ;

__attribute__((used)) static int
raidz_add_abd_cb(void *dc, void *sc, size_t size, void *private)
{
 v_t *dst = (v_t *)dc;
 const v_t *src = (v_t *)sc;
 size_t i;

 ADD_DEFINE();

 (void) private;

 for (i = 0; i < size / sizeof (v_t); i += (2 * ADD_STRIDE)) {
  LOAD(dst + i, ADD_D);
  XOR_ACC(src + i, ADD_D);
  STORE(dst + i, ADD_D);

  LOAD(dst + i + ADD_STRIDE, ADD_D);
  XOR_ACC(src + i + ADD_STRIDE, ADD_D);
  STORE(dst + i + ADD_STRIDE, ADD_D);
 }

 return (0);
}
