
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int packet; } ;
typedef TYPE_1__ vlc_av_packet_t ;
typedef int block_t ;


 int av_packet_unref (int *) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void vlc_av_packet_Release(block_t *block)
{
    vlc_av_packet_t *b = (void *) block;

    av_packet_unref(&b->packet);
    free(b);
}
