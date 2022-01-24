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
struct TYPE_3__ {int width; int height; void* pixels; } ;
typedef  TYPE_1__ lwCanvas ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int,int) ; 
 void* FUNC1 (int) ; 

lwCanvas *FUNC2(int width, int height, int bgcolor) {
    lwCanvas *canvas = FUNC1(sizeof(*canvas));
    canvas->width = width;
    canvas->height = height;
    canvas->pixels = FUNC1(width*height);
    FUNC0(canvas->pixels,bgcolor,width*height);
    return canvas;
}