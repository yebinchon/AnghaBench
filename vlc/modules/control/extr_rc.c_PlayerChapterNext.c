
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intf_thread_t ;


 int PlayerDoVoid (int *,int ) ;
 int vlc_player_SelectNextChapter ;

__attribute__((used)) static void PlayerChapterNext(intf_thread_t *intf)
{
    PlayerDoVoid(intf, vlc_player_SelectNextChapter);
}
