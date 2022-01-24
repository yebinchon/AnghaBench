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
struct TYPE_5__ {int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ IUnknown ;
typedef  int /*<<< orphan*/  IStillImageW ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ CLASS_E_NOAGGREGATION ; 
 int /*<<< orphan*/  CLSCTX_ALL ; 
 int /*<<< orphan*/  CLSID_Sti ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IStillImageW ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  STI_VERSION_REAL ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  aggregator_addref_called ; 
 int /*<<< orphan*/  aggregator_vtbl ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(void)
{
    if (&pStiCreateInstanceW)
    {
        IUnknown aggregator = { &aggregator_vtbl };
        IStillImageW *pStiW;
        IUnknown *pUnknown;
        HRESULT hr;

        /* When aggregating, the outer object must get the non-delegating IUnknown to be
           able to control the inner object's reference count and query its interfaces.
           But StiCreateInstance* only take PSTI. So how does the non-delegating IUnknown
           come back to the outer object calling this function? */

        hr = FUNC10(FUNC2(NULL), STI_VERSION_REAL, &pStiW, &aggregator);
        if (FUNC7(hr))
        {
            IStillImageW *pStiW2 = NULL;

            /* Does this interface delegate? */
            aggregator_addref_called = FALSE;
            FUNC3(pStiW);
            FUNC9(!aggregator_addref_called, "the aggregated IStillImageW shouldn't delegate\n");
            FUNC5(pStiW);

            /* Tests show calling IStillImageW_WriteToErrorLog on the interface segfaults on Windows, so I guess it's an IUnknown.
               But querying for an IUnknown returns a different interface, which also delegates.
               So much for COM being reflexive...
               Anyway I doubt apps depend on any of this. */

            /* And what about the IStillImageW interface? */
            hr = FUNC4(pStiW, &IID_IStillImageW, (void**)&pStiW2);
            if (FUNC7(hr))
            {
                FUNC9(pStiW != pStiW2, "the aggregated IStillImageW and its queried IStillImageW unexpectedly match\n");
                /* Does it delegate? */
                aggregator_addref_called = FALSE;
                FUNC3(pStiW2);
                FUNC9(aggregator_addref_called, "the created IStillImageW's IStillImageW should delegate\n");
                FUNC5(pStiW2);
                FUNC5(pStiW2);
            }
            else
                FUNC9(0, "could not query for IID_IStillImageW, hr = 0x%x\n", hr);

            FUNC5(pStiW);
        }
        else
            FUNC9(0, "could not create StillImageW, hr = 0x%X\n", hr);

        /* Now do the above tests prove that STI.DLL isn't picky about querying for IUnknown
           in CoCreateInterface when aggregating? */
        hr = FUNC0(&CLSID_Sti, &aggregator, CLSCTX_ALL, &IID_IStillImageW, (void**)&pStiW);
        FUNC9(FUNC1(hr), "CoCreateInstance unexpectedly succeeded when querying for IStillImageW during aggregation\n");
        if (FUNC7(hr))
            FUNC5(pStiW);
        hr = FUNC0(&CLSID_Sti, &aggregator, CLSCTX_ALL, &IID_IUnknown, (void**)&pUnknown);
        FUNC9(FUNC7(hr) ||
            FUNC8(hr == CLASS_E_NOAGGREGATION), /* Win 2000 */
                "CoCreateInstance unexpectedly failed when querying for IUnknown during aggregation, hr = 0x%x\n", hr);
        if (FUNC7(hr))
            FUNC6(pUnknown);
    }
    else
        FUNC11("No StiCreateInstanceW function\n");
}