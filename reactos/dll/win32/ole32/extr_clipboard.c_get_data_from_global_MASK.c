#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  med ;
struct TYPE_11__ {int /*<<< orphan*/  tymed; } ;
struct TYPE_9__ {int /*<<< orphan*/  hGlobal; } ;
struct TYPE_10__ {TYPE_1__ u; } ;
typedef  TYPE_2__ STGMEDIUM ;
typedef  int /*<<< orphan*/  IDataObject ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * HGLOBAL ;
typedef  TYPE_3__ FORMATETC ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int GMEM_DDESHARE ; 
 int GMEM_MOVEABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYMED_HGLOBAL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static HRESULT FUNC6(IDataObject *data, FORMATETC *fmt, HGLOBAL *mem)
{
    HGLOBAL h;
    HRESULT hr;
    FORMATETC mem_fmt;
    STGMEDIUM med;

    *mem = NULL;

    mem_fmt = *fmt;
    mem_fmt.tymed = TYMED_HGLOBAL;
    FUNC5(&med, 0, sizeof(med));

    hr = FUNC1(data, &mem_fmt, &med);
    if(FUNC0(hr)) return hr;

    hr = FUNC4(med.u.hGlobal, GMEM_DDESHARE|GMEM_MOVEABLE, &h);

    if(FUNC3(hr)) *mem = h;

    FUNC2(&med);

    return hr;
}