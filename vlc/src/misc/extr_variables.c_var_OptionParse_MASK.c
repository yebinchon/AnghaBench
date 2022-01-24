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
struct TYPE_3__ {char* psz_string; int b_bool; int /*<<< orphan*/  f_float; void* i_int; } ;
typedef  TYPE_1__ vlc_value_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
#define  VLC_VAR_BOOL 131 
#define  VLC_VAR_FLOAT 130 
#define  VLC_VAR_INTEGER 129 
#define  VLC_VAR_STRING 128 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char* FUNC6 (char*,char) ; 
 char* FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 void* FUNC10 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,TYPE_1__) ; 

void FUNC14( vlc_object_t *p_obj, const char *psz_option,
                      bool trusted )
{
    char *psz_name, *psz_value;
    int  i_type;
    bool b_isno = false;
    vlc_value_t val;

    val.psz_string = NULL;

    /* It's too much of a hassle to remove the ':' when we parse
     * the cmd line :) */
    if( psz_option[0] == ':' )
        psz_option++;

    if( !psz_option[0] )
        return;

    psz_name = FUNC7( psz_option );
    if( psz_name == NULL )
        return;

    psz_value = FUNC6( psz_name, '=' );
    if( psz_value != NULL )
        *psz_value++ = '\0';

    i_type = FUNC0( psz_name );
    if( !i_type && !psz_value )
    {
        /* check for "no-foo" or "nofoo" */
        if( !FUNC9( psz_name, "no-", 3 ) )
        {
            FUNC3( psz_name, psz_name + 3, FUNC8(psz_name) + 1 - 3 );
        }
        else if( !FUNC9( psz_name, "no", 2 ) )
        {
            FUNC3( psz_name, psz_name + 2, FUNC8(psz_name) + 1 - 2 );
        }
        else goto cleanup;           /* Option doesn't exist */

        b_isno = true;
        i_type = FUNC0( psz_name );
    }
    if( !i_type ) goto cleanup; /* Option doesn't exist */

    if( ( i_type != VLC_VAR_BOOL ) &&
        ( !psz_value || !*psz_value ) ) goto cleanup; /* Invalid value */

    /* check if option is unsafe */
    if( !trusted && !FUNC1( psz_name ) )
    {
        FUNC4( p_obj, "unsafe option \"%s\" has been ignored for "
                        "security reasons", psz_name );
        FUNC2( psz_name );
        return;
    }

    /* Create the variable in the input object.
     * Children of the input object will be able to retrieve this value
     * thanks to the inheritance property of the object variables. */
    FUNC12( p_obj, psz_name, i_type );

    switch( i_type )
    {
    case VLC_VAR_BOOL:
        if( psz_value )
        {
            char *endptr;
            long long int value = FUNC10( psz_value, &endptr, 0 );
            if( endptr == psz_value ) /* Not an integer */
                val.b_bool = FUNC5( psz_value, "true" ) == 0
                          || FUNC5( psz_value, "yes" ) == 0;
            else
                val.b_bool = value != 0;
        }
        else
            val.b_bool = !b_isno;
        break;

    case VLC_VAR_INTEGER:
        val.i_int = FUNC10( psz_value, NULL, 0 );
        break;

    case VLC_VAR_FLOAT:
        val.f_float = FUNC11( psz_value );
        break;

    case VLC_VAR_STRING:
        val.psz_string = psz_value;
        break;

    default:
        goto cleanup;
    }

    FUNC13( p_obj, psz_name, val );

cleanup:
    FUNC2( psz_name );
}