#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* p_binary; int /*<<< orphan*/  p_data; } ;
struct TYPE_10__ {scalar_t__ i_type; TYPE_1__ data; } ;
struct TYPE_9__ {int /*<<< orphan*/  i_blob; scalar_t__ p_blob; } ;
typedef  TYPE_3__ MP4_Box_t ;

/* Variables and functions */
 scalar_t__ ATOM_data ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_3__* FUNC2 (TYPE_3__*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*) ; 
 char* FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char * FUNC6( MP4_Box_t *p_box )
{
    if ( p_box->i_type == ATOM_data )
        return FUNC3( p_box->data.p_data );

    MP4_Box_t *p_data = FUNC2( p_box, "data" );
    if ( p_data )
        return FUNC3( FUNC0(p_data) );
    else if ( p_box->data.p_binary && p_box->data.p_binary->p_blob )
    {
        char *psz_utf = FUNC5( p_box->data.p_binary->p_blob,
                                 p_box->data.p_binary->i_blob );
        if (FUNC4( psz_utf ))
            FUNC1( psz_utf );
        return psz_utf;
    }
    else
        return NULL;
}