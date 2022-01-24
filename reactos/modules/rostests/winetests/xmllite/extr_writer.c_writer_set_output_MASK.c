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
typedef  int /*<<< orphan*/  IXmlWriter ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__) ; 

__attribute__((used)) static IStream *FUNC3(IXmlWriter *writer)
{
    IStream *stream;
    HRESULT hr;

    hr = FUNC0(NULL, TRUE, &stream);
    FUNC2(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC1(writer, (IUnknown*)stream);
    FUNC2(hr == S_OK, "got 0x%08x\n", hr);

    return stream;
}