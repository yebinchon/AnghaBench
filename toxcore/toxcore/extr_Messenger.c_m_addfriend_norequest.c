
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int32_t ;
struct TYPE_7__ {TYPE_1__* net_crypto; } ;
struct TYPE_6__ {int self_public_key; } ;
typedef TYPE_2__ Messenger ;


 int FAERR_ALREADYSENT ;
 int FAERR_BADCHECKSUM ;
 int FAERR_OWNKEY ;
 int FRIEND_CONFIRMED ;
 int getfriend_id (TYPE_2__*,int const*) ;
 scalar_t__ id_equal (int const*,int ) ;
 int init_new_friend (TYPE_2__*,int const*,int ) ;
 int public_key_valid (int const*) ;

int32_t m_addfriend_norequest(Messenger *m, const uint8_t *real_pk)
{
    if (getfriend_id(m, real_pk) != -1)
        return FAERR_ALREADYSENT;

    if (!public_key_valid(real_pk))
        return FAERR_BADCHECKSUM;

    if (id_equal(real_pk, m->net_crypto->self_public_key))
        return FAERR_OWNKEY;

    return init_new_friend(m, real_pk, FRIEND_CONFIRMED);
}
