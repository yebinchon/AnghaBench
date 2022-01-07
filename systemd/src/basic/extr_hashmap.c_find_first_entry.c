
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Iterator ;
typedef int HashmapBase ;


 int IDX_NIL ;
 int ITERATOR_FIRST ;
 int hashmap_iterate_entry (int *,int *) ;
 int n_entries (int *) ;

__attribute__((used)) static unsigned find_first_entry(HashmapBase *h) {
        Iterator i = ITERATOR_FIRST;

        if (!h || !n_entries(h))
                return IDX_NIL;

        return hashmap_iterate_entry(h, &i);
}
