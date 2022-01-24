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
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpFontFamily ;
typedef  int /*<<< orphan*/  GpFontCollection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

__attribute__((used)) static void FUNC5(void)
{
    GpFontFamily *family, *family2;
    GpFontCollection *collection;
    INT found, count;
    GpStatus status;

    status = FUNC3(&collection);
    FUNC4(status == Ok, "Failed to get system collection, status %d.\n", status);

    count = 0;
    status = FUNC1(collection, &count);
    FUNC4(status == Ok, "Failed to get family count, status %d.\n", status);
    FUNC4(count > 0, "Unexpected empty collection.\n");

    status = FUNC2(NULL, 0, NULL, NULL);
    FUNC4(status == InvalidParameter, "Unexpected status %d.\n", status);

    found = 123;
    status = FUNC2(NULL, 0, NULL, &found);
    FUNC4(status == InvalidParameter, "Unexpected status %d.\n", status);
    FUNC4(found == 123, "Unexpected list count %d.\n", found);

    status = FUNC2(collection, 0, NULL, NULL);
    FUNC4(status == InvalidParameter, "Unexpected status %d.\n", status);

    found = 123;
    status = FUNC2(collection, 0, NULL, &found);
    FUNC4(status == InvalidParameter, "Unexpected status %d.\n", status);
    FUNC4(found == 123, "Unexpected list count %d.\n", found);

    found = 123;
    status = FUNC2(collection, 1, NULL, &found);
    FUNC4(status == InvalidParameter, "Unexpected status %d.\n", status);
    FUNC4(found == 123, "Unexpected list count %d.\n", found);

    family = NULL;
    found = 0;
    status = FUNC2(collection, 1, &family, &found);
    FUNC4(status == Ok, "Failed to get family list, status %d.\n", status);
    FUNC4(found == 1, "Unexpected list count %d.\n", found);
    FUNC4(family != NULL, "Expected family instance.\n");

    family = NULL;
    found = 0;
    status = FUNC2(collection, 1, &family2, &found);
    FUNC4(status == Ok, "Failed to get family list, status %d.\n", status);
    FUNC4(found == 1, "Unexpected list count %d.\n", found);
    FUNC4(family2 != family, "Unexpected family instance.\n");

    FUNC0(family);
    FUNC0(family2);
}