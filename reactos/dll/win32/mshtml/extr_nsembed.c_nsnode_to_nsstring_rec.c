
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsresult ;
typedef int nsIDocument ;
typedef int nsIDOMNodeList ;
typedef int nsIDOMNode ;
typedef int nsIContentSerializer ;
typedef int nsIContent ;
typedef int nsAString ;
typedef scalar_t__ cpp_bool ;
typedef scalar_t__ UINT32 ;
typedef int UINT16 ;
typedef int HRESULT ;







 int ERR (char*,int ) ;
 int E_FAIL ;
 scalar_t__ FALSE ;
 int FIXME (char*,int) ;
 int IID_nsIContent ;
 int IID_nsIDocument ;
 scalar_t__ NS_FAILED (int ) ;
 scalar_t__ NS_SUCCEEDED (int ) ;
 int S_OK ;

 int nsIContentSerializer_AppendComment (int *,int *,int ,int,int *) ;
 int nsIContentSerializer_AppendDoctype (int *,int *,int *) ;
 int nsIContentSerializer_AppendDocumentStart (int *,int *,int *) ;
 int nsIContentSerializer_AppendElementEnd (int *,int *,int *) ;
 int nsIContentSerializer_AppendElementStart (int *,int *,int *,int *) ;
 int nsIContentSerializer_AppendText (int *,int *,int ,int,int *) ;
 int nsIContent_Release (int *) ;
 int nsIDOMNodeList_GetLength (int *,scalar_t__*) ;
 int nsIDOMNodeList_Item (int *,scalar_t__,int **) ;
 int nsIDOMNodeList_Release (int *) ;
 int nsIDOMNode_GetChildNodes (int *,int **) ;
 int nsIDOMNode_GetNodeType (int *,int*) ;
 int nsIDOMNode_HasChildNodes (int *,scalar_t__*) ;
 int nsIDOMNode_QueryInterface (int *,int *,void**) ;
 int nsIDOMNode_Release (int *) ;
 int nsIDocument_Release (int *) ;

__attribute__((used)) static HRESULT nsnode_to_nsstring_rec(nsIContentSerializer *serializer, nsIDOMNode *nsnode, nsAString *str)
{
    nsIDOMNodeList *node_list = ((void*)0);
    cpp_bool has_children = FALSE;
    nsIContent *nscontent;
    UINT16 type;
    nsresult nsres;

    nsIDOMNode_HasChildNodes(nsnode, &has_children);

    nsres = nsIDOMNode_GetNodeType(nsnode, &type);
    if(NS_FAILED(nsres)) {
        ERR("GetType failed: %08x\n", nsres);
        return E_FAIL;
    }

    if(type != 131) {
        nsres = nsIDOMNode_QueryInterface(nsnode, &IID_nsIContent, (void**)&nscontent);
        if(NS_FAILED(nsres)) {
            ERR("Could not get nsIContent interface: %08x\n", nsres);
            return E_FAIL;
        }
    }

    switch(type) {
    case 129:
        nsIContentSerializer_AppendElementStart(serializer, nscontent, nscontent, str);
        break;
    case 128:
        nsIContentSerializer_AppendText(serializer, nscontent, 0, -1, str);
        break;
    case 133:
        nsres = nsIContentSerializer_AppendComment(serializer, nscontent, 0, -1, str);
        break;
    case 131: {
        nsIDocument *nsdoc;
        nsIDOMNode_QueryInterface(nsnode, &IID_nsIDocument, (void**)&nsdoc);
        nsIContentSerializer_AppendDocumentStart(serializer, nsdoc, str);
        nsIDocument_Release(nsdoc);
        break;
    }
    case 130:
        nsIContentSerializer_AppendDoctype(serializer, nscontent, str);
        break;
    case 132:
        break;
    default:
        FIXME("Unhandled type %u\n", type);
    }

    if(has_children) {
        UINT32 child_cnt, i;
        nsIDOMNode *child_node;

        nsIDOMNode_GetChildNodes(nsnode, &node_list);
        nsIDOMNodeList_GetLength(node_list, &child_cnt);

        for(i=0; i<child_cnt; i++) {
            nsres = nsIDOMNodeList_Item(node_list, i, &child_node);
            if(NS_SUCCEEDED(nsres)) {
                nsnode_to_nsstring_rec(serializer, child_node, str);
                nsIDOMNode_Release(child_node);
            }else {
                ERR("Item failed: %08x\n", nsres);
            }
        }

        nsIDOMNodeList_Release(node_list);
    }

    if(type == 129)
        nsIContentSerializer_AppendElementEnd(serializer, nscontent, str);

    if(type != 131)
        nsIContent_Release(nscontent);
    return S_OK;
}
