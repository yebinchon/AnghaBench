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
struct assembly {void* type; void* token; void* arch; void* version; void* name; int /*<<< orphan*/  files; } ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  IXMLDOMNodeList ;
typedef  int /*<<< orphan*/  IXMLDOMNode ;
typedef  int /*<<< orphan*/  IXMLDOMNamedNodeMap ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ ERROR_SXS_MANIFEST_FORMAT_ERROR ; 
 scalar_t__ E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 struct assembly* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (struct assembly*) ; 
 void* FUNC13 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,struct assembly*) ; 
 scalar_t__ FUNC16 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  win32W ; 
 int /*<<< orphan*/  win32_policyW ; 

__attribute__((used)) static HRESULT FUNC17( IXMLDOMDocument *doc, struct assembly **assembly )
{
    static const WCHAR identityW[] = {'a','s','s','e','m','b','l','y','I','d','e','n','t','i','t','y',0};
    static const WCHAR typeW[] = {'t','y','p','e',0};
    static const WCHAR nameW[] = {'n','a','m','e',0};
    static const WCHAR versionW[] = {'v','e','r','s','i','o','n',0};
    static const WCHAR architectureW[] = {'p','r','o','c','e','s','s','o','r','A','r','c','h','i','t','e','c','t','u','r','e',0};
    static const WCHAR tokenW[] = {'p','u','b','l','i','c','K','e','y','T','o','k','e','n',0};
    IXMLDOMNodeList *list = NULL;
    IXMLDOMNode *node = NULL;
    IXMLDOMNamedNodeMap *attrs = NULL;
    struct assembly *a = NULL;
    BSTR str;
    HRESULT hr;
    LONG len;

    str = FUNC9( identityW );
    hr = FUNC2( doc, str, &list );
    FUNC10( str );
    if (hr != S_OK) goto done;

    hr = FUNC5( list, &len );
    if (hr != S_OK) goto done;
    if (!len)
    {
        hr = ERROR_SXS_MANIFEST_FORMAT_ERROR;
        goto done;
    }
    hr = FUNC6( list, &node );
    if (hr != S_OK) goto done;
    if (!node)
    {
        hr = ERROR_SXS_MANIFEST_FORMAT_ERROR;
        goto done;
    }
    if (!(a = FUNC1( FUNC0(), HEAP_ZERO_MEMORY, sizeof(struct assembly) )))
    {
        hr = E_OUTOFMEMORY;
        goto done;
    }
    FUNC14( &a->files );

    hr = FUNC8( node, &attrs );
    if (hr != S_OK) goto done;

    a->type    = FUNC13( attrs, typeW );
    a->name    = FUNC13( attrs, nameW );
    a->version = FUNC13( attrs, versionW );
    a->arch    = FUNC13( attrs, architectureW );
    a->token   = FUNC13( attrs, tokenW );

    if (!a->type || (FUNC16( a->type, win32W ) && FUNC16( a->type, win32_policyW )) ||
        !a->name || !a->version || !a->arch || !a->token)
    {
        FUNC11("invalid win32 assembly\n");
        hr = ERROR_SXS_MANIFEST_FORMAT_ERROR;
        goto done;
    }
    if (!FUNC16( a->type, win32W )) hr = FUNC15( doc, a );

done:
    if (attrs) FUNC3( attrs );
    if (node) FUNC7( node );
    if (list) FUNC4( list );
    if (hr == S_OK) *assembly = a;
    else FUNC12( a );
    return hr;
}