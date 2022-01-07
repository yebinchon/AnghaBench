
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct node {struct node* parent; struct node* path; scalar_t__ child; scalar_t__ object_managers; scalar_t__ enumerators; scalar_t__ vtables; scalar_t__ callbacks; } ;
struct TYPE_4__ {int nodes; } ;
typedef TYPE_1__ sd_bus ;


 int LIST_REMOVE (int ,scalar_t__,struct node*) ;
 int assert (TYPE_1__*) ;
 int assert_se (int) ;
 int free (struct node*) ;
 struct node* hashmap_remove (int ,struct node*) ;
 int siblings ;

void bus_node_gc(sd_bus *b, struct node *n) {
        assert(b);

        if (!n)
                return;

        if (n->child ||
            n->callbacks ||
            n->vtables ||
            n->enumerators ||
            n->object_managers)
                return;

        assert_se(hashmap_remove(b->nodes, n->path) == n);

        if (n->parent)
                LIST_REMOVE(siblings, n->parent->child, n);

        free(n->path);
        bus_node_gc(b, n->parent);
        free(n);
}
