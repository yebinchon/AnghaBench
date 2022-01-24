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
typedef  scalar_t__ VARIANT_BOOL ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  IXMLDOMNodeList ;
typedef  void IXMLDOMNode ;
typedef  int /*<<< orphan*/  IXMLDOMNamedNodeMap ;
typedef  int /*<<< orphan*/  IXMLDOMElement ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int E_INVALIDARG ; 
 int /*<<< orphan*/  IID_IXMLDOMDocument ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int FUNC8 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,void**) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int FUNC12 (void*,int /*<<< orphan*/ **) ; 
 int S_FALSE ; 
 int S_OK ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ VARIANT_TRUE ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  complete4A ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int,char*,...) ; 
 int /*<<< orphan*/  szvr ; 

__attribute__((used)) static void FUNC19(void)
{
    IXMLDOMDocument *doc;
    IXMLDOMElement *element;
    IXMLDOMNode *pr_node, *removed_node, *removed_node2;
    IXMLDOMNodeList *root_list;
    IXMLDOMNamedNodeMap * pr_attrs;
    VARIANT_BOOL b;
    BSTR str;
    LONG len;
    HRESULT r;

    doc = FUNC16(&IID_IXMLDOMDocument);

    r = FUNC2( doc, FUNC15(complete4A), &b );
    FUNC18( r == S_OK, "loadXML failed\n");
    FUNC18( b == VARIANT_TRUE, "failed to load XML string\n");

    r = FUNC1( doc, &element );
    FUNC18( r == S_OK, "ret %08x\n", r);

    r = FUNC4( element, &root_list );
    FUNC18( r == S_OK, "ret %08x\n", r);

    r = FUNC10( root_list, 1, &pr_node );
    FUNC18( r == S_OK, "ret %08x\n", r);

    r = FUNC12( pr_node, &pr_attrs );
    FUNC18( r == S_OK, "ret %08x\n", r);

    r = FUNC6( pr_attrs, &len );
    FUNC18( r == S_OK, "ret %08x\n", r);
    FUNC18( len == 3, "length %d\n", len);

    removed_node = (void*)0xdeadbeef;
    r = FUNC7( pr_attrs, NULL, &removed_node);
    FUNC18 ( r == E_INVALIDARG, "ret %08x\n", r);
    FUNC18 ( removed_node == (void*)0xdeadbeef, "got %p\n", removed_node);

    removed_node = (void*)0xdeadbeef;
    str = FUNC13(szvr);
    r = FUNC7( pr_attrs, str, &removed_node);
    FUNC18 ( r == S_OK, "ret %08x\n", r);

    removed_node2 = (void*)0xdeadbeef;
    r = FUNC7( pr_attrs, str, &removed_node2);
    FUNC18 ( r == S_FALSE, "ret %08x\n", r);
    FUNC18 ( removed_node2 == NULL, "got %p\n", removed_node2 );

    r = FUNC6( pr_attrs, &len );
    FUNC18( r == S_OK, "ret %08x\n", r);
    FUNC18( len == 2, "length %d\n", len);

    r = FUNC8( pr_attrs, removed_node, NULL);
    FUNC18 ( r == S_OK, "ret %08x\n", r);
    FUNC11(removed_node);

    r = FUNC6( pr_attrs, &len );
    FUNC18( r == S_OK, "ret %08x\n", r);
    FUNC18( len == 3, "length %d\n", len);

    r = FUNC7( pr_attrs, str, NULL);
    FUNC18 ( r == S_OK, "ret %08x\n", r);

    r = FUNC6( pr_attrs, &len );
    FUNC18( r == S_OK, "ret %08x\n", r);
    FUNC18( len == 2, "length %d\n", len);

    r = FUNC7( pr_attrs, str, NULL);
    FUNC18 ( r == S_FALSE, "ret %08x\n", r);

    FUNC14(str);

    FUNC5( pr_attrs );
    FUNC11( pr_node );
    FUNC9( root_list );
    FUNC3( element );
    FUNC0( doc );

    FUNC17();
}