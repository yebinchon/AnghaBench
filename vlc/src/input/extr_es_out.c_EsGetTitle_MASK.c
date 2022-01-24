#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__* psz_description; } ;
struct TYPE_4__ {scalar_t__* i_pos; scalar_t__* psz_language; TYPE_2__ fmt; } ;
typedef  TYPE_1__ es_out_id_t ;
typedef  TYPE_2__ es_format_t ;

/* Variables and functions */
 scalar_t__* FUNC0 (char*) ; 
 int FUNC1 (char**,char*,scalar_t__*,scalar_t__*,...) ; 
 char* FUNC2 (scalar_t__*) ; 

__attribute__((used)) static char *FUNC3( es_out_id_t *es )
{
    const es_format_t *fmt = &es->fmt;
    char *title;

    /* Take care of the ES description */
    if( fmt->psz_description && *fmt->psz_description )
    {
        if( es->psz_language && *es->psz_language )
        {
            if( FUNC1( &title, "%s - [%s]", fmt->psz_description,
                          es->psz_language ) == -1 )
                title = NULL;
        }
        else
            title = FUNC2( fmt->psz_description );
    }
    else
    {
        if( es->psz_language && *es->psz_language )
        {
            if( FUNC1( &title, "%s %zu - [%s]", FUNC0("Track"),
                          es->i_pos, es->psz_language ) == -1 )
                title = NULL;
        }
        else
        {
            if( FUNC1( &title, "%s %zu", FUNC0("Track"), es->i_pos ) == -1 )
                title = NULL;
        }
    }

    return title;
}