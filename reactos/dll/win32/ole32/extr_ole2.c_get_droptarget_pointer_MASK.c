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
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IDropTarget ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IDropTarget ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static IDropTarget* FUNC6(HWND hwnd)
{
    IDropTarget *droptarget = NULL;
    HANDLE map;
    IStream *stream;

    map = FUNC5(hwnd);
    if(!map) return NULL;

    if(FUNC3(FUNC4(map, &stream)))
    {
        FUNC1(stream, &IID_IDropTarget, (void**)&droptarget);
        FUNC2(stream);
    }
    FUNC0(map);
    return droptarget;
}