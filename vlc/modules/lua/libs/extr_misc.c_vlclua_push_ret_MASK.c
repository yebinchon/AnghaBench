#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
#define  VLC_EBADVAR 135 
#define  VLC_EGENERIC 134 
#define  VLC_ENOMEM 133 
#define  VLC_ENOMOD 132 
#define  VLC_ENOOBJ 131 
#define  VLC_ENOVAR 130 
#define  VLC_ETIMEOUT 129 
#define  VLC_SUCCESS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int) ; 

int FUNC3( lua_State *L, int i_error )
{
    FUNC0( L, i_error );

    int err;

    switch( i_error )
    {
        case VLC_SUCCESS:   err = 0;         break;
        case VLC_ENOMEM:    err = ENOMEM;    break;
        case VLC_ETIMEOUT:  err = ETIMEDOUT; break;
        case VLC_EBADVAR:   err = EINVAL;    break;
        case VLC_ENOMOD:    err = ENOENT;    break;
        case VLC_ENOOBJ:    err = ENOENT;    break;
        case VLC_ENOVAR:    err = ENOENT;    break;
        case VLC_EGENERIC:
            FUNC1( L, "generic error" );
            return 2;
        default:
            FUNC1( L, "unknown error" );
            return 2;
    }

    FUNC1( L, FUNC2(err) );
    return 2;
}