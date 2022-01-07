
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ char_u ;
struct TYPE_6__ {int * mainwin; } ;
struct TYPE_5__ {scalar_t__ vc_type; } ;
typedef int GtkWidget ;


 scalar_t__ CONV_NONE ;
 char const* DEFAULT_FONT ;
 int GTK_DIALOG (int *) ;
 int GTK_FONT_SELECTION_DIALOG (int *) ;
 int GTK_RESPONSE_NONE ;
 int GTK_RESPONSE_OK ;
 int GTK_WINDOW (int *) ;
 scalar_t__ NUL ;
 int STRCPY (scalar_t__*,char*) ;
 int STRLEN (scalar_t__*) ;
 int TRUE ;
 int g_free (char*) ;
 int gtk_dialog_run (int ) ;
 char* gtk_font_selection_dialog_get_font_name (int ) ;
 int * gtk_font_selection_dialog_new (int *) ;
 int gtk_font_selection_dialog_set_font_name (int ,char const*) ;
 int gtk_widget_destroy (int *) ;
 int gtk_window_set_destroy_with_parent (int ,int ) ;
 int gtk_window_set_transient_for (int ,int ) ;
 TYPE_4__ gui ;
 TYPE_1__ input_conv ;
 TYPE_1__ output_conv ;
 scalar_t__* string_convert (TYPE_1__*,scalar_t__*,int *) ;
 int vim_free (scalar_t__*) ;
 int vim_isdigit (scalar_t__) ;
 scalar_t__* vim_strnsave (scalar_t__*,int) ;
 scalar_t__* vim_strsave_escaped (scalar_t__*,scalar_t__*) ;

char_u *
gui_mch_font_dialog(char_u *oldval)
{
    GtkWidget *dialog;
    int response;
    char_u *fontname = ((void*)0);
    char_u *oldname;

    dialog = gtk_font_selection_dialog_new(((void*)0));

    gtk_window_set_transient_for(GTK_WINDOW(dialog), GTK_WINDOW(gui.mainwin));
    gtk_window_set_destroy_with_parent(GTK_WINDOW(dialog), TRUE);

    if (oldval != ((void*)0) && oldval[0] != NUL)
    {
 if (output_conv.vc_type != CONV_NONE)
     oldname = string_convert(&output_conv, oldval, ((void*)0));
 else
     oldname = oldval;



 if (!vim_isdigit(oldname[STRLEN(oldname) - 1]))
 {
     char_u *p = vim_strnsave(oldname, STRLEN(oldname) + 3);

     if (p != ((void*)0))
     {
  STRCPY(p + STRLEN(p), " 10");
  if (oldname != oldval)
      vim_free(oldname);
  oldname = p;
     }
 }

 gtk_font_selection_dialog_set_font_name(
  GTK_FONT_SELECTION_DIALOG(dialog), (const char *)oldname);

 if (oldname != oldval)
     vim_free(oldname);
    }
    else
 gtk_font_selection_dialog_set_font_name(
  GTK_FONT_SELECTION_DIALOG(dialog), DEFAULT_FONT);

    response = gtk_dialog_run(GTK_DIALOG(dialog));

    if (response == GTK_RESPONSE_OK)
    {
 char *name;

 name = gtk_font_selection_dialog_get_font_name(
       GTK_FONT_SELECTION_DIALOG(dialog));
 if (name != ((void*)0))
 {
     char_u *p;



     p = vim_strsave_escaped((char_u *)name, (char_u *)",");
     g_free(name);
     if (p != ((void*)0) && input_conv.vc_type != CONV_NONE)
     {
  fontname = string_convert(&input_conv, p, ((void*)0));
  vim_free(p);
     }
     else
  fontname = p;
 }
    }

    if (response != GTK_RESPONSE_NONE)
 gtk_widget_destroy(dialog);

    return fontname;
}
