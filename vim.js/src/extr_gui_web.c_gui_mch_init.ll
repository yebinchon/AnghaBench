; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_web.c_gui_mch_init.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_web.c_gui_mch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i8*, i64, i64, i64, i64 }

@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@TRUE = common dso_local global i32 0, align 4
@Rows = common dso_local global i32 0, align 4
@Columns = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gui_mch_init() #0 {
  %1 = call i32 (...) @vimjs_init()
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 8), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 7), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 5), align 8
  %2 = call i8* @gui_get_color(i32* bitcast ([6 x i8]* @.str to i32*))
  store i8* %2, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 3), align 8
  %3 = call i8* @gui_get_color(i32* bitcast ([6 x i8]* @.str.1 to i32*))
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 1), align 8
  %4 = call i32 (...) @set_normal_colors()
  %5 = call i32 (...) @gui_check_colors()
  %6 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 3), align 8
  store i8* %6, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 4), align 8
  %7 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 1), align 8
  store i8* %7, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 2), align 8
  %8 = load i32, i32* @TRUE, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 8
  %9 = call i32 (...) @vimjs_get_window_height()
  %10 = call i32 (...) @vimjs_get_char_height()
  %11 = sdiv i32 %9, %10
  store i32 %11, i32* @Rows, align 4
  %12 = call i32 (...) @vimjs_get_window_width()
  %13 = call i32 (...) @vimjs_get_char_width()
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* @Columns, align 4
  %15 = load i32, i32* @OK, align 4
  ret i32 %15
}

declare dso_local i32 @vimjs_init(...) #1

declare dso_local i8* @gui_get_color(i32*) #1

declare dso_local i32 @set_normal_colors(...) #1

declare dso_local i32 @gui_check_colors(...) #1

declare dso_local i32 @vimjs_get_window_height(...) #1

declare dso_local i32 @vimjs_get_char_height(...) #1

declare dso_local i32 @vimjs_get_window_width(...) #1

declare dso_local i32 @vimjs_get_char_width(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
