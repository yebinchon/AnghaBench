#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_6__* sys; } ;
typedef  TYPE_5__ audio_output_t ;
struct TYPE_16__ {int /*<<< orphan*/ * p_data; } ;
struct TYPE_17__ {TYPE_2__ bytebuffer; int /*<<< orphan*/ * p_floatarray; int /*<<< orphan*/ * p_shortarray; int /*<<< orphan*/ * p_bytearray; } ;
struct TYPE_18__ {TYPE_3__ u; } ;
struct TYPE_15__ {int /*<<< orphan*/ * p_obj; } ;
struct TYPE_20__ {int b_thread_running; int b_audiotrack_exception; int i_write_type; int b_error; int b_passthrough; TYPE_4__ circular; TYPE_1__ timestamp; int /*<<< orphan*/ * p_audiotrack; int /*<<< orphan*/  lock; int /*<<< orphan*/  thread; int /*<<< orphan*/  thread_cond; } ;
typedef  TYPE_6__ aout_sys_t ;
struct TYPE_21__ {int /*<<< orphan*/  (* DeleteGlobalRef ) (TYPE_7__**,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_7__* JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_7__** FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  WRITE_BYTEARRAY 132 
#define  WRITE_BYTEARRAYV23 131 
#define  WRITE_BYTEBUFFER 130 
#define  WRITE_FLOATARRAY 129 
#define  WRITE_SHORTARRAYV23 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  release ; 
 int /*<<< orphan*/  stop ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13( audio_output_t *p_aout )
{
    aout_sys_t *p_sys = p_aout->sys;
    JNIEnv *env;

    if( !( env = FUNC1() ) )
        return;

    /* Stop the AudioTrack thread */
    FUNC11( &p_sys->lock );
    if( p_sys->b_thread_running )
    {
        p_sys->b_thread_running = false;
        FUNC9( &p_sys->thread_cond );
        FUNC12( &p_sys->lock );
        FUNC10( p_sys->thread, NULL );
    }
    else
        FUNC12(  &p_sys->lock );

    /* Release the AudioTrack object */
    if( p_sys->p_audiotrack )
    {
        if( !p_sys->b_audiotrack_exception )
        {
            FUNC2( stop );
            if( !FUNC0( "stop" ) )
                FUNC2( release );
        }
        (*env)->DeleteGlobalRef( env, p_sys->p_audiotrack );
        p_sys->p_audiotrack = NULL;
    }

    /* Release the timestamp object */
    if( p_sys->timestamp.p_obj )
    {
        (*env)->DeleteGlobalRef( env, p_sys->timestamp.p_obj );
        p_sys->timestamp.p_obj = NULL;
    }

    /* Release the Circular buffer data */
    switch( p_sys->i_write_type )
    {
    case WRITE_BYTEARRAY:
    case WRITE_BYTEARRAYV23:
        if( p_sys->circular.u.p_bytearray )
        {
            (*env)->DeleteGlobalRef( env, p_sys->circular.u.p_bytearray );
            p_sys->circular.u.p_bytearray = NULL;
        }
        break;
    case WRITE_SHORTARRAYV23:
        if( p_sys->circular.u.p_shortarray )
        {
            (*env)->DeleteGlobalRef( env, p_sys->circular.u.p_shortarray );
            p_sys->circular.u.p_shortarray = NULL;
        }
        break;
    case WRITE_FLOATARRAY:
        if( p_sys->circular.u.p_floatarray )
        {
            (*env)->DeleteGlobalRef( env, p_sys->circular.u.p_floatarray );
            p_sys->circular.u.p_floatarray = NULL;
        }
        break;
    case WRITE_BYTEBUFFER:
        FUNC3( p_sys->circular.u.bytebuffer.p_data );
        p_sys->circular.u.bytebuffer.p_data = NULL;
        break;
    }

    p_sys->b_audiotrack_exception = false;
    p_sys->b_error = false;
    p_sys->b_passthrough = false;
}