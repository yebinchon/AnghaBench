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
struct histogram {int /*<<< orphan*/ *** data; } ;
struct box {scalar_t__ b_max; scalar_t__ b_min; scalar_t__ g_max; scalar_t__ g_min; scalar_t__ r_max; scalar_t__ r_min; } ;

/* Variables and functions */
 scalar_t__ B_COUNT ; 
 unsigned char B_SHIFT ; 
 scalar_t__ G_COUNT ; 
 unsigned char G_SHIFT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 struct histogram* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct histogram*) ; 
 scalar_t__ R_COUNT ; 
 unsigned char R_SHIFT ; 
 unsigned int FUNC3 (struct histogram*,struct box*) ; 
 struct box* FUNC4 (struct box*,int) ; 
 struct box* FUNC5 (struct box*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct histogram*,struct box*) ; 
 int /*<<< orphan*/  FUNC7 (struct histogram*,struct box*,struct box*) ; 

__attribute__((used)) static int FUNC8(unsigned char *image, unsigned int width, unsigned int height,
                      unsigned int stride, int desired, unsigned int *colors)
{
    struct box boxes[256];
    struct histogram *h;
    unsigned int x, y;
    unsigned char *p;
    struct box *b1, *b2;
    int numboxes, i;

    if (!(h = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, sizeof(*h))))
        return 0;

    for (y = 0; y < height; y++)
        for (x = 0, p = image + y * stride; x < width; x++, p += 3)
            h->data[p[2] >> R_SHIFT][p[1] >> G_SHIFT][p[0] >> B_SHIFT]++;

    numboxes = 1;
    boxes[0].r_min = 0; boxes[0].r_max = R_COUNT - 1;
    boxes[0].g_min = 0; boxes[0].g_max = G_COUNT - 1;
    boxes[0].b_min = 0; boxes[0].b_max = B_COUNT - 1;
    FUNC6(h, &boxes[0]);

    while (numboxes <= desired / 2)
    {
        if (!(b1 = FUNC4(boxes, numboxes))) break;
        b2 = &boxes[numboxes++];
        FUNC7(h, b1, b2);
    }
    while (numboxes < desired)
    {
        if (!(b1 = FUNC5(boxes, numboxes))) break;
        b2 = &boxes[numboxes++];
        FUNC7(h, b1, b2);
    }

    for (i = 0; i < numboxes; i++)
        colors[i] = FUNC3(h, &boxes[i]);

    FUNC2(FUNC0(), 0, h);
    return numboxes;
}