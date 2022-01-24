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
typedef  int /*<<< orphan*/  IGraphBuilder ;
typedef  int /*<<< orphan*/  IAMMultiMediaStream ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  filenameW ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static void FUNC6(void)
{
    IAMMultiMediaStream *pams;
    HRESULT hr;
    IGraphBuilder* pgraph;

    if (!(pams = FUNC4()))
        return;

    hr = FUNC0(pams, &pgraph);
    FUNC5(hr==S_OK, "IAMMultiMediaStream_GetFilterGraph returned: %x\n", hr);
    FUNC5(pgraph==NULL, "Filtergraph should not be created yet\n");

    if (pgraph)
        FUNC3(pgraph);

    hr = FUNC1(pams, filenameW, 0);
    FUNC5(hr==S_OK, "IAMMultiMediaStream_OpenFile returned: %x\n", hr);

    hr = FUNC0(pams, &pgraph);
    FUNC5(hr==S_OK, "IAMMultiMediaStream_GetFilterGraph returned: %x\n", hr);
    FUNC5(pgraph!=NULL, "Filtergraph should be created\n");

    if (pgraph)
        FUNC3(pgraph);

    FUNC2(pams);
}