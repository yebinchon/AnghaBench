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
typedef  size_t vlc_meta_type_t ;
struct TYPE_3__ {int /*<<< orphan*/ ** ppsz_meta; } ;
typedef  TYPE_1__ vlc_meta_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 

void FUNC4( vlc_meta_t *p_meta, vlc_meta_type_t meta_type, const char *psz_val )
{
    FUNC2( p_meta->ppsz_meta[meta_type] );
    FUNC1( psz_val == NULL || FUNC0( psz_val ) );
    p_meta->ppsz_meta[meta_type] = psz_val ? FUNC3( psz_val ) : NULL;
}