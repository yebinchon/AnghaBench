
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int Tox ;


 int ck_assert (int) ;
 scalar_t__ memcmp (char*,int const*,int) ;
 scalar_t__ tox_friend_add_norequest (int *,int const*,int *) ;

void t_accept_friend_request_cb(Tox *m, const uint8_t *public_key, const uint8_t *data, size_t length, void *userdata)
{
    (void) userdata;

    if (length == 7 && memcmp("gentoo", data, 7) == 0) {
        ck_assert(tox_friend_add_norequest(m, public_key, ((void*)0)) != (uint32_t) ~0);
    }
}
