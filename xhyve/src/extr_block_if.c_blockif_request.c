
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blockif_req {int dummy; } ;
struct blockif_ctxt {int bc_mtx; int bc_cond; int bc_freeq; } ;
typedef enum blockop { ____Placeholder_blockop } blockop ;


 int E2BIG ;
 int TAILQ_EMPTY (int *) ;
 scalar_t__ blockif_enqueue (struct blockif_ctxt*,struct blockif_req*,int) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int
blockif_request(struct blockif_ctxt *bc, struct blockif_req *breq,
  enum blockop op)
{
 int err;

 err = 0;

 pthread_mutex_lock(&bc->bc_mtx);
 if (!TAILQ_EMPTY(&bc->bc_freeq)) {




  if (blockif_enqueue(bc, breq, op))
   pthread_cond_signal(&bc->bc_cond);
 } else {






  err = E2BIG;
 }
 pthread_mutex_unlock(&bc->bc_mtx);

 return (err);
}
