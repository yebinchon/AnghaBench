
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ root; } ;


 scalar_t__ strbuf_node_cleanup (scalar_t__) ;

void strbuf_complete(struct strbuf *str) {
        if (!str)
                return;
        if (str->root)
                str->root = strbuf_node_cleanup(str->root);
}
