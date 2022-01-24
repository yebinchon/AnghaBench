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
typedef  char WCHAR ;
typedef  scalar_t__ VARIANT_BOOL ;
typedef  int /*<<< orphan*/  IXMLDOMNode ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  IID_IXMLDOMDocument ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ VARIANT_TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  complete4A ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(void)
{
    static const WCHAR xmlW[] = {'x','m','l',0};
    IXMLDOMDocument *doc;
    IXMLDOMNode *node;
    VARIANT_BOOL b;
    HRESULT r;
    BSTR str;

    doc = FUNC7(&IID_IXMLDOMDocument);

    r = FUNC2( doc, FUNC6(complete4A), &b );
    FUNC10( r == S_OK, "loadXML failed\n");
    FUNC10( b == VARIANT_TRUE, "failed to load XML string\n");

    r = FUNC1( doc, &node );
    FUNC10( r == S_OK, "ret %08x\n", r);

    r = FUNC4( node, &str );
    FUNC10( r == S_OK, "ret %08x\n", r);

    FUNC10(!FUNC9(str, xmlW), "expected \"xml\" node name, got %s\n", FUNC11(str));

    FUNC5(str);
    FUNC3( node );
    FUNC0( doc );

    FUNC8();
}