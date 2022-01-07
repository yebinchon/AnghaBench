
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* actext; int id; int label; int name; } ;
typedef TYPE_1__ vimmenu_T ;
typedef int char_u ;
typedef int GtkWidget ;


 int * CONVERT_TO_UTF8 (scalar_t__*) ;
 int CONVERT_TO_UTF8_FREE (int *) ;
 int FALSE ;
 int GTK_BOX (int *) ;
 int GTK_CONTAINER (int ) ;
 int GTK_IS_MENU_BAR (int *) ;
 scalar_t__ NUL ;
 int gtk_box_pack_end (int ,int ,int ,int ,int ) ;
 int gtk_box_pack_start (int ,int ,int ,int ,int ) ;
 int gtk_container_add (int ,int *) ;
 int * gtk_hbox_new (int ,int) ;
 int gtk_label_new (char const*) ;
 int gtk_label_new_with_mnemonic (char const*) ;
 int gtk_menu_item_new () ;
 int gtk_widget_show_all (int ) ;
 char* p_wak ;
 int * translate_mnemonic_tag (int ,int) ;
 int vim_free (int *) ;

__attribute__((used)) static void
menu_item_new(vimmenu_T *menu, GtkWidget *parent_widget)
{
    GtkWidget *box;
    char_u *text;
    int use_mnemonic;




    menu->id = gtk_menu_item_new();
    box = gtk_hbox_new(FALSE, 20);

    use_mnemonic = (p_wak[0] != 'n' || !GTK_IS_MENU_BAR(parent_widget));
    text = translate_mnemonic_tag(menu->name, use_mnemonic);

    menu->label = gtk_label_new_with_mnemonic((const char *)text);
    vim_free(text);

    gtk_box_pack_start(GTK_BOX(box), menu->label, FALSE, FALSE, 0);

    if (menu->actext != ((void*)0) && menu->actext[0] != NUL)
    {
 text = CONVERT_TO_UTF8(menu->actext);

 gtk_box_pack_end(GTK_BOX(box),
    gtk_label_new((const char *)text),
    FALSE, FALSE, 0);

 CONVERT_TO_UTF8_FREE(text);
    }

    gtk_container_add(GTK_CONTAINER(menu->id), box);
    gtk_widget_show_all(menu->id);
}
