
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



__attribute__((used)) static int key_qsort_cmp(const void *keyp_a, const void *keyp_b) {
 uint32_t key_a = **(uint32_t **)keyp_a;
 uint32_t key_b = **(uint32_t **)keyp_b;
 return (key_a < key_b) ? -1 : ((key_a > key_b) ? 1 : 0);
}
