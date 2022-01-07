
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_2__ {void* boldital_font; void* ital_font; void* bold_font; void* norm_font; int char_height; int char_ascent; int char_width; } ;


 int OK ;
 TYPE_1__ gui ;
 int gui_resize_shell (int,int) ;
 int vim_strcat (int *,int *,int) ;
 int vim_strncpy (int *,char*,int) ;
 void* vim_strsave (int *) ;
 int vimjs_get_char_height () ;
 int vimjs_get_char_width () ;
 int vimjs_get_window_height () ;
 int vimjs_get_window_width () ;
 int vimjs_init_font (char*) ;

int
gui_mch_init_font(char_u *font_name, int fontset)
{
    vimjs_init_font((char*)font_name);

    gui.char_width = vimjs_get_char_width();
    gui.char_height = vimjs_get_char_height();
    gui.char_ascent = gui.char_height;

    char_u buf[100];

    gui.norm_font = vim_strsave(font_name);

    vim_strncpy(buf, "bold ", 99);
    vim_strcat(buf, font_name, 100);
    gui.bold_font = vim_strsave(buf);

    vim_strncpy(buf, "italic ", 99);
    vim_strcat(buf, font_name, 100);
    gui.ital_font = vim_strsave(buf);

    vim_strncpy(buf, "bold italic ", 99);
    vim_strcat(buf, font_name, 100);
    gui.boldital_font = vim_strsave(buf);

    int w,h;
    w = vimjs_get_window_width();
    h = vimjs_get_window_height();
    gui_resize_shell(w, h);

    return OK;
}
