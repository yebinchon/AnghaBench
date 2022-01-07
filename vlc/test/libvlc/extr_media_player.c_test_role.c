
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_player_t ;


 int assert (int) ;
 int libvlc_media_player_get_role (int *) ;
 scalar_t__ libvlc_media_player_set_role (int *,int) ;
 int libvlc_role_Last ;
 int libvlc_role_Video ;

__attribute__((used)) static void test_role(libvlc_media_player_t *mp)
{
    int role;


    assert(libvlc_media_player_get_role(mp) == libvlc_role_Video);

    for (role = 0; libvlc_media_player_set_role(mp, role) == 0; role++)
        assert(libvlc_media_player_get_role(mp) == role);

    assert(role > libvlc_role_Last);
}
