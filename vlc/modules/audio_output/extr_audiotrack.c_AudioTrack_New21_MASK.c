#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_17__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * jobject ;
typedef  int /*<<< orphan*/  jint ;
typedef  int /*<<< orphan*/  audio_output_t ;
struct TYPE_24__ {int /*<<< orphan*/  (* DeleteLocalRef ) (TYPE_5__**,int /*<<< orphan*/ *) ;} ;
struct TYPE_23__ {int /*<<< orphan*/  MODE_STREAM; } ;
struct TYPE_22__ {int /*<<< orphan*/  build; int /*<<< orphan*/  setSampleRate; int /*<<< orphan*/  setEncoding; int /*<<< orphan*/  setChannelMask; int /*<<< orphan*/  ctor; int /*<<< orphan*/  clazz; } ;
struct TYPE_21__ {int /*<<< orphan*/  build; int /*<<< orphan*/  setLegacyStreamType; int /*<<< orphan*/  ctor; int /*<<< orphan*/  clazz; } ;
struct TYPE_20__ {int /*<<< orphan*/  STREAM_MUSIC; } ;
struct TYPE_19__ {TYPE_4__ AudioTrack; TYPE_3__ AudioFormat_Builder; TYPE_2__ AudioAttributes_Builder; TYPE_1__ AudioManager; } ;
typedef  TYPE_5__* JNIEnv ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  NewObject ; 
 TYPE_17__ jfields ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static jobject
FUNC15( JNIEnv *env, audio_output_t *p_aout, unsigned int i_rate,
                  int i_channel_config, int i_format, int i_size,
                  jint session_id )
{
    jobject p_audiotrack = NULL;
    jobject p_aattr_builder = NULL;
    jobject p_audio_attributes = NULL;
    jobject p_afmt_builder = NULL;
    jobject p_audio_format = NULL;
    jobject ref;

    p_aattr_builder =
        FUNC2( NewObject,
                  jfields.AudioAttributes_Builder.clazz,
                  jfields.AudioAttributes_Builder.ctor );
    if( !p_aattr_builder )
        return NULL;

    ref = FUNC3( p_aattr_builder,
                           jfields.AudioAttributes_Builder.setLegacyStreamType,
                           jfields.AudioManager.STREAM_MUSIC );
    (*env)->DeleteLocalRef( env, ref );

    p_audio_attributes =
        FUNC3( p_aattr_builder,
                         jfields.AudioAttributes_Builder.build );
    if( !p_audio_attributes )
        goto del_local_refs;

    p_afmt_builder = FUNC2( NewObject,
                               jfields.AudioFormat_Builder.clazz,
                               jfields.AudioFormat_Builder.ctor );
    if( !p_afmt_builder )
        goto del_local_refs;

    ref = FUNC3( p_afmt_builder,
                           jfields.AudioFormat_Builder.setChannelMask,
                           i_channel_config );
    if( FUNC0( "AudioFormat.Builder", "setChannelMask" ) )
    {
        (*env)->DeleteLocalRef( env, ref );
        goto del_local_refs;
    }
    (*env)->DeleteLocalRef( env, ref );

    ref = FUNC3( p_afmt_builder,
                           jfields.AudioFormat_Builder.setEncoding,
                           i_format );
    if( FUNC0( "AudioFormat.Builder", "setEncoding" ) )
    {
        (*env)->DeleteLocalRef( env, ref );
        goto del_local_refs;
    }
    (*env)->DeleteLocalRef( env, ref );

    ref = FUNC3( p_afmt_builder,
                           jfields.AudioFormat_Builder.setSampleRate,
                           i_rate );
    if( FUNC0( "AudioFormat.Builder", "setSampleRate" ) )
    {
        (*env)->DeleteLocalRef( env, ref );
        goto del_local_refs;
    }
    (*env)->DeleteLocalRef( env, ref );

    p_audio_format = FUNC3( p_afmt_builder,
                                      jfields.AudioFormat_Builder.build );
    if(!p_audio_format)
        goto del_local_refs;

    p_audiotrack = FUNC1( p_audio_attributes, p_audio_format, i_size,
                               jfields.AudioTrack.MODE_STREAM, session_id );

del_local_refs:
    (*env)->DeleteLocalRef( env, p_aattr_builder );
    (*env)->DeleteLocalRef( env, p_audio_attributes );
    (*env)->DeleteLocalRef( env, p_afmt_builder );
    (*env)->DeleteLocalRef( env, p_audio_format );
    return p_audiotrack;
}