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
struct TYPE_5__ {int inner_align; } ;
struct TYPE_4__ {TYPE_2__ updt; } ;
typedef  TYPE_1__ ttml_region_t ;
typedef  int /*<<< orphan*/  ttml_length_t ;
typedef  int /*<<< orphan*/  ttml_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 int SUBPICTURE_ALIGN_BOTTOM ; 
 int SUBPICTURE_ALIGN_TOP ; 
 scalar_t__ FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3( ttml_context_t *p_ctx,
                             const char *psz_attr, const char *psz_val,
                             ttml_region_t *p_region )
{
    if( !FUNC1( "tts:displayAlign", psz_attr ) )
    {
        p_region->updt.inner_align &= ~(SUBPICTURE_ALIGN_TOP|SUBPICTURE_ALIGN_BOTTOM);
        if( !FUNC1( "after", psz_val ) )
            p_region->updt.inner_align |= SUBPICTURE_ALIGN_BOTTOM;
        else if( FUNC1( "center", psz_val ) )
            /* "before" */
            p_region->updt.inner_align |= SUBPICTURE_ALIGN_TOP;
    }
    else if( !FUNC1 ( "tts:origin", psz_attr ) ||
             !FUNC1 ( "tts:extent", psz_attr ) )
    {
        ttml_length_t x, y;
        if( FUNC2( psz_val, &x, &y ) )
            FUNC0( p_ctx, x, y, (psz_attr[4] == 'o'), &p_region->updt );
    }
}