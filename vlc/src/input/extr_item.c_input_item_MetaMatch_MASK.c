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
typedef  int /*<<< orphan*/  vlc_meta_type_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  p_meta; } ;
typedef  TYPE_1__ input_item_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

bool FUNC4( input_item_t *p_i,
                           vlc_meta_type_t meta_type, const char *psz )
{
    FUNC2( &p_i->lock );

    if( !p_i->p_meta )
    {
        FUNC3( &p_i->lock );
        return false;
    }
    const char *psz_meta = FUNC1( p_i->p_meta, meta_type );
    bool b_ret = psz_meta && FUNC0( psz_meta, psz );

    FUNC3( &p_i->lock );

    return b_ret;
}