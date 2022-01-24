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
struct vlc_memstream {size_t length; int /*<<< orphan*/ * ptr; int /*<<< orphan*/ * stream; } ;

/* Variables and functions */
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct vlc_memstream*) ; 

__attribute__((used)) static void FUNC2( struct vlc_memstream *ms, void **pp, size_t *pi )
{
    if( ms->stream != NULL && FUNC1( ms ) == VLC_SUCCESS )
    {
        if( ms->length == 0 )
        {
            FUNC0( ms->ptr );
            ms->ptr = NULL;
        }
        *pp = ms->ptr;
        *pi = ms->length;
    }
}