#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int ColorCount; int BitsPerPixel; int /*<<< orphan*/ * Colors; } ;
typedef  int /*<<< orphan*/  GifColorType ;
typedef  TYPE_1__ ColorMapObject ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static ColorMapObject *
FUNC5(int ColorCount,
              const GifColorType * ColorMap) {

    ColorMapObject *Object;

    /*** FIXME: Our ColorCount has to be a power of two.  Is it necessary to
     * make the user know that or should we automatically round up instead? */
    if (ColorCount != (1 << FUNC0(ColorCount))) {
        return NULL;
    }

    Object = FUNC2(sizeof(ColorMapObject));
    if (Object == NULL) {
        return NULL;
    }

    Object->Colors = FUNC3(ColorCount, sizeof(GifColorType));
    if (Object->Colors == NULL) {
        FUNC4(Object);
        return NULL;
    }

    Object->ColorCount = ColorCount;
    Object->BitsPerPixel = FUNC0(ColorCount);

    if (ColorMap) {
        FUNC1(Object->Colors, ColorMap, ColorCount * sizeof(GifColorType));
    }

    return (Object);
}