
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct reconst_q_struct {int exp; int * q; } ;
typedef int dst ;


 int vdev_raidz_exp2 (int ,int ) ;

__attribute__((used)) static int
vdev_raidz_reconst_q_post_func(void *buf, size_t size, void *private)
{
 struct reconst_q_struct *rq = private;
 uint64_t *dst = buf;
 int cnt = size / sizeof (dst[0]);

 for (int i = 0; i < cnt; i++, dst++, rq->q++) {
  int j;
  uint8_t *b;

  *dst ^= *rq->q;
  for (j = 0, b = (uint8_t *)dst; j < 8; j++, b++) {
   *b = vdev_raidz_exp2(*b, rq->exp);
  }
 }

 return (0);
}
