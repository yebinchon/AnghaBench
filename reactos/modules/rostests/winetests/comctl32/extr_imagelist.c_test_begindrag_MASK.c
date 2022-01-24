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
struct TYPE_3__ {scalar_t__ x; scalar_t__ y; } ;
typedef  TYPE_1__ POINT ;
typedef  scalar_t__ HIMAGELIST ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(void)
{
    HIMAGELIST himl = FUNC0(7,13);
    HIMAGELIST drag;
    BOOL ret;
    int count;
    POINT hotspot;

    count = FUNC6(himl);
    FUNC1(count > 2, "Tests need an ImageList with more than 2 images\n");

    /* Two BeginDrag() without EndDrag() in between */
    ret = FUNC2(himl, 1, 0, 0);
    drag = FUNC5(NULL, NULL);
    FUNC1(ret && drag, "ImageList_BeginDrag() failed\n");
    ret = FUNC2(himl, 0, 3, 5);
    FUNC1(!ret, "ImageList_BeginDrag() returned TRUE\n");
    drag = FUNC5(NULL, &hotspot);
    FUNC1(!!drag, "No active ImageList drag left\n");
    FUNC1(hotspot.x == 0 && hotspot.y == 0, "New ImageList drag was created\n");
    FUNC4();
    drag = FUNC5(NULL, NULL);
    FUNC1(!drag, "ImageList drag was not destroyed\n");

    /* Invalid image index */
    FUNC2(himl, 0, 0, 0);
    ret = FUNC2(himl, count, 3, 5);
    FUNC1(!ret, "ImageList_BeginDrag() returned TRUE\n");
    drag = FUNC5(NULL, &hotspot);
    FUNC1(drag && hotspot.x == 0 && hotspot.y == 0, "Active drag should not have been canceled\n");
    FUNC4();
    drag = FUNC5(NULL, NULL);
    FUNC1(!drag, "ImageList drag was not destroyed\n");
    /* Invalid negative image indexes succeed */
    ret = FUNC2(himl, -17, 0, 0);
    drag = FUNC5(NULL, NULL);
    FUNC1(ret && drag, "ImageList drag was created\n");
    FUNC4();
    ret = FUNC2(himl, -1, 0, 0);
    drag = FUNC5(NULL, NULL);
    FUNC1(ret && drag, "ImageList drag was created\n");
    FUNC4();
    FUNC3(himl);
}