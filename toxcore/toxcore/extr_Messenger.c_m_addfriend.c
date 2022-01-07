
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int nospam ;
typedef int int32_t ;
typedef int checksum ;
typedef int check ;
struct TYPE_9__ {TYPE_2__* friendlist; TYPE_1__* net_crypto; } ;
struct TYPE_8__ {scalar_t__ status; scalar_t__ friendrequest_nospam; scalar_t__* info; scalar_t__ info_size; int friendrequest_timeout; } ;
struct TYPE_7__ {int self_public_key; } ;
typedef TYPE_3__ Messenger ;


 int FAERR_ALREADYSENT ;
 int FAERR_BADCHECKSUM ;
 int FAERR_NOMESSAGE ;
 int FAERR_OWNKEY ;
 int FAERR_SETNEWNOSPAM ;
 int FAERR_TOOLONG ;
 int FRIENDREQUEST_TIMEOUT ;
 int FRIEND_ADDED ;
 scalar_t__ FRIEND_ADDRESS_SIZE ;
 scalar_t__ FRIEND_CONFIRMED ;
 scalar_t__ MAX_FRIEND_REQUEST_DATA_SIZE ;
 scalar_t__ address_checksum (int const*,scalar_t__) ;
 int crypto_box_PUBLICKEYBYTES ;
 int getfriend_id (TYPE_3__*,int *) ;
 int id_copy (int *,int const*) ;
 scalar_t__ id_equal (int *,int ) ;
 int init_new_friend (TYPE_3__*,int *,int ) ;
 int memcpy (scalar_t__*,int const*,int) ;
 int public_key_valid (int *) ;

int32_t m_addfriend(Messenger *m, const uint8_t *address, const uint8_t *data, uint16_t length)
{
    if (length > MAX_FRIEND_REQUEST_DATA_SIZE)
        return FAERR_TOOLONG;

    uint8_t real_pk[crypto_box_PUBLICKEYBYTES];
    id_copy(real_pk, address);

    if (!public_key_valid(real_pk))
        return FAERR_BADCHECKSUM;

    uint16_t check, checksum = address_checksum(address, FRIEND_ADDRESS_SIZE - sizeof(checksum));
    memcpy(&check, address + crypto_box_PUBLICKEYBYTES + sizeof(uint32_t), sizeof(check));

    if (check != checksum)
        return FAERR_BADCHECKSUM;

    if (length < 1)
        return FAERR_NOMESSAGE;

    if (id_equal(real_pk, m->net_crypto->self_public_key))
        return FAERR_OWNKEY;

    int32_t friend_id = getfriend_id(m, real_pk);

    if (friend_id != -1) {
        if (m->friendlist[friend_id].status >= FRIEND_CONFIRMED)
            return FAERR_ALREADYSENT;

        uint32_t nospam;
        memcpy(&nospam, address + crypto_box_PUBLICKEYBYTES, sizeof(nospam));

        if (m->friendlist[friend_id].friendrequest_nospam == nospam)
            return FAERR_ALREADYSENT;

        m->friendlist[friend_id].friendrequest_nospam = nospam;
        return FAERR_SETNEWNOSPAM;
    }

    int32_t ret = init_new_friend(m, real_pk, FRIEND_ADDED);

    if (ret < 0) {
        return ret;
    }

    m->friendlist[ret].friendrequest_timeout = FRIENDREQUEST_TIMEOUT;
    memcpy(m->friendlist[ret].info, data, length);
    m->friendlist[ret].info_size = length;
    memcpy(&(m->friendlist[ret].friendrequest_nospam), address + crypto_box_PUBLICKEYBYTES, sizeof(uint32_t));

    return ret;
}
