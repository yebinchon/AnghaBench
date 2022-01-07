
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int Tox ;


 int current_group ;
 int tox_join_groupchat (int *,int,int const*,int ) ;

__attribute__((used)) static void callback_group_invite(Tox *tox, int fid, uint8_t type, const uint8_t *data, uint16_t length, void *userdata)
{
    if (current_group == -1)
        current_group = tox_join_groupchat(tox, fid, data, length);
}
