
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HashmapBase ;


 int n_entries (int *) ;

unsigned internal_hashmap_size(HashmapBase *h) {
        if (!h)
                return 0;

        return n_entries(h);
}
