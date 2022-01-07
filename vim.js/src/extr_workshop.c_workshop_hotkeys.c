
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cbuf ;
struct TYPE_3__ {int * accel; int verb; } ;
typedef TYPE_1__ MenuMap ;
typedef scalar_t__ Boolean ;


 int BUFSIZ ;
 int TRUE ;
 scalar_t__ WSDLEVEL (int) ;
 int WS_TRACE ;
 int WS_TRACE_VERBOSE ;
 int coloncmd (char*,int ) ;
 TYPE_1__* menuMap ;
 size_t menuMapSize ;
 int vim_snprintf (char*,int,char*,int *,...) ;
 scalar_t__ workshopHotKeysEnabled ;
 int wstrace (char*,char*) ;

void
workshop_hotkeys(
 Boolean on)
{
    char cbuf[BUFSIZ];
    MenuMap *mp;






    workshopHotKeysEnabled = on;
    if (workshopHotKeysEnabled)
 for (mp = menuMap; mp < &menuMap[menuMapSize]; mp++)
 {
     if (mp->accel != ((void*)0))
     {
  vim_snprintf(cbuf, sizeof(cbuf),
   "map %s :wsverb %s<CR>", mp->accel, mp->verb);
  coloncmd(cbuf, TRUE);
     }
 }
    else
 for (mp = menuMap; mp < &menuMap[menuMapSize]; mp++)
 {
     if (mp->accel != ((void*)0))
     {
  vim_snprintf(cbuf, sizeof(cbuf), "unmap %s", mp->accel);
  coloncmd(cbuf, TRUE);
     }
 }
}
