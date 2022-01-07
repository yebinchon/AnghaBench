
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_ops {int dummy; } ;
typedef int OrderedSet ;


 scalar_t__ ordered_hashmap_new (struct hash_ops const*) ;

__attribute__((used)) static inline OrderedSet* ordered_set_new(const struct hash_ops *ops) {
        return (OrderedSet*) ordered_hashmap_new(ops);
}
