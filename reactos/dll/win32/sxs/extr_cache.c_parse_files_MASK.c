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
struct file {int /*<<< orphan*/  entry; int /*<<< orphan*/  name; } ;
struct assembly {int /*<<< orphan*/  files; } ;
typedef  float WCHAR ;
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
 struct file* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC10 (float const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,float const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC17( IXMLDOMDocument *doc, struct assembly *assembly )
{
    static const WCHAR fileW[] = {'f','i','l','e',0};
    static const WCHAR nameW[] = {'n','a','m','e',0};
    IXMLDOMNamedNodeMap *attrs;
    IXMLDOMNodeList *list;
    IXMLDOMNode *node;
    struct file *f;
    BSTR str;
    HRESULT hr;
    LONG len;

    str = FUNC10( fileW );
    hr = FUNC3( doc, str, &list );
    FUNC11( str );
    if (hr != S_OK) return hr;

    hr = FUNC6( list, &len );
    if (hr != S_OK) goto done;
    FUNC12("found %d files\n", len);
    if (!len)
    {
        hr = ERROR_SXS_MANIFEST_FORMAT_ERROR;
        goto done;
    }

    for (;;)
    {
        hr = FUNC7( list, &node );
        if (hr != S_OK || !node)
        {
            hr = S_OK;
            break;
        }

        /* FIXME: validate node type */

        hr = FUNC9( node, &attrs );
        FUNC8( node );
        if (hr != S_OK)
            goto done;

        if (!(f = FUNC1( FUNC0(), 0, sizeof(struct file) )))
        {
            FUNC4( attrs );
            hr = E_OUTOFMEMORY;
            goto done;
        }

        f->name = FUNC14( attrs, nameW );
        FUNC4( attrs );
        if (!f->name)
        {
            FUNC2( FUNC0(), 0, f );
            hr = ERROR_SXS_MANIFEST_FORMAT_ERROR;
            goto done;
        }
        FUNC15( &assembly->files, &f->entry );
    }

    if (FUNC16( &assembly->files ))
    {
        FUNC13("no files found\n");
        hr = ERROR_SXS_MANIFEST_FORMAT_ERROR;
    }

done:
    FUNC5( list );
    return hr;
}