
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct screen {int texture; } ;
struct TYPE_3__ {int * linesize; int * data; } ;
typedef TYPE_1__ AVFrame ;


 int SDL_UpdateYUVTexture (int ,int *,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
update_texture(struct screen *screen, const AVFrame *frame) {
    SDL_UpdateYUVTexture(screen->texture, ((void*)0),
            frame->data[0], frame->linesize[0],
            frame->data[1], frame->linesize[1],
            frame->data[2], frame->linesize[2]);
}
