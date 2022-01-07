
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int Tox ;


 int tox_friend_get_name (int *,int,int *,int *) ;
 int tox_friend_get_name_size (int *,int,int *) ;

int getfriendname_terminated(Tox *m, int friendnum, char *namebuf)
{
    tox_friend_get_name(m, friendnum, (uint8_t *)namebuf, ((void*)0));
    int res = tox_friend_get_name_size(m, friendnum, ((void*)0));

    if (res >= 0)
        namebuf[res] = 0;
    else
        namebuf[0] = 0;

    return res;
}
