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
typedef  scalar_t__ LONG_PTR ;
typedef  int /*<<< orphan*/  IXmlWriter ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 
 scalar_t__ E_NOINTERFACE ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  IID_IStream ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  IID_IXmlWriter ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 scalar_t__ TRUE ; 
 scalar_t__ XmlConformanceLevel_Auto ; 
 scalar_t__ XmlConformanceLevel_Document ; 
 int /*<<< orphan*/  XmlWriterProperty_ByteOrderMark ; 
 int /*<<< orphan*/  XmlWriterProperty_ConformanceLevel ; 
 int /*<<< orphan*/  XmlWriterProperty_Indent ; 
 int /*<<< orphan*/  XmlWriterProperty_OmitXmlDeclaration ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static void FUNC6(void)
{
    HRESULT hr;
    IXmlWriter *writer;
    LONG_PTR value;
    IUnknown *unk;

    /* crashes native */
    if (0)
    {
        FUNC0(&IID_IXmlWriter, NULL, NULL);
        FUNC0(NULL, (void**)&writer, NULL);
    }

    hr = FUNC0(&IID_IStream, (void **)&unk, NULL);
    FUNC5(hr == E_NOINTERFACE, "got %08x\n", hr);

    hr = FUNC0(&IID_IUnknown, (void **)&unk, NULL);
    FUNC5(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    hr = FUNC1(unk, &IID_IXmlWriter, (void **)&writer);
    FUNC5(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    FUNC5(unk == (IUnknown *)writer, "unexpected interface pointer\n");
    FUNC2(unk);
    FUNC4(writer);

    hr = FUNC0(&IID_IXmlWriter, (void**)&writer, NULL);
    FUNC5(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    /* check default properties values */
    value = 0;
    hr = FUNC3(writer, XmlWriterProperty_ByteOrderMark, &value);
    FUNC5(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    FUNC5(value == TRUE, "got %ld\n", value);

    value = TRUE;
    hr = FUNC3(writer, XmlWriterProperty_Indent, &value);
    FUNC5(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    FUNC5(value == FALSE, "got %ld\n", value);

    value = TRUE;
    hr = FUNC3(writer, XmlWriterProperty_OmitXmlDeclaration, &value);
    FUNC5(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    FUNC5(value == FALSE, "got %ld\n", value);

    value = XmlConformanceLevel_Auto;
    hr = FUNC3(writer, XmlWriterProperty_ConformanceLevel, &value);
    FUNC5(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    FUNC5(value == XmlConformanceLevel_Document, "got %ld\n", value);

    FUNC4(writer);
}