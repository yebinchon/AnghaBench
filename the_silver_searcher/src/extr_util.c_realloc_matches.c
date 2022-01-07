
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int match_t ;


 int * ag_realloc (int *,size_t) ;

void realloc_matches(match_t **matches, size_t *matches_size, size_t matches_len) {
    if (matches_len < *matches_size) {
        return;
    }

    *matches_size = *matches ? *matches_size * 2 : 100;
    *matches = ag_realloc(*matches, *matches_size * sizeof(match_t));
}
