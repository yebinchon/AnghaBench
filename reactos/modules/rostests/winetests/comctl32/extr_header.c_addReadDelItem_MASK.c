#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int mask; } ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_1__ HDITEMA ;

/* Variables and functions */
 int /*<<< orphan*/  HDM_DELETEITEM ; 
 int /*<<< orphan*/  HDM_GETITEMA ; 
 int /*<<< orphan*/  HDM_INSERTITEMA ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

__attribute__((used)) static void FUNC3(HWND hdex, HDITEMA *phdiCreate, int maskRead, HDITEMA *phdiRead)
{
    FUNC2(FUNC0(hdex, HDM_INSERTITEMA, 0, (LPARAM)phdiCreate)!=-1, "Adding item failed\n");
    FUNC1(phdiRead, sizeof(HDITEMA));
    phdiRead->mask = maskRead;
    FUNC2(FUNC0(hdex, HDM_GETITEMA, 0, (LPARAM)phdiRead)!=0, "Getting item data failed\n");
    FUNC2(FUNC0(hdex, HDM_DELETEITEM, 0, 0)!=0, "Deleting item failed\n");
}