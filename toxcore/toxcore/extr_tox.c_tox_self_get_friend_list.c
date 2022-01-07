
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Tox ;
typedef int Messenger ;


 int copy_friendlist (int const*,int *,int ) ;
 int tox_self_get_friend_list_size (int const*) ;

void tox_self_get_friend_list(const Tox *tox, uint32_t *list)
{
    if (list) {
        const Messenger *m = tox;

        copy_friendlist(m, list, tox_self_get_friend_list_size(tox));
    }
}
