
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siphash {int dummy; } ;
struct in_addr_data {int family; int address; } ;


 int FAMILY_ADDRESS_SIZE (int ) ;
 int siphash24_compress (int *,int,struct siphash*) ;

__attribute__((used)) static void in_addr_data_hash_func(const struct in_addr_data *a, struct siphash *state) {
        siphash24_compress(&a->family, sizeof(a->family), state);
        siphash24_compress(&a->address, FAMILY_ADDRESS_SIZE(a->family), state);
}
