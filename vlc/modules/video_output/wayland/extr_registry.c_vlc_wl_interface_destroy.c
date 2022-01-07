
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_wl_interface {int globals; } ;


 int assert (int ) ;
 int free (struct vlc_wl_interface*) ;
 int wl_list_empty (int *) ;

__attribute__((used)) static void vlc_wl_interface_destroy(struct vlc_wl_interface *vi)
{
    assert(wl_list_empty(&vi->globals));
    free(vi);
}
