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
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpBitmap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  ObjectBusy ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  PixelFormat32bppARGB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(void)
{
    GpStatus stat;
    GpImage *image;
    char invalid_image[256];

    stat = FUNC1(NULL);
    FUNC2(InvalidParameter, stat);

    stat = FUNC0(2, 2, 0, PixelFormat32bppARGB, NULL, (GpBitmap**)&image);
    FUNC2(Ok, stat);

    stat = FUNC1(image);
    FUNC2(Ok, stat);

    stat = FUNC1(image);
    FUNC2(ObjectBusy, stat);

    FUNC3(invalid_image, 0, 256);
    stat = FUNC1((GpImage*)invalid_image);
    FUNC2(ObjectBusy, stat);
}