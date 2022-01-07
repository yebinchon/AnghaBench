
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siphash {int dummy; } ;


 int INT_TO_PTR (int) ;
 int PTR_TO_INT (void const*) ;
 void trivial_hash_func (int ,struct siphash*) ;

__attribute__((used)) static void crippled_hashmap_func(const void *p, struct siphash *state) {
        return trivial_hash_func(INT_TO_PTR(PTR_TO_INT(p) & 0xff), state);
}
