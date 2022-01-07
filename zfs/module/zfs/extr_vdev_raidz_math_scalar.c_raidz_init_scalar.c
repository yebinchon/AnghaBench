
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gf_mul (int,int) ;
 int ** vdev_raidz_mul_lt ;

__attribute__((used)) static void
raidz_init_scalar(void)
{
 int c, i;
 for (c = 0; c < 256; c++)
  for (i = 0; i < 256; i++)
   vdev_raidz_mul_lt[c][i] = gf_mul(c, i);

}
