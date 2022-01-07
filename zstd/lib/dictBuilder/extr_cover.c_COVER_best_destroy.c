
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cond; int mutex; scalar_t__ dict; } ;
typedef TYPE_1__ COVER_best_t ;


 int COVER_best_wait (TYPE_1__*) ;
 int ZSTD_pthread_cond_destroy (int *) ;
 int ZSTD_pthread_mutex_destroy (int *) ;
 int free (scalar_t__) ;

void COVER_best_destroy(COVER_best_t *best) {
  if (!best) {
    return;
  }
  COVER_best_wait(best);
  if (best->dict) {
    free(best->dict);
  }
  ZSTD_pthread_mutex_destroy(&best->mutex);
  ZSTD_pthread_cond_destroy(&best->cond);
}
