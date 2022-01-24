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
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HGLOBAL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  GHND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (void*,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static IStream *FUNC6(const void *data, unsigned int size)
{
    IStream *stream = NULL;
    HGLOBAL hglobal;
    void *ptr;
    HRESULT hr;

    hglobal = FUNC1(GHND, size);
    ptr = FUNC2(hglobal);

    FUNC4(ptr, data, size);

    hr = FUNC0(hglobal, TRUE, &stream);
    FUNC5(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    FUNC5(stream != NULL, "Expected non-NULL stream\n");

    FUNC3(hglobal);

    return stream;
}