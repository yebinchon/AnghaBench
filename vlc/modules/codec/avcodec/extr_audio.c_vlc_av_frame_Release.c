
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frame; } ;
typedef TYPE_1__ vlc_av_frame_t ;
typedef int block_t ;


 int av_frame_free (int *) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void vlc_av_frame_Release(block_t *block)
{
    vlc_av_frame_t *b = (void *)block;

    av_frame_free(&b->frame);
    free(b);
}
