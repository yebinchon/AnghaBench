#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* pNext; int /*<<< orphan*/  szId; } ;
typedef  TYPE_1__ NetCfgComponentItem ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  INetCfgComponent ;
typedef  int /*<<< orphan*/  INetCfg ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  IID_INetCfgComponent ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HRESULT
FUNC2(
    NetCfgComponentItem * pHead,
    LPCWSTR pszwComponentId,
    INetCfgComponent **pComponent,
    INetCfg * iface)
{
    while(pHead)
    {
        if (!FUNC1(pHead->szId, pszwComponentId))
        {
            return FUNC0(NULL, &IID_INetCfgComponent, (LPVOID*)pComponent, pHead, iface);
        }
        pHead = pHead->pNext;
    }
    return S_FALSE;
}