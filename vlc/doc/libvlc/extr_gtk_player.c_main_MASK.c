#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/  BORDER_WIDTH ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_BUTTONBOX_START ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_STOCK_MEDIA_STOP ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_WINDOW_TOPLEVEL ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  destroy ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 () ; 
 int /*<<< orphan*/ * FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int*,char***) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 () ; 
 int /*<<< orphan*/ * FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  media_player ; 
 int /*<<< orphan*/  on_open ; 
 int /*<<< orphan*/  on_playpause ; 
 int /*<<< orphan*/  on_stop ; 
 int /*<<< orphan*/  player_widget_on_realize ; 
 int /*<<< orphan*/ * playpause_button ; 
 int /*<<< orphan*/  vlc_inst ; 

int FUNC37( int argc, char *argv[] ) {
    GtkWidget *window,
              *vbox,
              *menubar,
              *filemenu,
              *fileitem,
              *filemenu_openitem,
              *player_widget,
              *hbuttonbox,
              *stop_button;
    
    FUNC20 (&argc, &argv);
    // setup window
    window = FUNC30(GTK_WINDOW_TOPLEVEL);
    FUNC31(FUNC7(window), 400, 300);
    FUNC10(window, "destroy", FUNC8(destroy), NULL);
    FUNC17 (FUNC3 (window), 0);
    FUNC32(FUNC7(window), "GTK+ libVLC Demo");

    //setup vbox
    vbox = FUNC28(FALSE, 0);
    FUNC16(FUNC3(window), vbox);

    //setup menu
    menubar = FUNC23();
    filemenu = FUNC26();
    fileitem = FUNC24 ("File");
    filemenu_openitem = FUNC24("Open");
    FUNC27(FUNC6(filemenu), filemenu_openitem);
    FUNC25(FUNC5(fileitem), filemenu);
    FUNC22(FUNC4(menubar), fileitem);
    FUNC11(FUNC0(vbox), menubar, FALSE, FALSE, 0);
    FUNC10(filemenu_openitem, "activate", FUNC8(on_open), window);

    //setup player widget
    player_widget = FUNC18();
    FUNC11(FUNC0(vbox), player_widget, TRUE, TRUE, 0);

    //setup controls
    //playpause_button = gtk_button_new_from_stock(GTK_STOCK_MEDIA_PLAY);
    playpause_button = FUNC14("gtk-media-play");
    FUNC15(FUNC1(playpause_button), TRUE);
    stop_button = FUNC13(GTK_STOCK_MEDIA_STOP);
    FUNC10(playpause_button, "clicked", FUNC8(on_playpause), NULL);
    FUNC10(stop_button, "clicked", FUNC8(on_stop), NULL);
    hbuttonbox = FUNC19();
    FUNC17(FUNC3(hbuttonbox), BORDER_WIDTH);
    FUNC12(FUNC2(hbuttonbox), GTK_BUTTONBOX_START);
    FUNC11(FUNC0(hbuttonbox), playpause_button, FALSE, FALSE, 0);
    FUNC11(FUNC0(hbuttonbox), stop_button, FALSE, FALSE, 0);
    FUNC11(FUNC0(vbox), hbuttonbox, FALSE, FALSE, 0);

    //setup vlc
    vlc_inst = FUNC35(0, NULL);
    media_player = FUNC33(vlc_inst);
    FUNC10(FUNC9(player_widget), "realize", FUNC8(player_widget_on_realize), NULL);

    FUNC29(window);
    FUNC21 ();

    FUNC34(media_player);
    FUNC36(vlc_inst);
    return 0;
}