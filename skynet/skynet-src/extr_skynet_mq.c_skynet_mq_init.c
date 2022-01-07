
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct global_queue {int dummy; } ;


 struct global_queue* Q ;
 int SPIN_INIT (struct global_queue*) ;
 int memset (struct global_queue*,int ,int) ;
 struct global_queue* skynet_malloc (int) ;

void
skynet_mq_init() {
 struct global_queue *q = skynet_malloc(sizeof(*q));
 memset(q,0,sizeof(*q));
 SPIN_INIT(q);
 Q=q;
}
