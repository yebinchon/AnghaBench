
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sense; int * verb; } ;
typedef TYPE_1__ VerbSense ;


 int FALSE ;
 scalar_t__ WSDLEVEL (int) ;
 int WS_TRACE ;
 int WS_TRACE_VERBOSE ;
 int coloncmd (char*,int ) ;
 int gui_mch_flush () ;
 int gui_update_menus (int ) ;
 char* lookupVerb (int *,int ) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ ws_debug ;
 int wsdebug (char*,...) ;
 int wstrace (char*) ;

void
workshop_frame_sensitivities(
 VerbSense *vs)
{
    VerbSense *vp;
    char *menu_name;
    int cnt;
    int len;
    char cbuf[4096];
    for (vp = vs; vp->verb != ((void*)0); vp++)
    {
 cnt = 0;
 strcpy(cbuf, "amenu");
 strcat(cbuf, " ");
 strcat(cbuf, vp->sense ? "enable" : "disable");
 strcat(cbuf, " ");
 len = strlen(cbuf);
 while ((menu_name = lookupVerb(vp->verb, cnt++)) != ((void*)0))
 {
     strcpy(&cbuf[len], menu_name);
     coloncmd(cbuf, FALSE);
 }
    }
    gui_update_menus(0);
    gui_mch_flush();
}
