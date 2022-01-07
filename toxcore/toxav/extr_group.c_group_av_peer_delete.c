
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buffer; scalar_t__ audio_decoder; } ;
typedef TYPE_1__ Group_Peer_AV ;


 int free (void*) ;
 int opus_decoder_destroy (scalar_t__) ;
 int terminate_queue (int ) ;

__attribute__((used)) static void group_av_peer_delete(void *object, int groupnumber, int friendgroupnumber, void *peer_object)
{
    Group_Peer_AV *peer_av = peer_object;

    if (!peer_av)
        return;

    if (peer_av->audio_decoder)
        opus_decoder_destroy(peer_av->audio_decoder);

    terminate_queue(peer_av->buffer);
    free(peer_object);
}
