
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct blockif_elem {int dummy; } ;
struct blockif_ctxt {int bc_mtx; int bc_cond; scalar_t__ bc_closing; scalar_t__ bc_isgeom; } ;
typedef int pthread_t ;


 int MAXPHYS ;
 int blockif_complete (struct blockif_ctxt*,struct blockif_elem*) ;
 scalar_t__ blockif_dequeue (struct blockif_ctxt*,int ,struct blockif_elem**) ;
 int blockif_proc (struct blockif_ctxt*,struct blockif_elem*,int *) ;
 int free (int *) ;
 int * malloc (int ) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_exit (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_self () ;

__attribute__((used)) static void *
blockif_thr(void *arg)
{
 struct blockif_ctxt *bc;
 struct blockif_elem *be;
 pthread_t t;
 uint8_t *buf;

 bc = arg;
 if (bc->bc_isgeom)
  buf = malloc(MAXPHYS);
 else
  buf = ((void*)0);
 t = pthread_self();

 pthread_mutex_lock(&bc->bc_mtx);
 for (;;) {
  while (blockif_dequeue(bc, t, &be)) {
   pthread_mutex_unlock(&bc->bc_mtx);
   blockif_proc(bc, be, buf);
   pthread_mutex_lock(&bc->bc_mtx);
   blockif_complete(bc, be);
  }

  if (bc->bc_closing)
   break;
  pthread_cond_wait(&bc->bc_cond, &bc->bc_mtx);
 }
 pthread_mutex_unlock(&bc->bc_mtx);

 if (buf)
  free(buf);
 pthread_exit(((void*)0));
 return (((void*)0));
}
