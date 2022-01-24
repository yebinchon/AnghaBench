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
typedef  int /*<<< orphan*/  bm ;
struct TYPE_3__ {int bmWidth; int bmHeight; } ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  TYPE_1__ BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int) ; 

__attribute__((used)) static void FUNC2( HBITMAP h, int cx, int cy )
{
    BITMAP bm;

    FUNC0( h, sizeof(bm), &bm );
    FUNC1( bm.bmWidth == cx, "got %d expect %d\n", bm.bmWidth, cx );
    FUNC1( bm.bmHeight == cy, "got %d expect %d\n", bm.bmHeight, cy );
}