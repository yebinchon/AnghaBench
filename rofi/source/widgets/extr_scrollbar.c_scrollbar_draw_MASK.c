#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {unsigned int h; } ;
typedef  TYPE_1__ widget ;
struct TYPE_10__ {unsigned int length; double pos; scalar_t__ pos_length; } ;
typedef  TYPE_2__ scrollbar ;
typedef  int /*<<< orphan*/  cairo_t ;

/* Variables and functions */
 unsigned int FUNC0 (int,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 unsigned int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC10 ( widget *wid, cairo_t *draw )
{
    scrollbar    *sb = (scrollbar *) wid;
    unsigned int wh  = FUNC7 ( wid );
    // Calculate position and size.
    unsigned int r      = ( sb->length * wh ) / ( (double) ( sb->length + sb->pos_length ) );
    unsigned int handle = wid->h - r;
    double       sec    = ( ( r ) / (double) ( sb->length - 1 ) );
    unsigned int height = handle;
    unsigned int y      = sb->pos * sec;
    // Set max pos.
    y = FUNC1 ( y, wh - handle );
    // Never go out of bar.
    height = FUNC0 ( 2, height );
    // Cap length;
    FUNC5 ( FUNC2 ( sb ), "handle-color", draw );

    FUNC4 ( draw,
                      FUNC6 ( wid ),
                      FUNC9 ( wid ) + y,
                      FUNC8 ( wid ),
                      height );
    FUNC3 ( draw );
}