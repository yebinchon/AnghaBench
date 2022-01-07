
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {TYPE_1__* manager; } ;
struct TYPE_14__ {scalar_t__ devnode; } ;
struct TYPE_13__ {int * swaps_by_devnode; } ;
typedef TYPE_2__ Swap ;
typedef int Hashmap ;


 int ENOMEM ;
 int LIST_PREPEND (int ,TYPE_2__*,TYPE_2__*) ;
 int LIST_REMOVE (int ,TYPE_2__*,TYPE_2__*) ;
 TYPE_7__* UNIT (TYPE_2__*) ;
 int assert (TYPE_2__*) ;
 int hashmap_ensure_allocated (int **,int *) ;
 TYPE_2__* hashmap_get (int *,scalar_t__) ;
 int hashmap_remove (int *,scalar_t__) ;
 int hashmap_replace (int *,scalar_t__,TYPE_2__*) ;
 scalar_t__ mfree (scalar_t__) ;
 int path_hash_ops ;
 int same_devnode ;
 scalar_t__ strdup (char const*) ;

__attribute__((used)) static int swap_set_devnode(Swap *s, const char *devnode) {
        Hashmap *swaps;
        Swap *first;
        int r;

        assert(s);

        r = hashmap_ensure_allocated(&UNIT(s)->manager->swaps_by_devnode, &path_hash_ops);
        if (r < 0)
                return r;

        swaps = UNIT(s)->manager->swaps_by_devnode;

        if (s->devnode) {
                first = hashmap_get(swaps, s->devnode);

                LIST_REMOVE(same_devnode, first, s);
                if (first)
                        hashmap_replace(swaps, first->devnode, first);
                else
                        hashmap_remove(swaps, s->devnode);

                s->devnode = mfree(s->devnode);
        }

        if (devnode) {
                s->devnode = strdup(devnode);
                if (!s->devnode)
                        return -ENOMEM;

                first = hashmap_get(swaps, s->devnode);
                LIST_PREPEND(same_devnode, first, s);

                return hashmap_replace(swaps, first->devnode, first);
        }

        return 0;
}
