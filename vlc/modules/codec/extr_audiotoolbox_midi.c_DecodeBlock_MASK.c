#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_19__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ decoder_t ;
struct TYPE_20__ {int /*<<< orphan*/  outputUnit; int /*<<< orphan*/  end_date; int /*<<< orphan*/  synthUnit; } ;
typedef  TYPE_3__ decoder_sys_t ;
struct TYPE_21__ {int i_flags; scalar_t__ i_pts; int i_buffer; int* p_buffer; int i_length; } ;
typedef  TYPE_4__ block_t ;
typedef  int /*<<< orphan*/  UInt32 ;
struct TYPE_23__ {int mNumberBuffers; TYPE_1__* mBuffers; } ;
struct TYPE_22__ {int mWordClockTime; int /*<<< orphan*/  mFlags; } ;
struct TYPE_18__ {int mNumberChannels; unsigned int mDataByteSize; int* mData; } ;
typedef  scalar_t__ OSStatus ;
typedef  int /*<<< orphan*/  Float32 ;
typedef  TYPE_5__ AudioTimeStamp ;
typedef  TYPE_6__ AudioBufferList ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ,unsigned int,TYPE_6__*) ; 
 int BLOCK_FLAG_CORRUPTED ; 
 int BLOCK_FLAG_DISCONTINUITY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int UINT32_MAX ; 
 int VLCDEC_SUCCESS ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_4__* FUNC8 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  kAudioTimeStampWordClockTimeValid ; 
#define  kMidiMessage_ChannelPressure 135 
#define  kMidiMessage_ControlChange 134 
#define  kMidiMessage_NoteOff 133 
#define  kMidiMessage_NoteOn 132 
#define  kMidiMessage_PitchWheel 131 
#define  kMidiMessage_PolyPressure 130 
#define  kMidiMessage_ProgramChange 129 
#define  kMidiMessage_SysEx 128 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,...) ; 
 scalar_t__ noErr ; 

__attribute__((used)) static int FUNC11 (decoder_t *p_dec, block_t *p_block)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    block_t *p_out = NULL;
    OSStatus status = noErr;

    if (p_block == NULL) /* No Drain */
        return VLCDEC_SUCCESS;

    if (p_block->i_flags & (BLOCK_FLAG_DISCONTINUITY|BLOCK_FLAG_CORRUPTED)) {
        FUNC1(p_dec);
        if (p_block->i_flags & BLOCK_FLAG_CORRUPTED) {
            FUNC4(p_block);
            return VLCDEC_SUCCESS;
        }
    }

    if ( p_block->i_pts != VLC_TICK_INVALID &&
         FUNC5(&p_sys->end_date) == VLC_TICK_INVALID ) {
        FUNC7(&p_sys->end_date, p_block->i_pts);
    } else if (p_block->i_pts < FUNC5(&p_sys->end_date)) {
        FUNC10(p_dec, "MIDI message in the past?");
        goto drop;
    }

    if (p_block->i_buffer < 1)
        goto drop;

    uint8_t event = p_block->p_buffer[0];
    uint8_t data1 = (p_block->i_buffer > 1) ? (p_block->p_buffer[1]) : 0;
    uint8_t data2 = (p_block->i_buffer > 2) ? (p_block->p_buffer[2]) : 0;

    switch (event & 0xF0)
    {
        case kMidiMessage_NoteOff:
        case kMidiMessage_NoteOn:
        case kMidiMessage_PolyPressure:
        case kMidiMessage_ControlChange:
        case kMidiMessage_ProgramChange:
        case kMidiMessage_ChannelPressure:
        case kMidiMessage_PitchWheel:
            FUNC2(p_sys->synthUnit, event, data1, data2, 0);
        break;

        case kMidiMessage_SysEx:
            if (p_block->i_buffer < UINT32_MAX)
                FUNC3(p_sys->synthUnit, p_block->p_buffer, (UInt32)p_block->i_buffer);
        break;

        default:
            FUNC10(p_dec, "unhandled MIDI event: %x", event & 0xF0);
        break;
    }

    // Calculate frame count
    // Simplification of 44100 / 1000000
    // TODO: Other samplerates
    unsigned frames =
       (p_block->i_pts - FUNC5(&p_sys->end_date)) * 441 / 10000;

    if (frames == 0)
        goto drop;

    p_out = FUNC8(p_dec, frames);
    if (p_out == NULL)
        goto drop;

    p_out->i_pts = FUNC5(&p_sys->end_date );
    p_out->i_length = FUNC6(&p_sys->end_date, frames)
                      - p_out->i_pts;

    // Prepare Timestamp for the AudioUnit render call
    AudioTimeStamp timestamp = {};
    timestamp.mFlags = kAudioTimeStampWordClockTimeValid;
    timestamp.mWordClockTime = p_out->i_pts;

    // Prepare Buffer for the AudioUnit render call
    AudioBufferList bufferList;
    bufferList.mNumberBuffers = 1;
    bufferList.mBuffers[0].mNumberChannels = 2;
    bufferList.mBuffers[0].mDataByteSize = frames * sizeof(Float32) * 2;
    bufferList.mBuffers[0].mData = p_out->p_buffer;

    status = FUNC0(p_sys->outputUnit,
                             NULL,
                             &timestamp, 0,
                             frames, &bufferList);

    if (status != noErr) {
        FUNC10(p_dec, "rendering audio unit failed: %i", status);
        FUNC4(p_out);
        p_out = NULL;
    }

drop:
    FUNC4(p_block);
    if (p_out != NULL)
        FUNC9(p_dec, p_out);
    return VLCDEC_SUCCESS;
}