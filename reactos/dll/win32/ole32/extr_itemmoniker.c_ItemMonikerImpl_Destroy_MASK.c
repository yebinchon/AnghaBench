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
struct TYPE_5__ {struct TYPE_5__* itemDelimiter; struct TYPE_5__* itemName; scalar_t__ pMarshal; } ;
typedef  TYPE_1__ ItemMonikerImpl ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC4(ItemMonikerImpl* This)
{
    FUNC3("(%p)\n",This);

    if (This->pMarshal) FUNC2(This->pMarshal);
    FUNC1(FUNC0(),0,This->itemName);
    FUNC1(FUNC0(),0,This->itemDelimiter);
    FUNC1(FUNC0(),0,This);

    return S_OK;
}