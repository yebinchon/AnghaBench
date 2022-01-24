#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  feature; int /*<<< orphan*/  package; } ;
typedef  TYPE_1__ _ilfs ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_8__ {int /*<<< orphan*/  Enabled; } ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  TYPE_2__ MSICOMPONENT ;
typedef  TYPE_1__* LPVOID ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT FUNC5(MSIRECORD *row, LPVOID param)
{
    _ilfs* ilfs = param;
    LPCWSTR component;
    MSICOMPONENT *comp;

    component = FUNC0(row,1);

    /* check to see if the component is already loaded */
    comp = FUNC4( ilfs->package, component );
    if (!comp)
    {
        FUNC1("ignoring unknown component %s\n", FUNC3(component));
        return ERROR_SUCCESS;
    }
    FUNC2( ilfs->feature, comp );
    comp->Enabled = TRUE;

    return ERROR_SUCCESS;
}