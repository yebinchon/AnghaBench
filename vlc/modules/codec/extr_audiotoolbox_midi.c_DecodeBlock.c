
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_19__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ decoder_t ;
struct TYPE_20__ {int outputUnit; int end_date; int synthUnit; } ;
typedef TYPE_3__ decoder_sys_t ;
struct TYPE_21__ {int i_flags; scalar_t__ i_pts; int i_buffer; int* p_buffer; int i_length; } ;
typedef TYPE_4__ block_t ;
typedef int UInt32 ;
struct TYPE_23__ {int mNumberBuffers; TYPE_1__* mBuffers; } ;
struct TYPE_22__ {int mWordClockTime; int mFlags; } ;
struct TYPE_18__ {int mNumberChannels; unsigned int mDataByteSize; int* mData; } ;
typedef scalar_t__ OSStatus ;
typedef int Float32 ;
typedef TYPE_5__ AudioTimeStamp ;
typedef TYPE_6__ AudioBufferList ;


 scalar_t__ AudioUnitRender (int ,int *,TYPE_5__*,int ,unsigned int,TYPE_6__*) ;
 int BLOCK_FLAG_CORRUPTED ;
 int BLOCK_FLAG_DISCONTINUITY ;
 int Flush (TYPE_2__*) ;
 int MusicDeviceMIDIEvent (int ,int,int,int,int ) ;
 int MusicDeviceSysEx (int ,int*,int ) ;
 int UINT32_MAX ;
 int VLCDEC_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 int block_Release (TYPE_4__*) ;
 int date_Get (int *) ;
 int date_Increment (int *,unsigned int) ;
 int date_Set (int *,scalar_t__) ;
 TYPE_4__* decoder_NewAudioBuffer (TYPE_2__*,unsigned int) ;
 int decoder_QueueAudio (TYPE_2__*,TYPE_4__*) ;
 int kAudioTimeStampWordClockTimeValid ;
 int msg_Warn (TYPE_2__*,char*,...) ;
 scalar_t__ noErr ;

__attribute__((used)) static int DecodeBlock (decoder_t *p_dec, block_t *p_block)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    block_t *p_out = ((void*)0);
    OSStatus status = noErr;

    if (p_block == ((void*)0))
        return VLCDEC_SUCCESS;

    if (p_block->i_flags & (BLOCK_FLAG_DISCONTINUITY|BLOCK_FLAG_CORRUPTED)) {
        Flush(p_dec);
        if (p_block->i_flags & BLOCK_FLAG_CORRUPTED) {
            block_Release(p_block);
            return VLCDEC_SUCCESS;
        }
    }

    if ( p_block->i_pts != VLC_TICK_INVALID &&
         date_Get(&p_sys->end_date) == VLC_TICK_INVALID ) {
        date_Set(&p_sys->end_date, p_block->i_pts);
    } else if (p_block->i_pts < date_Get(&p_sys->end_date)) {
        msg_Warn(p_dec, "MIDI message in the past?");
        goto drop;
    }

    if (p_block->i_buffer < 1)
        goto drop;

    uint8_t event = p_block->p_buffer[0];
    uint8_t data1 = (p_block->i_buffer > 1) ? (p_block->p_buffer[1]) : 0;
    uint8_t data2 = (p_block->i_buffer > 2) ? (p_block->p_buffer[2]) : 0;

    switch (event & 0xF0)
    {
        case 133:
        case 132:
        case 130:
        case 134:
        case 129:
        case 135:
        case 131:
            MusicDeviceMIDIEvent(p_sys->synthUnit, event, data1, data2, 0);
        break;

        case 128:
            if (p_block->i_buffer < UINT32_MAX)
                MusicDeviceSysEx(p_sys->synthUnit, p_block->p_buffer, (UInt32)p_block->i_buffer);
        break;

        default:
            msg_Warn(p_dec, "unhandled MIDI event: %x", event & 0xF0);
        break;
    }




    unsigned frames =
       (p_block->i_pts - date_Get(&p_sys->end_date)) * 441 / 10000;

    if (frames == 0)
        goto drop;

    p_out = decoder_NewAudioBuffer(p_dec, frames);
    if (p_out == ((void*)0))
        goto drop;

    p_out->i_pts = date_Get(&p_sys->end_date );
    p_out->i_length = date_Increment(&p_sys->end_date, frames)
                      - p_out->i_pts;


    AudioTimeStamp timestamp = {};
    timestamp.mFlags = kAudioTimeStampWordClockTimeValid;
    timestamp.mWordClockTime = p_out->i_pts;


    AudioBufferList bufferList;
    bufferList.mNumberBuffers = 1;
    bufferList.mBuffers[0].mNumberChannels = 2;
    bufferList.mBuffers[0].mDataByteSize = frames * sizeof(Float32) * 2;
    bufferList.mBuffers[0].mData = p_out->p_buffer;

    status = AudioUnitRender(p_sys->outputUnit,
                             ((void*)0),
                             &timestamp, 0,
                             frames, &bufferList);

    if (status != noErr) {
        msg_Warn(p_dec, "rendering audio unit failed: %i", status);
        block_Release(p_out);
        p_out = ((void*)0);
    }

drop:
    block_Release(p_block);
    if (p_out != ((void*)0))
        decoder_QueueAudio(p_dec, p_out);
    return VLCDEC_SUCCESS;
}
