
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int Client_data ;


 int cmp_dht_entry ;
 int cmp_public_key ;
 int crypto_box_PUBLICKEYBYTES ;
 int memcpy (int ,int const*,int ) ;
 int qsort (int *,unsigned int,int,int ) ;

__attribute__((used)) static void sort_client_list(Client_data *list, unsigned int length, const uint8_t *comp_public_key)
{
    memcpy(cmp_public_key, comp_public_key, crypto_box_PUBLICKEYBYTES);
    qsort(list, length, sizeof(Client_data), cmp_dht_entry);
}
