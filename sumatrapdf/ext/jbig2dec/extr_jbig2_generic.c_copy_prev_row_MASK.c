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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int stride; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ Jbig2Image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(Jbig2Image *image, int row)
{
    if (!row) {
        /* no previous row */
        FUNC1(image->data, 0, image->stride);
    } else {
        /* duplicate data from the previous row */
        uint8_t *src = image->data + (row - 1) * image->stride;

        FUNC0(src + image->stride, src, image->stride);
    }
}