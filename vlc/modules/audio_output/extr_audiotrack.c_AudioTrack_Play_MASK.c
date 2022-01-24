#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {TYPE_4__* sys; } ;
typedef  TYPE_3__ audio_output_t ;
struct TYPE_19__ {int i_write_type; int b_error; int /*<<< orphan*/  i_samples_written; } ;
typedef  TYPE_4__ aout_sys_t ;
struct TYPE_17__ {int ERROR_INVALID_OPERATION; int ERROR_BAD_VALUE; } ;
struct TYPE_16__ {int ERROR_DEAD_OBJECT; scalar_t__ has_ERROR_DEAD_OBJECT; } ;
struct TYPE_20__ {TYPE_2__ AudioTrack; TYPE_1__ AudioManager; } ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,size_t,size_t,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,size_t,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,size_t,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,size_t,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,size_t,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
#define  WRITE_BYTEARRAY 132 
#define  WRITE_BYTEARRAYV23 131 
#define  WRITE_BYTEBUFFER 130 
#define  WRITE_FLOATARRAY 129 
#define  WRITE_SHORTARRAYV23 128 
 TYPE_7__ jfields ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  play ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int
FUNC13( JNIEnv *env, audio_output_t *p_aout, size_t i_data_size,
                 size_t i_data_offset, bool b_force )
{
    aout_sys_t *p_sys = p_aout->sys;
    int i_ret;

    switch( p_sys->i_write_type )
    {
    case WRITE_BYTEARRAYV23:
        i_ret = FUNC1( env, p_aout, i_data_size,
                                             i_data_offset );
        break;
    case WRITE_BYTEBUFFER:
        i_ret = FUNC2( env, p_aout, i_data_size,
                                           i_data_offset );
        break;
    case WRITE_SHORTARRAYV23:
        i_ret = FUNC4( env, p_aout, i_data_size,
                                              i_data_offset );
        break;
    case WRITE_BYTEARRAY:
        i_ret = FUNC0( env, p_aout, i_data_size,
                                          i_data_offset, b_force );
        break;
    case WRITE_FLOATARRAY:
        i_ret = FUNC3( env, p_aout, i_data_size,
                                           i_data_offset );
        break;
    default:
        FUNC12();
    }

    if( i_ret < 0 ) {
        if( jfields.AudioManager.has_ERROR_DEAD_OBJECT
            && i_ret == jfields.AudioManager.ERROR_DEAD_OBJECT )
        {
            FUNC11( p_aout, "ERROR_DEAD_OBJECT: "
                              "try recreating AudioTrack" );
            if( ( i_ret = FUNC5( env, p_aout ) ) == 0 )
            {
                FUNC6( env, p_aout );
                FUNC9( play );
                FUNC8( "play" );
            }
        } else
        {
            const char *str;
            if( i_ret == jfields.AudioTrack.ERROR_INVALID_OPERATION )
                str = "ERROR_INVALID_OPERATION";
            else if( i_ret == jfields.AudioTrack.ERROR_BAD_VALUE )
                str = "ERROR_BAD_VALUE";
            else
                str = "ERROR";
            FUNC10( p_aout, "Write failed: %s", str );
            p_sys->b_error = true;
        }
    } else
        p_sys->i_samples_written += FUNC7( i_ret );
    return i_ret;
}