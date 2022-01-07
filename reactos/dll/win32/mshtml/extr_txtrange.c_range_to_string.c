
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int len; scalar_t__* buf; scalar_t__ size; } ;
typedef TYPE_1__ wstrbuf_t ;
struct TYPE_18__ {scalar_t__ type; int off; int node; } ;
typedef TYPE_2__ rangepoint_t ;
typedef int nsIDOMNode ;
typedef int nsAString ;
typedef scalar_t__ cpp_bool ;
typedef scalar_t__ WCHAR ;
struct TYPE_19__ {int nsrange; } ;
typedef int PRUnichar ;
typedef TYPE_3__ HTMLTxtRange ;


 int ERR (char*) ;
 scalar_t__ TEXT_NODE ;
 int TRUE ;
 int free_rangepoint (TYPE_2__*) ;
 int * get_child_node (int ,int) ;
 int get_end_point (TYPE_3__*,TYPE_2__*) ;
 int get_start_point (TYPE_3__*,TYPE_2__*) ;
 int get_text_node_data (int ,int *,int const**) ;
 scalar_t__ isspaceW (scalar_t__) ;
 int nsAString_Finish (int *) ;
 int nsIDOMNode_Release (int *) ;
 int nsIDOMRange_GetCollapsed (int ,scalar_t__*) ;
 int rangepoint_cmp (TYPE_2__*,TYPE_2__*) ;
 int rangepoint_next_node (TYPE_2__*) ;
 scalar_t__* strchrW (scalar_t__*,char) ;
 int strlenW (int const*) ;
 int wstrbuf_append_node (TYPE_1__*,int *,int ) ;
 int wstrbuf_append_nodetxt (TYPE_1__*,int const*,int) ;
 int wstrbuf_finish (TYPE_1__*) ;

__attribute__((used)) static void range_to_string(HTMLTxtRange *This, wstrbuf_t *buf)
{
    rangepoint_t end_pos, iter;
    cpp_bool collapsed;

    nsIDOMRange_GetCollapsed(This->nsrange, &collapsed);
    if(collapsed) {
        wstrbuf_finish(buf);
        buf->buf = ((void*)0);
        buf->size = 0;
        return;
    }

    get_end_point(This, &end_pos);
    get_start_point(This, &iter);

    do {
        if(iter.type == TEXT_NODE) {
            const PRUnichar *str;
            nsAString nsstr;

            get_text_node_data(iter.node, &nsstr, &str);

            if(iter.node == end_pos.node) {
                wstrbuf_append_nodetxt(buf, str+iter.off, end_pos.off-iter.off);
                nsAString_Finish(&nsstr);
                break;
            }

            wstrbuf_append_nodetxt(buf, str+iter.off, strlenW(str+iter.off));
            nsAString_Finish(&nsstr);
        }else {
            nsIDOMNode *node;

            node = get_child_node(iter.node, iter.off);
            if(node) {
                wstrbuf_append_node(buf, node, TRUE);
                nsIDOMNode_Release(node);
            }
        }

        if(!rangepoint_next_node(&iter)) {
            ERR("End of document?\n");
            break;
        }
    }while(!rangepoint_cmp(&iter, &end_pos));

    free_rangepoint(&iter);
    free_rangepoint(&end_pos);

    if(buf->len) {
        WCHAR *p;

        for(p = buf->buf+buf->len-1; p >= buf->buf && isspaceW(*p); p--);

        p = strchrW(p, '\r');
        if(p)
            *p = 0;
    }
}
