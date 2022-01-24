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
struct TYPE_4__ {int biWidth; int biHeight; } ;
struct TYPE_5__ {TYPE_1__ bmiHeader; } ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  TYPE_2__ BITMAPINFO ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int) ; 

__attribute__((used)) static void FUNC3( HGLOBAL h, int cx, int cy )
{
    BITMAPINFO *info;

    info = FUNC0( h );
    FUNC2( info->bmiHeader.biWidth == cx, "got %d expect %d\n", info->bmiHeader.biWidth, cx );
    FUNC2( info->bmiHeader.biHeight == cy, "got %d expect %d\n", info->bmiHeader.biHeight, cy );
    FUNC1( h );
}