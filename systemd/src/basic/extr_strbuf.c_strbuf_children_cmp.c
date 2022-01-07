
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf_child_entry {int c; } ;



__attribute__((used)) static int strbuf_children_cmp(const struct strbuf_child_entry *n1,
                               const struct strbuf_child_entry *n2) {
        return n1->c - n2->c;
}
