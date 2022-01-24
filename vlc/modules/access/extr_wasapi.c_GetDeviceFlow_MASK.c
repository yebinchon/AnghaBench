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
typedef  int /*<<< orphan*/  IMMEndpoint ;
typedef  int /*<<< orphan*/  IMMDevice ;
typedef  int EDataFlow ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IMMEndpoint ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int eAll ; 

__attribute__((used)) static EDataFlow FUNC5(IMMDevice *dev)
{
    void *pv;

    if (FUNC0(FUNC1(dev, &IID_IMMEndpoint, &pv)))
        return false;

    IMMEndpoint *ep = pv;
    EDataFlow flow;

    if (FUNC4(FUNC2(ep, &flow)))
        flow = eAll;
    FUNC3(ep);
    return flow;
}