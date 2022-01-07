
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int True ;
 int WS_TRACE ;
 int curMenuName ;
 char* fixup (char*) ;
 int strcat (int ,char*) ;
 scalar_t__ strncmp (int ,char*,int) ;
 int updatePriority (int ) ;
 scalar_t__ ws_debug ;
 int ws_dlevel ;
 int wstrace (char*,char*) ;

void
workshop_submenu_begin(
 char *label)
{






    strcat(curMenuName, ".");
    strcat(curMenuName, fixup(label));

    updatePriority(True);
}
