
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct assembly {void* type; void* token; void* arch; void* version; void* name; int files; } ;
typedef char WCHAR ;
typedef int LONG ;
typedef int IXMLDOMNodeList ;
typedef int IXMLDOMNode ;
typedef int IXMLDOMNamedNodeMap ;
typedef int IXMLDOMDocument ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 scalar_t__ ERROR_SXS_MANIFEST_FORMAT_ERROR ;
 scalar_t__ E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 struct assembly* HeapAlloc (int ,int ,int) ;
 scalar_t__ IXMLDOMDocument_getElementsByTagName (int *,int ,int **) ;
 int IXMLDOMNamedNodeMap_Release (int *) ;
 int IXMLDOMNodeList_Release (int *) ;
 scalar_t__ IXMLDOMNodeList_get_length (int *,int *) ;
 scalar_t__ IXMLDOMNodeList_nextNode (int *,int **) ;
 int IXMLDOMNode_Release (int *) ;
 scalar_t__ IXMLDOMNode_get_attributes (int *,int **) ;
 scalar_t__ S_OK ;
 int SysAllocString (char const*) ;
 int SysFreeString (int ) ;
 int WARN (char*) ;
 int free_assembly (struct assembly*) ;
 void* get_attribute_value (int *,char const*) ;
 int list_init (int *) ;
 scalar_t__ parse_files (int *,struct assembly*) ;
 scalar_t__ strcmpW (void*,int ) ;
 int win32W ;
 int win32_policyW ;

__attribute__((used)) static HRESULT parse_assembly( IXMLDOMDocument *doc, struct assembly **assembly )
{
    static const WCHAR identityW[] = {'a','s','s','e','m','b','l','y','I','d','e','n','t','i','t','y',0};
    static const WCHAR typeW[] = {'t','y','p','e',0};
    static const WCHAR nameW[] = {'n','a','m','e',0};
    static const WCHAR versionW[] = {'v','e','r','s','i','o','n',0};
    static const WCHAR architectureW[] = {'p','r','o','c','e','s','s','o','r','A','r','c','h','i','t','e','c','t','u','r','e',0};
    static const WCHAR tokenW[] = {'p','u','b','l','i','c','K','e','y','T','o','k','e','n',0};
    IXMLDOMNodeList *list = ((void*)0);
    IXMLDOMNode *node = ((void*)0);
    IXMLDOMNamedNodeMap *attrs = ((void*)0);
    struct assembly *a = ((void*)0);
    BSTR str;
    HRESULT hr;
    LONG len;

    str = SysAllocString( identityW );
    hr = IXMLDOMDocument_getElementsByTagName( doc, str, &list );
    SysFreeString( str );
    if (hr != S_OK) goto done;

    hr = IXMLDOMNodeList_get_length( list, &len );
    if (hr != S_OK) goto done;
    if (!len)
    {
        hr = ERROR_SXS_MANIFEST_FORMAT_ERROR;
        goto done;
    }
    hr = IXMLDOMNodeList_nextNode( list, &node );
    if (hr != S_OK) goto done;
    if (!node)
    {
        hr = ERROR_SXS_MANIFEST_FORMAT_ERROR;
        goto done;
    }
    if (!(a = HeapAlloc( GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(struct assembly) )))
    {
        hr = E_OUTOFMEMORY;
        goto done;
    }
    list_init( &a->files );

    hr = IXMLDOMNode_get_attributes( node, &attrs );
    if (hr != S_OK) goto done;

    a->type = get_attribute_value( attrs, typeW );
    a->name = get_attribute_value( attrs, nameW );
    a->version = get_attribute_value( attrs, versionW );
    a->arch = get_attribute_value( attrs, architectureW );
    a->token = get_attribute_value( attrs, tokenW );

    if (!a->type || (strcmpW( a->type, win32W ) && strcmpW( a->type, win32_policyW )) ||
        !a->name || !a->version || !a->arch || !a->token)
    {
        WARN("invalid win32 assembly\n");
        hr = ERROR_SXS_MANIFEST_FORMAT_ERROR;
        goto done;
    }
    if (!strcmpW( a->type, win32W )) hr = parse_files( doc, a );

done:
    if (attrs) IXMLDOMNamedNodeMap_Release( attrs );
    if (node) IXMLDOMNode_Release( node );
    if (list) IXMLDOMNodeList_Release( list );
    if (hr == S_OK) *assembly = a;
    else free_assembly( a );
    return hr;
}
