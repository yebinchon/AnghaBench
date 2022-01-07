
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* installfunc ) (int) ;scalar_t__ active; } ;


 int choice_count ;
 TYPE_1__* choices ;
 scalar_t__ has_gvim ;
 int install_OLE_register () ;
 scalar_t__ install_openwith ;
 scalar_t__ install_popup ;
 int install_registry () ;
 scalar_t__ interactive ;
 scalar_t__ need_uninstall_entry ;
 int stub1 (int) ;

__attribute__((used)) static void
install(void)
{
    int i;


    for (i = 0; i < choice_count; ++i)
 if (choices[i].installfunc != ((void*)0) && choices[i].active)
     (choices[i].installfunc)(i);


    if (install_popup
     || install_openwith
     || (need_uninstall_entry && interactive)
     || !interactive)
 install_registry();






}
