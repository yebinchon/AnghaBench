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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IAVIStream ;
typedef  int /*<<< orphan*/  IAVIEditStream ;
typedef  int HRESULT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IAVIEditStream ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int) ; 

__attribute__((used)) static void FUNC9(void)
{
    IAVIEditStream *edit;
    IAVIStream *stream;
    IUnknown *unk;
    ULONG refcount;
    HRESULT hr;

    /* Same refcount for all AVIEditStream interfaces */
    hr = FUNC0(&stream, NULL);
    FUNC8(hr == S_OK, "AVIEditStream create failed: %08x, expected S_OK\n", hr);
    refcount = FUNC4(stream);
    FUNC8(refcount == 2, "refcount == %u, expected 2\n", refcount);

    hr = FUNC5(stream, &IID_IAVIEditStream, (void**)&edit);
    FUNC8(hr == S_OK, "QueryInterface for IID_IAVIEditStream failed: %08x\n", hr);
    refcount = FUNC1(edit);
    FUNC8(refcount == 4, "refcount == %u, expected 4\n", refcount);
    refcount = FUNC3(edit);

    hr = FUNC2(edit, &IID_IUnknown, (void**)&unk);
    FUNC8(hr == S_OK, "QueryInterface for IID_IUnknown failed: %08x\n", hr);
    refcount = FUNC6(unk);
    FUNC8(refcount == 5, "refcount == %u, expected 5\n", refcount);
    FUNC7(unk);

    while (FUNC3(edit));
}