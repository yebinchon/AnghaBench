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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int TRUE ; 

__attribute__((used)) static BOOL FUNC2(IUnknown *iface1, IUnknown *iface2)
{
    IUnknown *unk1, *unk2;

    if(iface1 == iface2)
        return TRUE;

    FUNC0(iface1, &IID_IUnknown, (void**)&unk1);
    FUNC1(unk1);
    FUNC0(iface2, &IID_IUnknown, (void**)&unk2);
    FUNC1(unk2);

    return unk1 == unk2;
}