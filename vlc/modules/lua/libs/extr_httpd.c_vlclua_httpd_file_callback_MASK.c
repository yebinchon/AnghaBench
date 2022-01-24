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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  httpd_file_t ;
struct TYPE_3__ {int /*<<< orphan*/  password; int /*<<< orphan*/ * L; } ;
typedef  TYPE_1__ httpd_file_sys_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  no_password_body ; 
 int /*<<< orphan*/  no_password_fmt ; 
 int /*<<< orphan*/  no_password_title ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int,int*) ; 

__attribute__((used)) static int FUNC14(
    httpd_file_sys_t *p_sys, httpd_file_t *p_file, uint8_t *psz_request,
    uint8_t **pp_data, int *pi_data )
{
    FUNC0(p_file);
    lua_State *L = p_sys->L;

    /* function data */
    FUNC7( L, 1 );
    FUNC7( L, 2 );
    /* function data function data */
    FUNC6( L, (const char *)psz_request );
    /* function data function data request */
    if( FUNC4( L, 2, 1, 0 ) )
    {
        /* function data err */
        vlc_object_t *p_this = FUNC12( L );
        const char *psz_err = FUNC9( L, -1 );
        FUNC10( p_this, "Error while running the lua HTTPd file callback: %s",
                 psz_err );
        FUNC8( L, 2 );
        /* function data */
        return VLC_EGENERIC;
    }
    /* function data outdata */
    *pp_data = FUNC13( L, -1, pi_data );
    if (!p_sys->password)
    {
        FUNC3(*pp_data);
        if (FUNC2((char**)pp_data, no_password_fmt,
                FUNC1(no_password_title), FUNC1(no_password_body)) < 0) {
            *pi_data = 0;
        } else {
            *pi_data = FUNC11((char*)*pp_data);
        }
    }
    FUNC5( L, 1 );
    /* function data */
    return VLC_SUCCESS;
}