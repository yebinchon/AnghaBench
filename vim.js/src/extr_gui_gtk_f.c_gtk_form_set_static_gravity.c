
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int GdkWindow ;


 int gdk_window_set_static_gravities (int *,int ) ;

__attribute__((used)) static void
gtk_form_set_static_gravity(GdkWindow *window, gboolean use_static)
{


    gdk_window_set_static_gravities(window, use_static);
}
