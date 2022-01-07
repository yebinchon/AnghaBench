
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int nsISelection ;
typedef int nsIDOMRange ;
typedef int nsIDOMNode ;
typedef int nsIDOMHTMLElement ;
typedef int nsIDOMElement ;
typedef int nsAString ;
typedef scalar_t__ cpp_bool ;
struct TYPE_7__ {int nsdoc; } ;
struct TYPE_6__ {TYPE_5__* doc_node; } ;
typedef int LPCWSTR ;
typedef int LONG ;
typedef TYPE_1__ HTMLDocument ;


 int FIXME (char*,int) ;
 int VARIANT_TRUE ;
 int WARN (char*) ;
 int create_nselem (TYPE_5__*,int ,int **) ;
 int fontW ;
 int * get_ns_selection (TYPE_1__*) ;
 int nsAString_Finish (int *) ;
 int nsAString_InitDepend (int *,int ) ;
 int nsIDOMHTMLElement_Release (int *) ;
 int nsIDOMHTMLElement_SetAttribute (int *,int *,int *) ;
 int nsIDOMRange_Release (int *) ;
 int nsIDOMRange_SurroundContents (int *,int *) ;
 int nsISelection_Collapse (int *,int *,int ) ;
 int nsISelection_GetIsCollapsed (int *,scalar_t__*) ;
 int nsISelection_GetRangeAt (int *,int ,int **) ;
 int nsISelection_GetRangeCount (int *,int*) ;
 int nsISelection_Release (int *) ;
 int nsISelection_RemoveAllRanges (int *) ;
 int nsISelection_SelectAllChildren (int *,int *) ;
 int remove_child_attr (int *,int ,int *) ;
 int set_dirty (TYPE_1__*,int ) ;
 int sizeW ;

__attribute__((used)) static void set_font_size(HTMLDocument *This, LPCWSTR size)
{
    nsISelection *nsselection;
    cpp_bool collapsed;
    nsIDOMHTMLElement *elem;
    nsIDOMRange *range;
    LONG range_cnt = 0;
    nsAString size_str;
    nsAString val_str;

    if(!This->doc_node->nsdoc) {
        WARN("NULL nsdoc\n");
        return;
    }

    nsselection = get_ns_selection(This);
    if(!nsselection)
        return;

    nsISelection_GetRangeCount(nsselection, &range_cnt);
    if(range_cnt != 1) {
        FIXME("range_cnt %d not supprted\n", range_cnt);
        if(!range_cnt) {
            nsISelection_Release(nsselection);
            return;
        }
    }

    create_nselem(This->doc_node, fontW, &elem);

    nsAString_InitDepend(&size_str, sizeW);
    nsAString_InitDepend(&val_str, size);

    nsIDOMHTMLElement_SetAttribute(elem, &size_str, &val_str);
    nsAString_Finish(&val_str);

    nsISelection_GetRangeAt(nsselection, 0, &range);
    nsISelection_GetIsCollapsed(nsselection, &collapsed);
    nsISelection_RemoveAllRanges(nsselection);

    nsIDOMRange_SurroundContents(range, (nsIDOMNode*)elem);

    if(collapsed) {
        nsISelection_Collapse(nsselection, (nsIDOMNode*)elem, 0);
    }else {

        remove_child_attr((nsIDOMElement*)elem, fontW, &size_str);
        nsISelection_SelectAllChildren(nsselection, (nsIDOMNode*)elem);
    }

    nsISelection_Release(nsselection);
    nsIDOMRange_Release(range);
    nsIDOMHTMLElement_Release(elem);

    nsAString_Finish(&size_str);

    set_dirty(This, VARIANT_TRUE);
}
