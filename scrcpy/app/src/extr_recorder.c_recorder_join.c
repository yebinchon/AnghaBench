
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recorder {int thread; } ;


 int SDL_WaitThread (int ,int *) ;

void
recorder_join(struct recorder *recorder) {
    SDL_WaitThread(recorder->thread, ((void*)0));
}
