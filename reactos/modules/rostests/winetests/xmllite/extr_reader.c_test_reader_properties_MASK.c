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
typedef  int LONG_PTR ;
typedef  int /*<<< orphan*/  IXmlReader ;
typedef  int HRESULT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IXmlReader ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int S_OK ; 
 int /*<<< orphan*/  XmlReaderProperty_MaxElementDepth ; 
 int /*<<< orphan*/  XmlReaderProperty_MultiLanguage ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 

__attribute__((used)) static void FUNC5(void)
{
    IXmlReader *reader;
    LONG_PTR value;
    HRESULT hr;

    hr = FUNC0(&IID_IXmlReader, (void**)&reader, NULL);
    FUNC4(hr == S_OK, "S_OK, got %08x\n", hr);

    value = 0;
    hr = FUNC1(reader, XmlReaderProperty_MaxElementDepth, &value);
    FUNC4(hr == S_OK, "GetProperty failed: %08x\n", hr);
    FUNC4(value == 256, "Unexpected default max depth value %ld\n", value);

    hr = FUNC3(reader, XmlReaderProperty_MultiLanguage, 0);
    FUNC4(hr == S_OK, "SetProperty failed: %08x\n", hr);

    hr = FUNC3(reader, XmlReaderProperty_MaxElementDepth, 0);
    FUNC4(hr == S_OK, "SetProperty failed: %08x\n", hr);

    value = 256;
    hr = FUNC1(reader, XmlReaderProperty_MaxElementDepth, &value);
    FUNC4(hr == S_OK, "GetProperty failed: %08x\n", hr);
    FUNC4(value == 0, "Unexpected max depth value %ld\n", value);

    FUNC2(reader);
}