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
typedef  int /*<<< orphan*/  vlc_fourcc_t ;
struct TYPE_20__ {int /*<<< orphan*/  i_reorder_depth; } ;
struct TYPE_21__ {TYPE_6__** pp_decoder; TYPE_3__ desc; } ;
struct decoder_owner {int /*<<< orphan*/  lock; TYPE_4__ cc; int /*<<< orphan*/  p_clock; int /*<<< orphan*/  p_sout; int /*<<< orphan*/  p_resource; } ;
struct TYPE_18__ {int i_channel; int /*<<< orphan*/  i_reorder_depth; } ;
struct TYPE_19__ {TYPE_1__ cc; } ;
struct TYPE_22__ {TYPE_2__ subs; } ;
typedef  TYPE_5__ es_format_t ;
struct TYPE_23__ {int /*<<< orphan*/  p_module; } ;
typedef  TYPE_6__ decoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  SPU_ES ; 
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct decoder_owner* FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (struct decoder_owner*,int /*<<< orphan*/ ,int) ; 
 TYPE_6__* FUNC7 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12( decoder_t *p_dec, vlc_fourcc_t codec,
                             int i_channel, bool b_decode )
{
    struct decoder_owner *p_owner = FUNC3( p_dec );

    //msg_Warn( p_dec, "input_DecoderSetCcState: %d @%x", b_decode, i_channel );

    if( !FUNC6( p_owner, codec, i_channel ) )
        return VLC_EGENERIC;

    if( b_decode )
    {
        decoder_t *p_cc;
        es_format_t fmt;

        FUNC4( &fmt, SPU_ES, codec );
        fmt.subs.cc.i_channel = i_channel;
        fmt.subs.cc.i_reorder_depth = p_owner->cc.desc.i_reorder_depth;
        p_cc = FUNC7( FUNC1(p_dec), &fmt, p_owner->p_clock,
                                 p_owner->p_resource, p_owner->p_sout, false,
                                 NULL, NULL );
        if( !p_cc )
        {
            FUNC8( p_dec, "could not create decoder" );
            FUNC9( p_dec,
                FUNC2("Streaming / Transcoding failed"), "%s",
                FUNC2("VLC could not open the decoder module.") );
            return VLC_EGENERIC;
        }
        else if( !p_cc->p_module )
        {
            FUNC0( p_dec, &fmt, true );
            FUNC5(p_cc);
            return VLC_EGENERIC;
        }
        struct decoder_owner *p_ccowner = FUNC3( p_cc );
        p_ccowner->p_clock = p_owner->p_clock;

        FUNC10( &p_owner->lock );
        p_owner->cc.pp_decoder[i_channel] = p_cc;
        FUNC11( &p_owner->lock );
    }
    else
    {
        decoder_t *p_cc;

        FUNC10( &p_owner->lock );
        p_cc = p_owner->cc.pp_decoder[i_channel];
        p_owner->cc.pp_decoder[i_channel] = NULL;
        FUNC11( &p_owner->lock );

        if( p_cc )
            FUNC5(p_cc);
    }
    return VLC_SUCCESS;
}