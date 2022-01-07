
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int free_func_t ;
typedef int HashmapBase ;


 int hashmap_free_no_clear (int *) ;
 int internal_hashmap_clear (int *,int ,int ) ;

HashmapBase *internal_hashmap_free(HashmapBase *h, free_func_t default_free_key, free_func_t default_free_value) {
        if (h) {
                internal_hashmap_clear(h, default_free_key, default_free_value);
                hashmap_free_no_clear(h);
        }

        return ((void*)0);
}
