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
typedef  int INT ;
typedef  int GpStatus ;
typedef  int /*<<< orphan*/  GpFontCollection ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (int /*<<< orphan*/ **) ; 
 int InvalidParameter ; 
 int Ok ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 

__attribute__((used)) static void FUNC3(void)
{
    GpFontCollection *collection;
    GpStatus status;
    INT count;

    status = FUNC0(NULL, NULL);
    FUNC2(status == InvalidParameter, "Unexpected status %d.\n", status);

    count = 123;
    status = FUNC0(NULL, &count);
    FUNC2(status == InvalidParameter, "Unexpected status %d.\n", status);
    FUNC2(count == 123, "Unexpected family count %d.\n", count);

    status = FUNC1(&collection);
    FUNC2(status == Ok, "Failed to get system collection, status %d.\n", status);

    status = FUNC0(collection, NULL);
    FUNC2(status == InvalidParameter, "Unexpected status %d.\n", status);
}