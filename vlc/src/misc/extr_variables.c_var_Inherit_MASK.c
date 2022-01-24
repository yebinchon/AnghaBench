#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int b_bool; int /*<<< orphan*/  i_int; int /*<<< orphan*/  f_float; int /*<<< orphan*/  psz_string; } ;
typedef  TYPE_1__ vlc_value_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int VLC_ENOOBJ ; 
 scalar_t__ VLC_SUCCESS ; 
#define  VLC_VAR_ADDRESS 132 
#define  VLC_VAR_BOOL 131 
 int VLC_VAR_CLASS ; 
#define  VLC_VAR_FLOAT 130 
#define  VLC_VAR_INTEGER 129 
#define  VLC_VAR_STRING 128 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7( vlc_object_t *p_this, const char *psz_name, int i_type,
                 vlc_value_t *p_val )
{
    i_type &= VLC_VAR_CLASS;
    for (vlc_object_t *obj = p_this; obj != NULL; obj = FUNC6(obj))
    {
        if( FUNC4( obj, psz_name, i_type, p_val ) == VLC_SUCCESS )
            return VLC_SUCCESS;
    }

    /* else take value from config */
    switch( i_type & VLC_VAR_CLASS )
    {
        case VLC_VAR_STRING:
            p_val->psz_string = FUNC2( psz_name );
            if( !p_val->psz_string ) p_val->psz_string = FUNC3("");
            break;
        case VLC_VAR_FLOAT:
            p_val->f_float = FUNC0( psz_name );
            break;
        case VLC_VAR_INTEGER:
            p_val->i_int = FUNC1( psz_name );
            break;
        case VLC_VAR_BOOL:
            p_val->b_bool = FUNC1( psz_name ) > 0;
            break;
        default:
            FUNC5();
        case VLC_VAR_ADDRESS:
            return VLC_ENOOBJ;
    }
    return VLC_SUCCESS;
}