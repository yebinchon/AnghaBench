#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  font ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_6__ {int /*<<< orphan*/  hdc; } ;
typedef  TYPE_1__* PHYSDEV ;
typedef  int /*<<< orphan*/  LOGFONTW ;
typedef  scalar_t__ INT16 ;
typedef  int /*<<< orphan*/  HFONT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GGO_BITMAP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__) ; 

HFONT FUNC5( PHYSDEV dev, HFONT hfont, UINT *aa_flags )
{
    LOGFONTW font;
    INT16 index;

    *aa_flags = GGO_BITMAP;  /* no point in anti-aliasing on metafiles */
    index = FUNC3(dev, hfont);
    if( index < 0 )
    {
        if (!FUNC1( hfont, sizeof(font), &font ))
            return 0;
        index = FUNC2(dev, hfont, &font);
        if( index < 0 )
            return 0;
        FUNC0(hfont, dev->hdc);
    }
    return FUNC4( dev, index ) ? hfont : 0;
}