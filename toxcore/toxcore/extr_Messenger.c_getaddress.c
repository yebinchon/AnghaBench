
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int nospam ;
typedef int checksum ;
struct TYPE_5__ {int fr; TYPE_1__* net_crypto; } ;
struct TYPE_4__ {int self_public_key; } ;
typedef TYPE_2__ Messenger ;


 scalar_t__ FRIEND_ADDRESS_SIZE ;
 int address_checksum (int *,scalar_t__) ;
 int crypto_box_PUBLICKEYBYTES ;
 int get_nospam (int *) ;
 int id_copy (int *,int ) ;
 int memcpy (int *,int *,int) ;

void getaddress(const Messenger *m, uint8_t *address)
{
    id_copy(address, m->net_crypto->self_public_key);
    uint32_t nospam = get_nospam(&(m->fr));
    memcpy(address + crypto_box_PUBLICKEYBYTES, &nospam, sizeof(nospam));
    uint16_t checksum = address_checksum(address, FRIEND_ADDRESS_SIZE - sizeof(checksum));
    memcpy(address + crypto_box_PUBLICKEYBYTES + sizeof(nospam), &checksum, sizeof(checksum));
}
