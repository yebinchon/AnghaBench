; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui.c_gui_check_colors.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui.c_gui_check_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@INVALCOLOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"White\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Black\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_check_colors() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 1), align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 8
  %6 = load i64, i64* @INVALCOLOR, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %4, %0
  %9 = call i32 @gui_set_bg_color(i32* bitcast ([6 x i8]* @.str to i32*))
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 1), align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 8
  %15 = load i64, i64* @INVALCOLOR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %8
  %18 = call i32 @gui_set_fg_color(i32* bitcast ([6 x i8]* @.str.1 to i32*))
  br label %19

19:                                               ; preds = %17, %13
  br label %20

20:                                               ; preds = %19, %4
  ret void
}

declare dso_local i32 @gui_set_bg_color(i32*) #1

declare dso_local i32 @gui_set_fg_color(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
