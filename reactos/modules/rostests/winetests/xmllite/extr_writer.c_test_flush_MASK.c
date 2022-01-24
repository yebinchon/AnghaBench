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
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IXmlWriter ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  XmlStandalone_Yes ; 
 scalar_t__ g_write_len ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  teststream ; 

__attribute__((used)) static void FUNC6(void)
{
    IXmlWriter *writer;
    HRESULT hr;

    hr = FUNC0(&IID_IXmlWriter, (void**)&writer, NULL);
    FUNC5(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    hr = FUNC3(writer, (IUnknown*)&teststream);
    FUNC5(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC4(writer, XmlStandalone_Yes);
    FUNC5(hr == S_OK, "got 0x%08x\n", hr);

    g_write_len = 0;
    hr = FUNC1(writer);
    FUNC5(hr == S_OK, "got 0x%08x\n", hr);
    FUNC5(g_write_len > 0, "got %d\n", g_write_len);

    g_write_len = 1;
    hr = FUNC1(writer);
    FUNC5(hr == S_OK, "got 0x%08x\n", hr);
    FUNC5(g_write_len == 0, "got %d\n", g_write_len);

    /* Release() flushes too */
    g_write_len = 1;
    FUNC2(writer);
    FUNC5(g_write_len == 0, "got %d\n", g_write_len);
}