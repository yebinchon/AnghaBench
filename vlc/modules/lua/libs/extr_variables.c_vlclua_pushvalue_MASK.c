#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  f_float; int /*<<< orphan*/  psz_string; int /*<<< orphan*/  i_int; int /*<<< orphan*/  b_bool; } ;
typedef  TYPE_1__ vlc_value_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lua_Number ;
typedef  int /*<<< orphan*/  lua_Integer ;

/* Variables and functions */
 int /*<<< orphan*/  INT32_MAX ; 
 int /*<<< orphan*/  INT32_MIN ; 
#define  VLC_VAR_ADDRESS 133 
#define  VLC_VAR_BOOL 132 
 int VLC_VAR_CLASS ; 
#define  VLC_VAR_FLOAT 131 
#define  VLC_VAR_INTEGER 130 
#define  VLC_VAR_STRING 129 
#define  VLC_VAR_VOID 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5( lua_State *L, int i_type, vlc_value_t val )
{
    switch( i_type & VLC_VAR_CLASS )
    {
        case VLC_VAR_BOOL:
            FUNC0( L, val.b_bool );
            break;
        case VLC_VAR_INTEGER:
            /* Lua may only support 32-bit integers. If so, and the
             * value requires a higher range, push it as a float. We
             * lose some precision, but object variables are not a
             * recommended API for lua scripts: functionality requiring
             * high precision should be provided with a dedicated lua
             * binding instead of object variables.
             */
            // TODO: check using LUA_MININTEGER and LUA_MAXINTEGER macros
            // if and when we require lua >= 5.3
            if( sizeof( lua_Integer ) < sizeof( val.i_int ) &&
                ( val.i_int < INT32_MIN || INT32_MAX < val.i_int ) )
                FUNC2( L, (lua_Number)val.i_int );
            else
                FUNC1( L, val.i_int );
            break;
        case VLC_VAR_STRING:
            FUNC3( L, val.psz_string );
            break;
        case VLC_VAR_FLOAT:
            FUNC2( L, val.f_float );
            break;
        case VLC_VAR_ADDRESS:
            FUNC4( L );
            break;
        case VLC_VAR_VOID:
        default:
            FUNC4( L );
    }
    return 1;
}