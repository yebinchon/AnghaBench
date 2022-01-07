; ModuleID = '/home/carl/AnghaBench/tig/src/extr_display.c_report_clear.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_display.c_report_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }

@display = common dso_local global %struct.view** null, align 8
@current_view = common dso_local global i64 0, align 8
@input_mode = common dso_local global i32 0, align 4
@status_empty = common dso_local global i32 0, align 4
@status_win = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @report_clear() #0 {
  %1 = alloca %struct.view*, align 8
  %2 = load %struct.view**, %struct.view*** @display, align 8
  %3 = load i64, i64* @current_view, align 8
  %4 = getelementptr inbounds %struct.view*, %struct.view** %2, i64 %3
  %5 = load %struct.view*, %struct.view** %4, align 8
  store %struct.view* %5, %struct.view** %1, align 8
  %6 = load %struct.view*, %struct.view** %1, align 8
  %7 = icmp ne %struct.view* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %22

9:                                                ; preds = %0
  %10 = load i32, i32* @input_mode, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @status_empty, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @status_win, align 4
  %17 = call i32 @werase(i32 %16)
  %18 = call i32 (...) @doupdate()
  br label %19

19:                                               ; preds = %15, %12, %9
  store i32 1, i32* @status_empty, align 4
  %20 = load %struct.view*, %struct.view** %1, align 8
  %21 = call i32 @update_view_title(%struct.view* %20)
  br label %22

22:                                               ; preds = %19, %8
  ret void
}

declare dso_local i32 @werase(i32) #1

declare dso_local i32 @doupdate(...) #1

declare dso_local i32 @update_view_title(%struct.view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
