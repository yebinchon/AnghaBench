#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  filter_t ;
struct TYPE_7__ {TYPE_1__* last; int /*<<< orphan*/  obj; } ;
typedef  TYPE_2__ filter_chain_t ;
typedef  int /*<<< orphan*/  config_chain_t ;
struct TYPE_6__ {int /*<<< orphan*/  filter; } ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 char* FUNC0 (char**,int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 

int FUNC6( filter_chain_t *chain, const char *str )
{
    char *buf = NULL;
    int ret = 0;

    while( str != NULL && str[0] != '\0' )
    {
        config_chain_t *cfg;
        char *name;

        char *next = FUNC0( &name, &cfg, str );

        str = next;
        FUNC4( buf );
        buf = next;

        filter_t *filter = FUNC2( chain, name, cfg, NULL );
        if( cfg )
            FUNC1( cfg );

        if( filter == NULL )
        {
            FUNC5( chain->obj, "Failed to append '%s' to chain", name );
            FUNC4( name );
            goto error;
        }

        FUNC4( name );
        ret++;
    }

    FUNC4( buf );
    return ret;

error:
    while( ret > 0 ) /* Unwind */
    {
        FUNC3( chain, &chain->last->filter );
        ret--;
    }
    FUNC4( buf );
    return VLC_EGENERIC;
}