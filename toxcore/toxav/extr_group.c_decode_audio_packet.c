
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int length; int * data; } ;
typedef TYPE_2__ int16_t ;
struct TYPE_16__ {int userdata; TYPE_1__* g_c; int (* audio_data ) (int ,int,int,TYPE_2__*,int,int,unsigned int,int ) ;} ;
struct TYPE_15__ {int decoder_channels; int last_packet_samples; int * audio_decoder; int buffer; } ;
struct TYPE_13__ {int m; } ;
typedef TYPE_3__ Group_Peer_AV ;
typedef TYPE_2__ Group_Audio_Packet ;
typedef TYPE_5__ Group_AV ;


 int LOGGER_ERROR (char*,int ) ;
 int OPUS_INVALID_PACKET ;
 int OPUS_OK ;
 TYPE_2__* dequeue (int ,int*) ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 int opus_decode (int *,int *,int ,TYPE_2__*,int,int) ;
 int * opus_decoder_create (unsigned int,int,int*) ;
 int opus_decoder_destroy (int *) ;
 int opus_decoder_get_nb_samples (int *,int *,int ) ;
 int opus_packet_get_nb_channels (int *) ;
 int opus_strerror (int) ;
 int stub1 (int ,int,int,TYPE_2__*,int,int,unsigned int,int ) ;

__attribute__((used)) static int decode_audio_packet(Group_AV *group_av, Group_Peer_AV *peer_av, int groupnumber, int friendgroupnumber)
{
    if (!group_av || !peer_av)
        return -1;

    int success;
    Group_Audio_Packet *pk = dequeue(peer_av->buffer, &success);

    if (success == 0)
        return -1;

    int16_t *out_audio = ((void*)0);
    int out_audio_samples = 0;

    unsigned int sample_rate = 48000;

    if (success == 1) {
        int channels = opus_packet_get_nb_channels(pk->data);

        if (channels == OPUS_INVALID_PACKET) {
            free(pk);
            return -1;
        }

        if (channels != 1 && channels != 2) {
            free(pk);
            return -1;
        }

        if (channels != peer_av->decoder_channels) {
            if (peer_av->audio_decoder) {
                opus_decoder_destroy(peer_av->audio_decoder);
                peer_av->audio_decoder = ((void*)0);
            }

            int rc;
            peer_av->audio_decoder = opus_decoder_create(sample_rate, channels, &rc);

            if (rc != OPUS_OK) {
                LOGGER_ERROR("Error while starting audio decoder: %s", opus_strerror(rc));
                free(pk);
                return -1;
            }

            peer_av->decoder_channels = channels;
        }

        int num_samples = opus_decoder_get_nb_samples(peer_av->audio_decoder, pk->data, pk->length);

        out_audio = malloc(num_samples * peer_av->decoder_channels * sizeof(int16_t));

        if (!out_audio) {
            free(pk);
            return -1;
        }

        out_audio_samples = opus_decode(peer_av->audio_decoder, pk->data, pk->length, out_audio, num_samples, 0);
        free(pk);

        if (out_audio_samples <= 0)
            return -1;

        peer_av->last_packet_samples = out_audio_samples;
    } else {
        if (!peer_av->audio_decoder)
            return -1;

        if (!peer_av->last_packet_samples)
            return -1;

        out_audio = malloc(peer_av->last_packet_samples * peer_av->decoder_channels * sizeof(int16_t));

        if (!out_audio) {
            free(pk);
            return -1;
        }

        out_audio_samples = opus_decode(peer_av->audio_decoder, ((void*)0), 0, out_audio, peer_av->last_packet_samples, 1);

        if (out_audio_samples <= 0)
            return -1;

    }

    if (out_audio) {

        if (group_av->audio_data)
            group_av->audio_data(group_av->g_c->m, groupnumber, friendgroupnumber, out_audio, out_audio_samples,
                                 peer_av->decoder_channels, sample_rate, group_av->userdata);

        free(out_audio);
        return 0;
    }

    return -1;
}
