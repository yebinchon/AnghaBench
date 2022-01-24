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
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ XmlNodeType ;
typedef  int WCHAR ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  IXmlReader ;
typedef  int HRESULT ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IXmlReader ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int S_FALSE ; 
 int S_OK ; 
 scalar_t__ XmlNodeType_Comment ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int*,char*) ; 
 int FUNC12 (int*) ; 

__attribute__((used)) static void FUNC13(void)
{
    IXmlReader *reader;
    XmlNodeType type;
    WCHAR buf[64];
    WCHAR b;
    HRESULT hr;
    UINT c;

    hr = FUNC1(&IID_IXmlReader, (void**)&reader, NULL);
    FUNC6(hr == S_OK, "S_OK, got %08x\n", hr);

    FUNC10(reader, "<!-- comment1 --><!-- comment2 -->");

    hr = FUNC2(reader, &type);
    FUNC6(hr == S_OK, "got %08x\n", hr);
    FUNC6(type == XmlNodeType_Comment, "type = %u\n", type);

    FUNC8(reader, ' ');
    FUNC8(reader, 'c');

    /* portion read as chunk is skipped from resulting node value */
    FUNC9(reader, "omment1 ");

    /* once value is returned/allocated it's not possible to read by chunk */
    c = 0;
    b = 0;
    hr = FUNC3(reader, &b, 1, &c);
    FUNC6(hr == S_FALSE, "got %08x\n", hr);
    FUNC6(c == 0, "got %u\n", c);
    FUNC6(b == 0, "got %x\n", b);

    c = 0xdeadbeef;
    hr = FUNC3(reader, buf, 0, &c);
    FUNC6(hr == S_OK, "got %08x\n", hr);
    FUNC6(!c, "c = %u\n", c);

    FUNC9(reader, "omment1 ");

    /* read comment2 */
    FUNC7(reader, XmlNodeType_Comment);

    c = 0xdeadbeef;
    hr = FUNC3(reader, buf, 0, &c);
    FUNC6(hr == S_OK, "got %08x\n", hr);
    FUNC6(!c, "c = %u\n", c);

    c = 0xdeadbeef;
    FUNC5(buf, 0xcc, sizeof(buf));
    hr = FUNC3(reader, buf, FUNC0(buf), &c);
    FUNC6(hr == S_OK, "got %08x\n", hr);
    FUNC6(c == 10, "got %u\n", c);
    FUNC6(buf[c] == 0xcccc, "buffer overflow\n");
    buf[c] = 0;
    FUNC6(!FUNC11(buf, " comment2 "), "buf = %s\n", FUNC12(buf));

    c = 0xdeadbeef;
    FUNC5(buf, 0xcc, sizeof(buf));
    hr = FUNC3(reader, buf, FUNC0(buf), &c);
    FUNC6(hr == S_FALSE, "got %08x\n", hr);
    FUNC6(!c, "got %u\n", c);

    /* portion read as chunk is skipped from resulting node value */
    FUNC9(reader, "");

    /* once value is returned/allocated it's not possible to read by chunk */
    c = 0xdeadbeef;
    b = 0xffff;
    hr = FUNC3(reader, &b, 1, &c);
    FUNC6(hr == S_FALSE, "got %08x\n", hr);
    FUNC6(c == 0, "got %u\n", c);
    FUNC6(b == 0xffff, "got %x\n", b);

    FUNC9(reader, "");

    FUNC4(reader);
}