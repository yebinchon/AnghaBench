
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intf_thread_t ;


 int libvlc_Quit (int ) ;
 int vlc_object_instance (int *) ;

__attribute__((used)) static void Quit(intf_thread_t *intf)
{
    libvlc_Quit(vlc_object_instance(intf));
}
