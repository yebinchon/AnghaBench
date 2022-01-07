
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t int32_t ;
struct TYPE_6__ {TYPE_1__* friendlist; } ;
struct TYPE_5__ {int real_pk; } ;
typedef TYPE_2__ Messenger ;


 int crypto_box_PUBLICKEYBYTES ;
 scalar_t__ friend_not_valid (TYPE_2__ const*,size_t) ;
 int memcpy (int *,int ,int ) ;

int get_real_pk(const Messenger *m, int32_t friendnumber, uint8_t *real_pk)
{
    if (friend_not_valid(m, friendnumber))
        return -1;

    memcpy(real_pk, m->friendlist[friendnumber].real_pk, crypto_box_PUBLICKEYBYTES);
    return 0;
}
