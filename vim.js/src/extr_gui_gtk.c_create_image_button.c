
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef int GtkWidget ;


 int * CONVERT_TO_UTF8 (int *) ;
 int CONVERT_TO_UTF8_FREE (int *) ;
 int FALSE ;
 int GTK_BOX (int *) ;
 int GTK_CONTAINER (int *) ;
 int GTK_ICON_SIZE_BUTTON ;
 int * gtk_alignment_new (float,float,float,float) ;
 int gtk_box_pack_start (int ,int ,int ,int ,int ) ;
 int * gtk_button_new () ;
 int gtk_container_add (int ,int *) ;
 int * gtk_hbox_new (int ,int) ;
 int gtk_image_new_from_stock (char const*,int ) ;
 int gtk_label_new (char const*) ;
 int gtk_widget_show_all (int *) ;

__attribute__((used)) static GtkWidget *
create_image_button(const char *stock_id, const char *label)
{
    char_u *text;
    GtkWidget *box;
    GtkWidget *alignment;
    GtkWidget *button;

    text = CONVERT_TO_UTF8((char_u *)label);

    box = gtk_hbox_new(FALSE, 3);
    gtk_box_pack_start(GTK_BOX(box),
         gtk_image_new_from_stock(stock_id, GTK_ICON_SIZE_BUTTON),
         FALSE, FALSE, 0);
    gtk_box_pack_start(GTK_BOX(box),
         gtk_label_new((const char *)text),
         FALSE, FALSE, 0);

    CONVERT_TO_UTF8_FREE(text);

    alignment = gtk_alignment_new((float)0.5, (float)0.5,
            (float)0.0, (float)0.0);
    gtk_container_add(GTK_CONTAINER(alignment), box);
    gtk_widget_show_all(alignment);

    button = gtk_button_new();
    gtk_container_add(GTK_CONTAINER(button), alignment);

    return button;
}
