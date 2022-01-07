
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef char* GuiFont ;


 int EMSG2 (int ,int *) ;
 char* NOFONT ;
 int _ (int ) ;
 int e_font ;
 scalar_t__ vim_strsave (int *) ;
 scalar_t__ vimjs_check_font (char*) ;

GuiFont
gui_mch_get_font(char_u *name, int giveErrorIfMissing)
{
    if(vimjs_check_font((char*)name))
        return (char*)vim_strsave(name);

    if (giveErrorIfMissing)
        EMSG2(_(e_font), name);
    return NOFONT;
}
