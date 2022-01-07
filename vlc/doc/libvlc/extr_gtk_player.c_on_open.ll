; ModuleID = '/home/carl/AnghaBench/vlc/doc/libvlc/extr_gtk_player.c_on_open.c'
source_filename = "/home/carl/AnghaBench/vlc/doc/libvlc/extr_gtk_player.c_on_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Choose Media\00", align 1
@GTK_FILE_CHOOSER_ACTION_OPEN = common dso_local global i32 0, align 4
@GTK_STOCK_CANCEL = common dso_local global i32 0, align 4
@GTK_RESPONSE_CANCEL = common dso_local global i32 0, align 4
@GTK_STOCK_OPEN = common dso_local global i32 0, align 4
@GTK_RESPONSE_ACCEPT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @on_open(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @GTK_FILE_CHOOSER_ACTION_OPEN, align 4
  %9 = load i32, i32* @GTK_STOCK_CANCEL, align 4
  %10 = load i32, i32* @GTK_RESPONSE_CANCEL, align 4
  %11 = load i32, i32* @GTK_STOCK_OPEN, align 4
  %12 = load i64, i64* @GTK_RESPONSE_ACCEPT, align 8
  %13 = call i32* @gtk_file_chooser_dialog_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i64 %12, i32* null)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @GTK_DIALOG(i32* %14)
  %16 = call i64 @gtk_dialog_run(i32 %15)
  %17 = load i64, i64* @GTK_RESPONSE_ACCEPT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @GTK_FILE_CHOOSER(i32* %20)
  %22 = call i8* @gtk_file_chooser_get_uri(i32 %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @open_media(i8* %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @g_free(i8* %25)
  br label %27

27:                                               ; preds = %19, %2
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @gtk_widget_destroy(i32* %28)
  ret void
}

declare dso_local i32* @gtk_file_chooser_dialog_new(i8*, i32, i32, i32, i32, i32, i64, i32*) #1

declare dso_local i64 @gtk_dialog_run(i32) #1

declare dso_local i32 @GTK_DIALOG(i32*) #1

declare dso_local i8* @gtk_file_chooser_get_uri(i32) #1

declare dso_local i32 @GTK_FILE_CHOOSER(i32*) #1

declare dso_local i32 @open_media(i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @gtk_widget_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
