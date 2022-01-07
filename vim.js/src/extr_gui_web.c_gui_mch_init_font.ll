; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_web.c_gui_mch_init_font.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_web.c_gui_mch_init_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i32, i32, i32 }

@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"bold \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"italic \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"bold italic \00", align 1
@OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gui_mch_init_font(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [100 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = call i32 @vimjs_init_font(i8* %9)
  %11 = call i32 (...) @vimjs_get_char_width()
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 6), align 8
  %12 = call i32 (...) @vimjs_get_char_height()
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 4), align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 4), align 8
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 5), align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i8* @vim_strsave(i32* %14)
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 3), align 8
  %16 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %17 = call i32 @vim_strncpy(i32* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 99)
  %18 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @vim_strcat(i32* %18, i32* %19, i32 100)
  %21 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %22 = call i8* @vim_strsave(i32* %21)
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 2), align 8
  %23 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %24 = call i32 @vim_strncpy(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 99)
  %25 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @vim_strcat(i32* %25, i32* %26, i32 100)
  %28 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %29 = call i8* @vim_strsave(i32* %28)
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 1), align 8
  %30 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %31 = call i32 @vim_strncpy(i32* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 99)
  %32 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @vim_strcat(i32* %32, i32* %33, i32 100)
  %35 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %36 = call i8* @vim_strsave(i32* %35)
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 8
  %37 = call i32 (...) @vimjs_get_window_width()
  store i32 %37, i32* %6, align 4
  %38 = call i32 (...) @vimjs_get_window_height()
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @gui_resize_shell(i32 %39, i32 %40)
  %42 = load i32, i32* @OK, align 4
  ret i32 %42
}

declare dso_local i32 @vimjs_init_font(i8*) #1

declare dso_local i32 @vimjs_get_char_width(...) #1

declare dso_local i32 @vimjs_get_char_height(...) #1

declare dso_local i8* @vim_strsave(i32*) #1

declare dso_local i32 @vim_strncpy(i32*, i8*, i32) #1

declare dso_local i32 @vim_strcat(i32*, i32*, i32) #1

declare dso_local i32 @vimjs_get_window_width(...) #1

declare dso_local i32 @vimjs_get_window_height(...) #1

declare dso_local i32 @gui_resize_shell(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
