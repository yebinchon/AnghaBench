
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dst ;


 int VDEV_RAIDZ_64MUL_2 (int ,int ) ;

__attribute__((used)) static int
vdev_raidz_reconst_q_pre_func(void *dbuf, void *sbuf, size_t size,
    void *private)
{
 uint64_t *dst = dbuf;
 uint64_t *src = sbuf;
 uint64_t mask;
 int cnt = size / sizeof (dst[0]);

 for (int i = 0; i < cnt; i++, dst++, src++) {
  VDEV_RAIDZ_64MUL_2(*dst, mask);
  *dst ^= *src;
 }

 return (0);
}
