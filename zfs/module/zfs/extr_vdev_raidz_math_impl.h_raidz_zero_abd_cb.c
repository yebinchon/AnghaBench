
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v_t ;


 int STORE (int *,int ) ;
 int ZERO (int ) ;
 int ZERO_D ;
 int ZERO_DEFINE () ;
 int ZERO_STRIDE ;

__attribute__((used)) static int
raidz_zero_abd_cb(void *dc, size_t dsize, void *private)
{
 v_t *dst = (v_t *)dc;
 size_t i;

 ZERO_DEFINE();

 (void) private;

 ZERO(ZERO_D);

 for (i = 0; i < dsize / sizeof (v_t); i += (2 * ZERO_STRIDE)) {
  STORE(dst + i, ZERO_D);
  STORE(dst + i + ZERO_STRIDE, ZERO_D);
 }

 return (0);
}
