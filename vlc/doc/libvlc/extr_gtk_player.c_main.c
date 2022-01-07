
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkWidget ;


 int BORDER_WIDTH ;
 int FALSE ;
 int GTK_BOX (int *) ;
 int GTK_BUTTON (int *) ;
 int GTK_BUTTONBOX_START ;
 int GTK_BUTTON_BOX (int *) ;
 int GTK_CONTAINER (int *) ;
 int GTK_MENU_BAR (int *) ;
 int GTK_MENU_ITEM (int *) ;
 int GTK_MENU_SHELL (int *) ;
 int GTK_STOCK_MEDIA_STOP ;
 int GTK_WINDOW (int *) ;
 int GTK_WINDOW_TOPLEVEL ;
 int G_CALLBACK (int ) ;
 int * G_OBJECT (int *) ;
 int TRUE ;
 int destroy ;
 int g_signal_connect (int *,char*,int ,int *) ;
 int gtk_box_pack_start (int ,int *,int ,int ,int ) ;
 int gtk_button_box_set_layout (int ,int ) ;
 int * gtk_button_new_from_stock (int ) ;
 int * gtk_button_new_with_label (char*) ;
 int gtk_button_set_use_stock (int ,int ) ;
 int gtk_container_add (int ,int *) ;
 int gtk_container_set_border_width (int ,int ) ;
 int * gtk_drawing_area_new () ;
 int * gtk_hbutton_box_new () ;
 int gtk_init (int*,char***) ;
 int gtk_main () ;
 int gtk_menu_bar_append (int ,int *) ;
 int * gtk_menu_bar_new () ;
 int * gtk_menu_item_new_with_label (char*) ;
 int gtk_menu_item_set_submenu (int ,int *) ;
 int * gtk_menu_new () ;
 int gtk_menu_shell_append (int ,int *) ;
 int * gtk_vbox_new (int ,int ) ;
 int gtk_widget_show_all (int *) ;
 int * gtk_window_new (int ) ;
 int gtk_window_set_default_size (int ,int,int) ;
 int gtk_window_set_title (int ,char*) ;
 int libvlc_media_player_new (int ) ;
 int libvlc_media_player_release (int ) ;
 int libvlc_new (int ,int *) ;
 int libvlc_release (int ) ;
 int media_player ;
 int on_open ;
 int on_playpause ;
 int on_stop ;
 int player_widget_on_realize ;
 int * playpause_button ;
 int vlc_inst ;

int main( int argc, char *argv[] ) {
    GtkWidget *window,
              *vbox,
              *menubar,
              *filemenu,
              *fileitem,
              *filemenu_openitem,
              *player_widget,
              *hbuttonbox,
              *stop_button;

    gtk_init (&argc, &argv);

    window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_default_size(GTK_WINDOW(window), 400, 300);
    g_signal_connect(window, "destroy", G_CALLBACK(destroy), ((void*)0));
    gtk_container_set_border_width (GTK_CONTAINER (window), 0);
    gtk_window_set_title(GTK_WINDOW(window), "GTK+ libVLC Demo");


    vbox = gtk_vbox_new(FALSE, 0);
    gtk_container_add(GTK_CONTAINER(window), vbox);


    menubar = gtk_menu_bar_new();
    filemenu = gtk_menu_new();
    fileitem = gtk_menu_item_new_with_label ("File");
    filemenu_openitem = gtk_menu_item_new_with_label("Open");
    gtk_menu_shell_append(GTK_MENU_SHELL(filemenu), filemenu_openitem);
    gtk_menu_item_set_submenu(GTK_MENU_ITEM(fileitem), filemenu);
    gtk_menu_bar_append(GTK_MENU_BAR(menubar), fileitem);
    gtk_box_pack_start(GTK_BOX(vbox), menubar, FALSE, FALSE, 0);
    g_signal_connect(filemenu_openitem, "activate", G_CALLBACK(on_open), window);


    player_widget = gtk_drawing_area_new();
    gtk_box_pack_start(GTK_BOX(vbox), player_widget, TRUE, TRUE, 0);



    playpause_button = gtk_button_new_with_label("gtk-media-play");
    gtk_button_set_use_stock(GTK_BUTTON(playpause_button), TRUE);
    stop_button = gtk_button_new_from_stock(GTK_STOCK_MEDIA_STOP);
    g_signal_connect(playpause_button, "clicked", G_CALLBACK(on_playpause), ((void*)0));
    g_signal_connect(stop_button, "clicked", G_CALLBACK(on_stop), ((void*)0));
    hbuttonbox = gtk_hbutton_box_new();
    gtk_container_set_border_width(GTK_CONTAINER(hbuttonbox), BORDER_WIDTH);
    gtk_button_box_set_layout(GTK_BUTTON_BOX(hbuttonbox), GTK_BUTTONBOX_START);
    gtk_box_pack_start(GTK_BOX(hbuttonbox), playpause_button, FALSE, FALSE, 0);
    gtk_box_pack_start(GTK_BOX(hbuttonbox), stop_button, FALSE, FALSE, 0);
    gtk_box_pack_start(GTK_BOX(vbox), hbuttonbox, FALSE, FALSE, 0);


    vlc_inst = libvlc_new(0, ((void*)0));
    media_player = libvlc_media_player_new(vlc_inst);
    g_signal_connect(G_OBJECT(player_widget), "realize", G_CALLBACK(player_widget_on_realize), ((void*)0));

    gtk_widget_show_all(window);
    gtk_main ();

    libvlc_media_player_release(media_player);
    libvlc_release(vlc_inst);
    return 0;
}
