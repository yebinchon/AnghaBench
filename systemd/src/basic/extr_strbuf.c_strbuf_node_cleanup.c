
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf_node {size_t children_count; TYPE_1__* children; } ;
struct TYPE_2__ {struct strbuf_node* child; } ;


 int free (TYPE_1__*) ;
 struct strbuf_node* mfree (struct strbuf_node*) ;

__attribute__((used)) static struct strbuf_node* strbuf_node_cleanup(struct strbuf_node *node) {
        size_t i;

        for (i = 0; i < node->children_count; i++)
                strbuf_node_cleanup(node->children[i].child);
        free(node->children);
        return mfree(node);
}
