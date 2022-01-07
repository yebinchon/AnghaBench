
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int GtkWidget ;


 int GTK_DIALOG (int *) ;
 int GTK_FILE_CHOOSER (int *) ;
 int GTK_FILE_CHOOSER_ACTION_OPEN ;
 scalar_t__ GTK_RESPONSE_ACCEPT ;
 int GTK_RESPONSE_CANCEL ;
 int GTK_STOCK_CANCEL ;
 int GTK_STOCK_OPEN ;
 int g_free (char*) ;
 scalar_t__ gtk_dialog_run (int ) ;
 int * gtk_file_chooser_dialog_new (char*,int ,int ,int ,int ,int ,scalar_t__,int *) ;
 char* gtk_file_chooser_get_uri (int ) ;
 int gtk_widget_destroy (int *) ;
 int open_media (char*) ;

void on_open(GtkWidget *widget, gpointer data) {
    GtkWidget *dialog;
    dialog = gtk_file_chooser_dialog_new("Choose Media", data, GTK_FILE_CHOOSER_ACTION_OPEN, GTK_STOCK_CANCEL,GTK_RESPONSE_CANCEL, GTK_STOCK_OPEN, GTK_RESPONSE_ACCEPT, ((void*)0));
    if(gtk_dialog_run(GTK_DIALOG(dialog)) == GTK_RESPONSE_ACCEPT) {
        char *uri;
        uri = gtk_file_chooser_get_uri(GTK_FILE_CHOOSER(dialog));
        open_media(uri);
        g_free(uri);
    }
    gtk_widget_destroy(dialog);
}
