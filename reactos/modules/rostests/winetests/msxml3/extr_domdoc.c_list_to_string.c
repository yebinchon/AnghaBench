
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef int IXMLDOMNodeList ;
typedef int IXMLDOMNode ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IXMLDOMNodeList_get_length (int *,int*) ;
 int IXMLDOMNodeList_nextNode (int *,int **) ;
 int IXMLDOMNode_Release (int *) ;
 scalar_t__ S_OK ;
 int node_to_string (int *,char*) ;
 int ok (int,char*,scalar_t__) ;
 int ole_check (int ) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static char *list_to_string(IXMLDOMNodeList *list)
{
    static char buf[4096];
    char *pos = buf;
    LONG len = 0;
    HRESULT hr;
    int i;

    if (list == ((void*)0))
    {
        strcpy(buf, "(null)");
        return buf;
    }
    hr = IXMLDOMNodeList_get_length(list, &len);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    for (i = 0; i < len; i++)
    {
        IXMLDOMNode *node;
        if (i > 0)
            *(pos++) = ' ';
        ole_check(IXMLDOMNodeList_nextNode(list, &node));
        node_to_string(node, pos);
        pos += strlen(pos);
        IXMLDOMNode_Release(node);
    }
    *pos = 0;
    return buf;
}
