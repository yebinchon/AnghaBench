#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_8__ {void* itemDelimiter; void* itemName; int /*<<< orphan*/ * pMarshal; scalar_t__ ref; TYPE_2__ IROTData_iface; TYPE_1__ IMoniker_iface; } ;
typedef  int /*<<< orphan*/  OLECHAR ;
typedef  int /*<<< orphan*/  const* LPCOLESTR ;
typedef  TYPE_3__ ItemMonikerImpl ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VT_ItemMonikerImpl ; 
 int /*<<< orphan*/  VT_ROTDataImpl ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/  const*) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static HRESULT FUNC8(ItemMonikerImpl* This, LPCOLESTR lpszDelim,LPCOLESTR lpszItem)
{

    int sizeStr1=FUNC7(lpszItem), sizeStr2;
    static const OLECHAR emptystr[1];
    LPCOLESTR	delim;

    FUNC4("(%p,%s,%s)\n",This,FUNC5(lpszDelim),FUNC5(lpszItem));

    /* Initialize the virtual function table. */
    This->IMoniker_iface.lpVtbl = &VT_ItemMonikerImpl;
    This->IROTData_iface.lpVtbl = &VT_ROTDataImpl;
    This->ref          = 0;
    This->pMarshal     = NULL;

    This->itemName=FUNC2(FUNC1(),0,sizeof(WCHAR)*(sizeStr1+1));
    if (!This->itemName)
	return E_OUTOFMEMORY;
    FUNC6(This->itemName,lpszItem);

    if (!lpszDelim)
	FUNC0("lpszDelim is NULL. Using empty string which is possibly wrong.\n");

    delim = lpszDelim ? lpszDelim : emptystr;

    sizeStr2=FUNC7(delim);
    This->itemDelimiter=FUNC2(FUNC1(),0,sizeof(WCHAR)*(sizeStr2+1));
    if (!This->itemDelimiter) {
	FUNC3(FUNC1(),0,This->itemName);
	return E_OUTOFMEMORY;
    }
    FUNC6(This->itemDelimiter,delim);
    return S_OK;
}