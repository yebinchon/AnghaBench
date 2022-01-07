; ModuleID = '/home/carl/AnghaBench/vlc/doc/libvlc/extr_gtk_player.c_main.c'
source_filename = "/home/carl/AnghaBench/vlc/doc/libvlc/extr_gtk_player.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GTK_WINDOW_TOPLEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@destroy = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"GTK+ libVLC Demo\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"File\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Open\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@on_open = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"gtk-media-play\00", align 1
@playpause_button = common dso_local global i32* null, align 8
@GTK_STOCK_MEDIA_STOP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@on_playpause = common dso_local global i32 0, align 4
@on_stop = common dso_local global i32 0, align 4
@BORDER_WIDTH = common dso_local global i32 0, align 4
@GTK_BUTTONBOX_START = common dso_local global i32 0, align 4
@vlc_inst = common dso_local global i32 0, align 4
@media_player = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"realize\00", align 1
@player_widget_on_realize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = call i32 @gtk_init(i32* %4, i8*** %5)
  %16 = load i32, i32* @GTK_WINDOW_TOPLEVEL, align 4
  %17 = call i32* @gtk_window_new(i32 %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @GTK_WINDOW(i32* %18)
  %20 = call i32 @gtk_window_set_default_size(i32 %19, i32 400, i32 300)
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @destroy, align 4
  %23 = call i32 @G_CALLBACK(i32 %22)
  %24 = call i32 @g_signal_connect(i32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %23, i32* null)
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @GTK_CONTAINER(i32* %25)
  %27 = call i32 @gtk_container_set_border_width(i32 %26, i32 0)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @GTK_WINDOW(i32* %28)
  %30 = call i32 @gtk_window_set_title(i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i32* @gtk_vbox_new(i32 %31, i32 0)
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @GTK_CONTAINER(i32* %33)
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @gtk_container_add(i32 %34, i32* %35)
  %37 = call i32* (...) @gtk_menu_bar_new()
  store i32* %37, i32** %8, align 8
  %38 = call i32* (...) @gtk_menu_new()
  store i32* %38, i32** %9, align 8
  %39 = call i32* @gtk_menu_item_new_with_label(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32* %39, i32** %10, align 8
  %40 = call i32* @gtk_menu_item_new_with_label(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @GTK_MENU_SHELL(i32* %41)
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @gtk_menu_shell_append(i32 %42, i32* %43)
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @GTK_MENU_ITEM(i32* %45)
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @gtk_menu_item_set_submenu(i32 %46, i32* %47)
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @GTK_MENU_BAR(i32* %49)
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @gtk_menu_bar_append(i32 %50, i32* %51)
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @GTK_BOX(i32* %53)
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* @FALSE, align 4
  %57 = load i32, i32* @FALSE, align 4
  %58 = call i32 @gtk_box_pack_start(i32 %54, i32* %55, i32 %56, i32 %57, i32 0)
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* @on_open, align 4
  %61 = call i32 @G_CALLBACK(i32 %60)
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @g_signal_connect(i32* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %61, i32* %62)
  %64 = call i32* (...) @gtk_drawing_area_new()
  store i32* %64, i32** %12, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @GTK_BOX(i32* %65)
  %67 = load i32*, i32** %12, align 8
  %68 = load i32, i32* @TRUE, align 4
  %69 = load i32, i32* @TRUE, align 4
  %70 = call i32 @gtk_box_pack_start(i32 %66, i32* %67, i32 %68, i32 %69, i32 0)
  %71 = call i32* @gtk_button_new_with_label(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32* %71, i32** @playpause_button, align 8
  %72 = load i32*, i32** @playpause_button, align 8
  %73 = call i32 @GTK_BUTTON(i32* %72)
  %74 = load i32, i32* @TRUE, align 4
  %75 = call i32 @gtk_button_set_use_stock(i32 %73, i32 %74)
  %76 = load i32, i32* @GTK_STOCK_MEDIA_STOP, align 4
  %77 = call i32* @gtk_button_new_from_stock(i32 %76)
  store i32* %77, i32** %14, align 8
  %78 = load i32*, i32** @playpause_button, align 8
  %79 = load i32, i32* @on_playpause, align 4
  %80 = call i32 @G_CALLBACK(i32 %79)
  %81 = call i32 @g_signal_connect(i32* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %80, i32* null)
  %82 = load i32*, i32** %14, align 8
  %83 = load i32, i32* @on_stop, align 4
  %84 = call i32 @G_CALLBACK(i32 %83)
  %85 = call i32 @g_signal_connect(i32* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %84, i32* null)
  %86 = call i32* (...) @gtk_hbutton_box_new()
  store i32* %86, i32** %13, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = call i32 @GTK_CONTAINER(i32* %87)
  %89 = load i32, i32* @BORDER_WIDTH, align 4
  %90 = call i32 @gtk_container_set_border_width(i32 %88, i32 %89)
  %91 = load i32*, i32** %13, align 8
  %92 = call i32 @GTK_BUTTON_BOX(i32* %91)
  %93 = load i32, i32* @GTK_BUTTONBOX_START, align 4
  %94 = call i32 @gtk_button_box_set_layout(i32 %92, i32 %93)
  %95 = load i32*, i32** %13, align 8
  %96 = call i32 @GTK_BOX(i32* %95)
  %97 = load i32*, i32** @playpause_button, align 8
  %98 = load i32, i32* @FALSE, align 4
  %99 = load i32, i32* @FALSE, align 4
  %100 = call i32 @gtk_box_pack_start(i32 %96, i32* %97, i32 %98, i32 %99, i32 0)
  %101 = load i32*, i32** %13, align 8
  %102 = call i32 @GTK_BOX(i32* %101)
  %103 = load i32*, i32** %14, align 8
  %104 = load i32, i32* @FALSE, align 4
  %105 = load i32, i32* @FALSE, align 4
  %106 = call i32 @gtk_box_pack_start(i32 %102, i32* %103, i32 %104, i32 %105, i32 0)
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @GTK_BOX(i32* %107)
  %109 = load i32*, i32** %13, align 8
  %110 = load i32, i32* @FALSE, align 4
  %111 = load i32, i32* @FALSE, align 4
  %112 = call i32 @gtk_box_pack_start(i32 %108, i32* %109, i32 %110, i32 %111, i32 0)
  %113 = call i32 @libvlc_new(i32 0, i32* null)
  store i32 %113, i32* @vlc_inst, align 4
  %114 = load i32, i32* @vlc_inst, align 4
  %115 = call i32 @libvlc_media_player_new(i32 %114)
  store i32 %115, i32* @media_player, align 4
  %116 = load i32*, i32** %12, align 8
  %117 = call i32* @G_OBJECT(i32* %116)
  %118 = load i32, i32* @player_widget_on_realize, align 4
  %119 = call i32 @G_CALLBACK(i32 %118)
  %120 = call i32 @g_signal_connect(i32* %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %119, i32* null)
  %121 = load i32*, i32** %6, align 8
  %122 = call i32 @gtk_widget_show_all(i32* %121)
  %123 = call i32 (...) @gtk_main()
  %124 = load i32, i32* @media_player, align 4
  %125 = call i32 @libvlc_media_player_release(i32 %124)
  %126 = load i32, i32* @vlc_inst, align 4
  %127 = call i32 @libvlc_release(i32 %126)
  ret i32 0
}

declare dso_local i32 @gtk_init(i32*, i8***) #1

declare dso_local i32* @gtk_window_new(i32) #1

declare dso_local i32 @gtk_window_set_default_size(i32, i32, i32) #1

declare dso_local i32 @GTK_WINDOW(i32*) #1

declare dso_local i32 @g_signal_connect(i32*, i8*, i32, i32*) #1

declare dso_local i32 @G_CALLBACK(i32) #1

declare dso_local i32 @gtk_container_set_border_width(i32, i32) #1

declare dso_local i32 @GTK_CONTAINER(i32*) #1

declare dso_local i32 @gtk_window_set_title(i32, i8*) #1

declare dso_local i32* @gtk_vbox_new(i32, i32) #1

declare dso_local i32 @gtk_container_add(i32, i32*) #1

declare dso_local i32* @gtk_menu_bar_new(...) #1

declare dso_local i32* @gtk_menu_new(...) #1

declare dso_local i32* @gtk_menu_item_new_with_label(i8*) #1

declare dso_local i32 @gtk_menu_shell_append(i32, i32*) #1

declare dso_local i32 @GTK_MENU_SHELL(i32*) #1

declare dso_local i32 @gtk_menu_item_set_submenu(i32, i32*) #1

declare dso_local i32 @GTK_MENU_ITEM(i32*) #1

declare dso_local i32 @gtk_menu_bar_append(i32, i32*) #1

declare dso_local i32 @GTK_MENU_BAR(i32*) #1

declare dso_local i32 @gtk_box_pack_start(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @GTK_BOX(i32*) #1

declare dso_local i32* @gtk_drawing_area_new(...) #1

declare dso_local i32* @gtk_button_new_with_label(i8*) #1

declare dso_local i32 @gtk_button_set_use_stock(i32, i32) #1

declare dso_local i32 @GTK_BUTTON(i32*) #1

declare dso_local i32* @gtk_button_new_from_stock(i32) #1

declare dso_local i32* @gtk_hbutton_box_new(...) #1

declare dso_local i32 @gtk_button_box_set_layout(i32, i32) #1

declare dso_local i32 @GTK_BUTTON_BOX(i32*) #1

declare dso_local i32 @libvlc_new(i32, i32*) #1

declare dso_local i32 @libvlc_media_player_new(i32) #1

declare dso_local i32* @G_OBJECT(i32*) #1

declare dso_local i32 @gtk_widget_show_all(i32*) #1

declare dso_local i32 @gtk_main(...) #1

declare dso_local i32 @libvlc_media_player_release(i32) #1

declare dso_local i32 @libvlc_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
