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
struct TYPE_3__ {char const* psz_name; int /*<<< orphan*/  lock; int /*<<< orphan*/  p_meta; } ;
typedef  TYPE_1__ input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vlc_meta_Title ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

char *FUNC5( input_item_t *p_item )
{
    char *psz_ret;
    FUNC3( &p_item->lock );

    if( !p_item->p_meta )
    {
        psz_ret = p_item->psz_name ? FUNC1( p_item->psz_name ) : NULL;
        FUNC4( &p_item->lock );
        return psz_ret;
    }

    const char *psz_title = FUNC2( p_item->p_meta, vlc_meta_Title );
    if( !FUNC0( psz_title ) )
        psz_ret = FUNC1( psz_title );
    else
        psz_ret = p_item->psz_name ? FUNC1( p_item->psz_name ) : NULL;

    FUNC4( &p_item->lock );
    return psz_ret;
}