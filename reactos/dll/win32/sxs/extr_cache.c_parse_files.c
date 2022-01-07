
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int entry; int name; } ;
struct assembly {int files; } ;
typedef float WCHAR ;
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
 struct file* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,struct file*) ;
 scalar_t__ IXMLDOMDocument_getElementsByTagName (int *,int ,int **) ;
 int IXMLDOMNamedNodeMap_Release (int *) ;
 int IXMLDOMNodeList_Release (int *) ;
 scalar_t__ IXMLDOMNodeList_get_length (int *,int *) ;
 scalar_t__ IXMLDOMNodeList_nextNode (int *,int **) ;
 int IXMLDOMNode_Release (int *) ;
 scalar_t__ IXMLDOMNode_get_attributes (int *,int **) ;
 scalar_t__ S_OK ;
 int SysAllocString (float const*) ;
 int SysFreeString (int ) ;
 int TRACE (char*,int ) ;
 int WARN (char*) ;
 int get_attribute_value (int *,float const*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static HRESULT parse_files( IXMLDOMDocument *doc, struct assembly *assembly )
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

    str = SysAllocString( fileW );
    hr = IXMLDOMDocument_getElementsByTagName( doc, str, &list );
    SysFreeString( str );
    if (hr != S_OK) return hr;

    hr = IXMLDOMNodeList_get_length( list, &len );
    if (hr != S_OK) goto done;
    TRACE("found %d files\n", len);
    if (!len)
    {
        hr = ERROR_SXS_MANIFEST_FORMAT_ERROR;
        goto done;
    }

    for (;;)
    {
        hr = IXMLDOMNodeList_nextNode( list, &node );
        if (hr != S_OK || !node)
        {
            hr = S_OK;
            break;
        }



        hr = IXMLDOMNode_get_attributes( node, &attrs );
        IXMLDOMNode_Release( node );
        if (hr != S_OK)
            goto done;

        if (!(f = HeapAlloc( GetProcessHeap(), 0, sizeof(struct file) )))
        {
            IXMLDOMNamedNodeMap_Release( attrs );
            hr = E_OUTOFMEMORY;
            goto done;
        }

        f->name = get_attribute_value( attrs, nameW );
        IXMLDOMNamedNodeMap_Release( attrs );
        if (!f->name)
        {
            HeapFree( GetProcessHeap(), 0, f );
            hr = ERROR_SXS_MANIFEST_FORMAT_ERROR;
            goto done;
        }
        list_add_tail( &assembly->files, &f->entry );
    }

    if (list_empty( &assembly->files ))
    {
        WARN("no files found\n");
        hr = ERROR_SXS_MANIFEST_FORMAT_ERROR;
    }

done:
    IXMLDOMNodeList_Release( list );
    return hr;
}
