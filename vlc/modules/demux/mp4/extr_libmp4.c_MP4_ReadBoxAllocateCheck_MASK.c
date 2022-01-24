#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_7__ {scalar_t__ i_size; scalar_t__ i_pos; struct TYPE_7__* p_father; } ;
typedef  TYPE_1__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static MP4_Box_t *FUNC5( stream_t *p_stream, MP4_Box_t *p_father )
{
    MP4_Box_t *p_box = FUNC1( 1, sizeof( MP4_Box_t ) ); /* Needed to ensure simple on error handler */
    if( p_box == NULL )
        return NULL;

    if( !FUNC0( p_stream, p_box ) )
    {
        FUNC4( p_stream, "cannot read one box" );
        FUNC2( p_box );
        return NULL;
    }

    if( p_father && p_father->i_size > 0 &&
        p_father->i_pos + p_father->i_size < p_box->i_pos + p_box->i_size )
    {
        FUNC3( p_stream, "out of bound child" );
        FUNC2( p_box );
        return NULL;
    }

    if( !p_box->i_size )
    {
        FUNC3( p_stream, "found an empty box (null size)" );
        FUNC2( p_box );
        return NULL;
    }
    p_box->p_father = p_father;

    return p_box;
}