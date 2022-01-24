#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_6__ {char* psz_access; char* psz_path; int /*<<< orphan*/ * p_module; int /*<<< orphan*/ * pf_control; int /*<<< orphan*/ * pf_write; int /*<<< orphan*/ * pf_read; int /*<<< orphan*/ * pf_seek; int /*<<< orphan*/ * p_sys; int /*<<< orphan*/  p_cfg; } ;
typedef  TYPE_1__ sout_access_out_t ;

/* Variables and functions */
 char* FUNC0 (char**,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,char*,char*,int) ; 
 char* FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

sout_access_out_t *FUNC7( vlc_object_t *p_sout,
                                      const char *psz_access, const char *psz_name )
{
    sout_access_out_t *p_access;
    char              *psz_next;

    p_access = FUNC5( p_sout, sizeof( *p_access ), "access out" );
    if( !p_access )
        return NULL;

    psz_next = FUNC0( &p_access->psz_access, &p_access->p_cfg,
                                   psz_access );
    FUNC1( psz_next );
    p_access->psz_path   = FUNC3( psz_name ? psz_name : "" );
    if( FUNC4(p_access->psz_path == NULL) )
        goto error;
    p_access->p_sys      = NULL;
    p_access->pf_seek    = NULL;
    p_access->pf_read    = NULL;
    p_access->pf_write   = NULL;
    p_access->pf_control = NULL;
    p_access->p_module   = NULL;

    p_access->p_module   =
        FUNC2( p_access, "sout access", p_access->psz_access, true );

    if( !p_access->p_module )
    {
        FUNC1( p_access->psz_path );
error:
        FUNC1( p_access->psz_access );
        FUNC6(p_access);
        return( NULL );
    }

    return p_access;
}