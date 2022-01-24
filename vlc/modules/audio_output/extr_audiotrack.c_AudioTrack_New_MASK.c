#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jobject ;
typedef  int /*<<< orphan*/  jint ;
struct TYPE_20__ {TYPE_3__* sys; } ;
typedef  TYPE_2__ audio_output_t ;
struct TYPE_21__ {int /*<<< orphan*/  p_audiotrack; } ;
typedef  TYPE_3__ aout_sys_t ;
struct TYPE_22__ {int /*<<< orphan*/  (* DeleteLocalRef ) (TYPE_4__**,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* NewGlobalRef ) (TYPE_4__**,int /*<<< orphan*/ ) ;} ;
struct TYPE_19__ {scalar_t__ STATE_INITIALIZED; int /*<<< orphan*/  release; int /*<<< orphan*/  getState; scalar_t__ has_ctor_21; } ;
struct TYPE_18__ {TYPE_1__ AudioTrack; } ;
typedef  TYPE_4__* JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__**,TYPE_2__*,unsigned int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__**,TYPE_2__*,unsigned int,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_11__ jfields ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*) ; 

__attribute__((used)) static int
FUNC11( JNIEnv *env, audio_output_t *p_aout, unsigned int i_rate,
                int i_channel_config, int i_format, int i_size )
{
    aout_sys_t *p_sys = p_aout->sys;
    jint session_id = FUNC10( p_aout, "audiotrack-session-id" );

    jobject p_audiotrack;
    if( jfields.AudioTrack.has_ctor_21 )
        p_audiotrack = FUNC0( env, p_aout, i_rate, i_channel_config,
                                         i_format, i_size, session_id );
    else
        p_audiotrack = FUNC1( env, p_aout, i_rate,
                                             i_channel_config, i_format, i_size,
                                             session_id );
    if( FUNC2( "AudioTrack<init>" ) || !p_audiotrack )
    {
        FUNC6( p_aout, "AudioTrack Init failed" );
        return -1;
    }
    if( FUNC3( p_audiotrack, jfields.AudioTrack.getState )
        != jfields.AudioTrack.STATE_INITIALIZED )
    {
        FUNC4( p_audiotrack, jfields.AudioTrack.release );
        (*env)->DeleteLocalRef( env, p_audiotrack );
        FUNC5( p_aout, "AudioTrack getState failed" );
        return -1;
    }

    p_sys->p_audiotrack = (*env)->NewGlobalRef( env, p_audiotrack );
    (*env)->DeleteLocalRef( env, p_audiotrack );
    if( !p_sys->p_audiotrack )
        return -1;

    return 0;
}