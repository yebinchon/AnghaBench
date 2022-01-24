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
struct TYPE_3__ {int type; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ opt_t ;
typedef  int /*<<< orphan*/  libvlc_media_player_t ;

/* Variables and functions */
#define  VLC_VAR_FLOAT 129 
#define  VLC_VAR_INTEGER 128 
 int FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5( libvlc_media_player_t *p_mi, const char *restrict name,
         const opt_t *restrict opt )
{
    if( !opt ) return 0;

    switch( opt->type )
    {
        case 0: /* the enabler */
        {
            bool b_enabled = FUNC0( p_mi, name );
            return b_enabled ? 1 : 0;
        }
    case VLC_VAR_INTEGER:
        return FUNC4(p_mi, opt->name);
    case VLC_VAR_FLOAT:
        return FUNC2(FUNC3(p_mi, opt->name));
    default:
        FUNC1( "Invalid argument to %s in %s", name, "get int" );
        return 0;
    }
}