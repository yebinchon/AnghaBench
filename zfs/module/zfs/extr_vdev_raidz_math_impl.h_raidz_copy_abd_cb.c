
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v_t ;


 int COPY_D ;
 int COPY_DEFINE () ;
 int COPY_STRIDE ;
 int LOAD (int const*,int ) ;
 int STORE (int *,int ) ;

__attribute__((used)) static int
raidz_copy_abd_cb(void *dc, void *sc, size_t size, void *private)
{
 v_t *dst = (v_t *)dc;
 const v_t *src = (v_t *)sc;
 size_t i;

 COPY_DEFINE();

 (void) private;

 for (i = 0; i < size / sizeof (v_t); i += (2 * COPY_STRIDE)) {
  LOAD(src + i, COPY_D);
  STORE(dst + i, COPY_D);

  LOAD(src + i + COPY_STRIDE, COPY_D);
  STORE(dst + i + COPY_STRIDE, COPY_D);
 }

 return (0);
}
