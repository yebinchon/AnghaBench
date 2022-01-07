
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef int XtInputMask ;


 int FALSE ;
 int GO_FOOTER ;
 int GO_MENUS ;
 int GO_TOOLBAR ;
 int STRCAT (int *,char*) ;
 int STRCPY (int *,int ) ;
 int TRUE ;
 int XmNheight ;
 int XmNwidth ;
 int XtAppPending (int ) ;
 int XtAppProcessEvent (int ,int) ;
 int XtIMAlternateInput ;
 int XtVaSetValues (int ,int ,int,int ,int,int *) ;
 int app_context ;
 int p_go ;
 int set_option_value (int *,long,int *,int ) ;
 int vimShell ;
 int * vim_strchr (int ,int ) ;
 int workshopInitDone ;
 scalar_t__ workshop_get_width_height (int*,int*) ;

void
workshop_init()
{
    char_u buf[64];
    int is_dirty = FALSE;
    int width, height;
    XtInputMask mask;




    STRCPY(buf, p_go);
    if (vim_strchr(p_go, GO_MENUS) == ((void*)0))
    {
 STRCAT(buf, "m");
 is_dirty = TRUE;
    }
    if (vim_strchr(p_go, GO_TOOLBAR) == ((void*)0))
    {
 STRCAT(buf, "T");
 is_dirty = TRUE;
    }
    if (vim_strchr(p_go, GO_FOOTER) == ((void*)0))
    {
 STRCAT(buf, "F");
 is_dirty = TRUE;
    }
    if (is_dirty)
 set_option_value((char_u *)"go", 0L, buf, 0);




    width = height = 0;
    if (workshop_get_width_height(&width, &height))
    {
 XtVaSetValues(vimShell,
  XmNwidth, width,
  XmNheight, height,
  ((void*)0));
    }




    while ((mask = XtAppPending(app_context))
     && (mask & XtIMAlternateInput) && !workshopInitDone)
 XtAppProcessEvent(app_context, (XtInputMask)XtIMAlternateInput);
}
