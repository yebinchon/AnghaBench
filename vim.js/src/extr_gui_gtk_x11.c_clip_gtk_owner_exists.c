
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gtk_sel_atom; } ;
typedef TYPE_1__ VimClipboard ;


 int * gdk_selection_owner_get (int ) ;

int
clip_gtk_owner_exists(VimClipboard *cbd)
{
    return gdk_selection_owner_get(cbd->gtk_sel_atom) != ((void*)0);
}
