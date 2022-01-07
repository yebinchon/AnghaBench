
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct reconst_pq_struct {int* p; int* q; int* pxy; int* qxy; int bexp; int aexp; } ;


 int vdev_raidz_exp2 (int,int ) ;

__attribute__((used)) static int
vdev_raidz_reconst_pq_tail_func(void *xbuf, size_t size, void *private)
{
 struct reconst_pq_struct *rpq = private;
 uint8_t *xd = xbuf;

 for (int i = 0; i < size;
     i++, rpq->p++, rpq->q++, rpq->pxy++, rpq->qxy++, xd++) {

  *xd = vdev_raidz_exp2(*rpq->p ^ *rpq->pxy, rpq->aexp) ^
      vdev_raidz_exp2(*rpq->q ^ *rpq->qxy, rpq->bexp);
 }

 return (0);
}
