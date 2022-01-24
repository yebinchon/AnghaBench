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
struct TYPE_4__ {scalar_t__ int_refs; scalar_t__ total_refs; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ HFONTItem ;
typedef  int /*<<< orphan*/  HFONT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OLEFontImpl_csHFONTLIST ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC4(HFONT hfont)
{
    HFONTItem *item;
    HRESULT hr = S_FALSE;

    FUNC0(&OLEFontImpl_csHFONTLIST);
    item = FUNC3(hfont);

    if(item)
    {
        item->int_refs--;
        item->total_refs--;
        if(item->int_refs == 0 && item->total_refs == 0)
            FUNC1(item);
        hr = S_OK;
    }
    FUNC2(&OLEFontImpl_csHFONTLIST);

    return hr;
}