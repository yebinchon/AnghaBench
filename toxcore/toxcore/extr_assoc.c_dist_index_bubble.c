
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int (* Assoc_distance_relative_callback ) (int *,void*,int *,int *,int *) ;
typedef int Assoc ;


 int * dist_index_id (int *,int ) ;

__attribute__((used)) static void dist_index_bubble(Assoc *assoc, uint64_t *dist_list, size_t first, size_t last, uint8_t *id,
                              void *custom_data, Assoc_distance_relative_callback dist_rel_func)
{
    size_t i, k;

    for (i = first; i <= last; i++) {
        uint8_t *id1 = dist_index_id(assoc, dist_list[i]);

        for (k = i + 1; k <= last; k++) {
            uint8_t *id2 = dist_index_id(assoc, dist_list[k]);

            if (id1 && id2)
                if (dist_rel_func(assoc, custom_data, id, id1, id2) == 2) {
                    uint64_t swap = dist_list[i];
                    dist_list[i] = dist_list[k];
                    dist_list[k] = swap;
                }
        }
    }
}
