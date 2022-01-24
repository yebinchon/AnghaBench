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
typedef  char const sout_instance_t ;
typedef  char const input_resource_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static sout_instance_t *FUNC6( input_resource_t *p_resource,
                                     sout_instance_t *p_sout, const char *psz_sout )
{
#ifdef ENABLE_SOUT
    if( !p_sout && !psz_sout )
    {
        if( p_resource->p_sout )
        {
            msg_Dbg( p_resource->p_sout, "destroying useless sout" );
            DestroySout( p_resource );
        }
        return NULL;
    }

    assert( !p_sout || ( !p_resource->p_sout && !psz_sout ) );

    /* Check the validity of the sout */
    if( p_resource->p_sout &&
        strcmp( p_resource->p_sout->psz_sout, psz_sout ) )
    {
        msg_Dbg( p_resource->p_parent, "destroying unusable sout" );
        DestroySout( p_resource );
    }

    if( psz_sout )
    {
        if( p_resource->p_sout )
        {
            /* Reuse it */
            msg_Dbg( p_resource->p_parent, "reusing sout" );
            msg_Dbg( p_resource->p_parent, "you probably want to use gather stream_out" );
        }
        else
        {
            /* Create a new one */
            p_resource->p_sout = sout_NewInstance( p_resource->p_parent, psz_sout );
        }

        p_sout = p_resource->p_sout;
        p_resource->p_sout = NULL;

        return p_sout;
    }
    else
    {
        p_resource->p_sout = p_sout;
        return NULL;
    }
#else
    FUNC1 (p_resource); FUNC1 (p_sout); FUNC1 (psz_sout);
    return NULL;
#endif
}