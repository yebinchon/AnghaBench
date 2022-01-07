
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HashmapBase ;


 int HASHMAP_BASE (int *) ;
 int internal_hashmap_first_key_and_value (int ,int,void**) ;

__attribute__((used)) static inline void *internal_hashmap_first_key(HashmapBase *h, bool remove) {
        void *key = ((void*)0);

        (void) internal_hashmap_first_key_and_value(HASHMAP_BASE(h), remove, &key);
        return key;
}
