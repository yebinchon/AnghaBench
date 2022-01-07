
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IXMLDOMNode ;
typedef scalar_t__ HRESULT ;
typedef int DOMNodeType ;
typedef int BSTR ;


 int IXMLDOMNode_AddRef (int *) ;
 int IXMLDOMNode_Release (int *) ;
 int IXMLDOMNode_get_nodeName (int *,int *) ;
 int IXMLDOMNode_get_nodeType (int *,int *) ;
 scalar_t__ IXMLDOMNode_get_parentNode (int *,int **) ;
 scalar_t__ IXMLDOMNode_selectSingleNode (int *,int ,int **) ;
 int NODE_ATTRIBUTE ;
 int SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int _bstr_ (char*) ;
 int get_node_position (int *) ;
 int get_str_for_type (int ,char*) ;
 int lstrcpyA (char*,char*) ;
 int ok (int ,char*,scalar_t__) ;
 int ole_check (int ) ;
 int sprintf (char*,char*,int) ;
 int strlen (char*) ;
 int wsprintfA (char*,char*,int ) ;

__attribute__((used)) static void node_to_string(IXMLDOMNode *node, char *buf)
{
    HRESULT r = S_OK;
    DOMNodeType type;

    if (node == ((void*)0))
    {
        lstrcpyA(buf, "(null)");
        return;
    }

    IXMLDOMNode_AddRef(node);
    while (r == S_OK)
    {
        IXMLDOMNode *new_node;

        ole_check(IXMLDOMNode_get_nodeType(node, &type));
        get_str_for_type(type, buf);
        buf+=strlen(buf);

        if (type == NODE_ATTRIBUTE)
        {
            BSTR bstr;
            ole_check(IXMLDOMNode_get_nodeName(node, &bstr));
            *(buf++) = '\'';
            wsprintfA(buf, "%ws", bstr);
            buf += strlen(buf);
            *(buf++) = '\'';
            SysFreeString(bstr);

            r = IXMLDOMNode_selectSingleNode(node, _bstr_(".."), &new_node);
        }
        else
        {
            r = IXMLDOMNode_get_parentNode(node, &new_node);
            sprintf(buf, "%d", get_node_position(node));
            buf += strlen(buf);
        }

        ok(SUCCEEDED(r), "get_parentNode failed (%08x)\n", r);
        IXMLDOMNode_Release(node);
        node = new_node;
        if (r == S_OK)
            *(buf++) = '.';
    }

    *buf = 0;
}
