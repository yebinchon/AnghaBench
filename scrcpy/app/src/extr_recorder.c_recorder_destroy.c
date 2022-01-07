
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recorder {int filename; int mutex; int queue_cond; } ;


 int SDL_DestroyCond (int ) ;
 int SDL_DestroyMutex (int ) ;
 int SDL_free (int ) ;

void
recorder_destroy(struct recorder *recorder) {
    SDL_DestroyCond(recorder->queue_cond);
    SDL_DestroyMutex(recorder->mutex);
    SDL_free(recorder->filename);
}
