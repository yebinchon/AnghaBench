
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; int off; int node; } ;
typedef TYPE_1__ rangepoint_t ;
typedef int nsIDOMNode ;
typedef int nsAString ;
typedef char WCHAR ;
typedef char PRUnichar ;




 int brW ;
 int free_rangepoint (TYPE_1__*) ;
 int * get_child_node (int ,int) ;
 int get_text_node_data (int ,int *,char const**) ;
 int hrW ;
 int init_rangepoint (TYPE_1__*,int ,int) ;
 int is_elem_tag (int *,int ) ;
 int isspaceW (char const) ;
 int nsAString_Finish (int *) ;
 int nsIDOMNode_Release (int *) ;
 scalar_t__ rangepoint_next_node (TYPE_1__*) ;

__attribute__((used)) static WCHAR move_next_char(rangepoint_t *iter)
{
    rangepoint_t last_space;
    nsIDOMNode *node;
    WCHAR cspace = 0;
    const WCHAR *p;

    do {
        switch(iter->type) {
        case 128: {
            const PRUnichar *str;
            nsAString nsstr;
            WCHAR c;

            get_text_node_data(iter->node, &nsstr, &str);
            p = str+iter->off;
            if(!*p) {
                nsAString_Finish(&nsstr);
                break;
            }

            c = *p;
            if(isspaceW(c)) {
                while(isspaceW(*p))
                    p++;

                if(cspace)
                    free_rangepoint(&last_space);
                else
                    cspace = ' ';

                iter->off = p-str;
                c = *p;
                nsAString_Finish(&nsstr);
                if(!c) {
                    init_rangepoint(&last_space, iter->node, iter->off);
                    break;
                }

                return cspace;
            }else {
                nsAString_Finish(&nsstr);
            }


            if(cspace) {
                free_rangepoint(iter);
                *iter = last_space;
                return cspace;
            }

            iter->off++;
            return c;
        }
        case 129:
            node = get_child_node(iter->node, iter->off);
            if(!node)
                break;

            if(is_elem_tag(node, brW)) {
                if(cspace) {
                    nsIDOMNode_Release(node);
                    free_rangepoint(iter);
                    *iter = last_space;
                    return cspace;
                }

                cspace = '\n';
                init_rangepoint(&last_space, iter->node, iter->off+1);
            }else if(is_elem_tag(node, hrW)) {
                nsIDOMNode_Release(node);
                if(cspace) {
                    free_rangepoint(iter);
                    *iter = last_space;
                    return cspace;
                }

                iter->off++;
                return '\n';
            }

            nsIDOMNode_Release(node);
        }
    }while(rangepoint_next_node(iter));

    return cspace;
}
