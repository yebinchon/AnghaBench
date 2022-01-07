
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intf_thread_t ;


 int PlaylistDoClear ;
 int PlaylistDoVoid (int *,int ) ;

__attribute__((used)) static void PlaylistClear(intf_thread_t *intf)
{
    PlaylistDoVoid(intf, PlaylistDoClear);
}
