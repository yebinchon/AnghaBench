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
typedef  int /*<<< orphan*/  seekpoint_t ;
struct TYPE_3__ {unsigned int i_size; int /*<<< orphan*/ ** pp_chapters; } ;
typedef  TYPE_1__ chapters_array_t ;

/* Variables and functions */
 void* FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 

__attribute__((used)) static seekpoint_t * FUNC4( unsigned int i_index, chapters_array_t *p_array )
{
    if ( i_index > 4096 ) return NULL;
    if ( i_index >= p_array->i_size )
    {
        unsigned int i_newsize = p_array->i_size;
        while( i_index >= i_newsize ) i_newsize += 50;

        if ( !p_array->pp_chapters )
        {
            p_array->pp_chapters = FUNC0( i_newsize, sizeof( seekpoint_t * ) );
            if ( !p_array->pp_chapters ) return NULL;
            p_array->i_size = i_newsize;
        } else {
            seekpoint_t **tmp = FUNC0( i_newsize, sizeof( seekpoint_t * ) );
            if ( !tmp ) return NULL;
            FUNC2( tmp, p_array->pp_chapters, p_array->i_size * sizeof( seekpoint_t * ) );
            FUNC1( p_array->pp_chapters );
            p_array->pp_chapters = tmp;
            p_array->i_size = i_newsize;
        }
    }
    if ( !p_array->pp_chapters[i_index] )
        p_array->pp_chapters[i_index] = FUNC3();
    return p_array->pp_chapters[i_index];
}