#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ int16_t ;
struct TYPE_16__ {int /*<<< orphan*/  userdata; TYPE_1__* g_c; int /*<<< orphan*/  (* audio_data ) (int /*<<< orphan*/ ,int,int,TYPE_2__*,int,int,unsigned int,int /*<<< orphan*/ ) ;} ;
struct TYPE_15__ {int decoder_channels; int last_packet_samples; int /*<<< orphan*/ * audio_decoder; int /*<<< orphan*/  buffer; } ;
struct TYPE_13__ {int /*<<< orphan*/  m; } ;
typedef  TYPE_3__ Group_Peer_AV ;
typedef  TYPE_2__ Group_Audio_Packet ;
typedef  TYPE_5__ Group_AV ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int OPUS_INVALID_PACKET ; 
 int OPUS_OK ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int,int) ; 
 int /*<<< orphan*/ * FUNC5 (unsigned int,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int,TYPE_2__*,int,int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(Group_AV *group_av, Group_Peer_AV *peer_av, int groupnumber, int friendgroupnumber)
{
    if (!group_av || !peer_av)
        return -1;

    int success;
    Group_Audio_Packet *pk = FUNC1(peer_av->buffer, &success);

    if (success == 0)
        return -1;

    int16_t *out_audio = NULL;
    int out_audio_samples = 0;

    unsigned int sample_rate = 48000;

    if (success == 1) {
        int channels = FUNC8(pk->data);

        if (channels == OPUS_INVALID_PACKET) {
            FUNC2(pk);
            return -1;
        }

        if (channels != 1 && channels != 2) {
            FUNC2(pk);
            return -1;
        }

        if (channels != peer_av->decoder_channels) {
            if (peer_av->audio_decoder) {
                FUNC6(peer_av->audio_decoder);
                peer_av->audio_decoder = NULL;
            }

            int rc;
            peer_av->audio_decoder = FUNC5(sample_rate, channels, &rc);

            if (rc != OPUS_OK) {
                FUNC0("Error while starting audio decoder: %s", FUNC9(rc));
                FUNC2(pk);
                return -1;
            }

            peer_av->decoder_channels = channels;
        }

        int num_samples = FUNC7(peer_av->audio_decoder, pk->data, pk->length);

        out_audio = FUNC3(num_samples * peer_av->decoder_channels * sizeof(int16_t));

        if (!out_audio) {
            FUNC2(pk);
            return -1;
        }

        out_audio_samples = FUNC4(peer_av->audio_decoder, pk->data, pk->length, out_audio, num_samples, 0);
        FUNC2(pk);

        if (out_audio_samples <= 0)
            return -1;

        peer_av->last_packet_samples = out_audio_samples;
    } else {
        if (!peer_av->audio_decoder)
            return -1;

        if (!peer_av->last_packet_samples)
            return -1;

        out_audio = FUNC3(peer_av->last_packet_samples * peer_av->decoder_channels * sizeof(int16_t));

        if (!out_audio) {
            FUNC2(pk);
            return -1;
        }

        out_audio_samples = FUNC4(peer_av->audio_decoder, NULL, 0, out_audio, peer_av->last_packet_samples, 1);

        if (out_audio_samples <= 0)
            return -1;

    }

    if (out_audio) {

        if (group_av->audio_data)
            group_av->audio_data(group_av->g_c->m, groupnumber, friendgroupnumber, out_audio, out_audio_samples,
                                 peer_av->decoder_channels, sample_rate, group_av->userdata);

        FUNC2(out_audio);
        return 0;
    }

    return -1;
}