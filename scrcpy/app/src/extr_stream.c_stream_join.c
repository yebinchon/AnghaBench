
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream {int thread; } ;


 int SDL_WaitThread (int ,int *) ;

void
stream_join(struct stream *stream) {
    SDL_WaitThread(stream->thread, ((void*)0));
}
