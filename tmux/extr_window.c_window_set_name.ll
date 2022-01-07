; ModuleID = '/home/carl/AnghaBench/tmux/extr_window.c_window_set_name.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window.c_window_set_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window = type { i32 }

@VIS_OCTAL = common dso_local global i32 0, align 4
@VIS_CSTYLE = common dso_local global i32 0, align 4
@VIS_TAB = common dso_local global i32 0, align 4
@VIS_NL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"window-renamed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @window_set_name(%struct.window* %0, i8* %1) #0 {
  %3 = alloca %struct.window*, align 8
  %4 = alloca i8*, align 8
  store %struct.window* %0, %struct.window** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.window*, %struct.window** %3, align 8
  %6 = getelementptr inbounds %struct.window, %struct.window* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @free(i32 %7)
  %9 = load %struct.window*, %struct.window** %3, align 8
  %10 = getelementptr inbounds %struct.window, %struct.window* %9, i32 0, i32 0
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @VIS_OCTAL, align 4
  %13 = load i32, i32* @VIS_CSTYLE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @VIS_TAB, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @VIS_NL, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @utf8_stravis(i32* %10, i8* %11, i32 %18)
  %20 = load %struct.window*, %struct.window** %3, align 8
  %21 = call i32 @notify_window(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.window* %20)
  ret void
}

declare dso_local i32 @free(i32) #1

declare dso_local i32 @utf8_stravis(i32*, i8*, i32) #1

declare dso_local i32 @notify_window(i8*, %struct.window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
