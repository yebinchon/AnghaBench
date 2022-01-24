#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  IWICBitmapDecoder_iface; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ BmpDecoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,TYPE_1__**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC6(int packed, int icoframe, REFIID iid, void** ppv)
{
    BmpDecoder *This;
    HRESULT ret;

    FUNC4("(%s,%p)\n", FUNC5(iid), ppv);

    *ppv = NULL;

    ret = FUNC0(packed, icoframe, &This);
    if (FUNC1(ret)) return ret;

    ret = FUNC2(&This->IWICBitmapDecoder_iface, iid, ppv);
    FUNC3(&This->IWICBitmapDecoder_iface);

    return ret;
}