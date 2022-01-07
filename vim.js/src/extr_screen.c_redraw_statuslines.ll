; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_screen.c_redraw_statuslines.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_screen.c_redraw_statuslines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_4__* }

@firstwin = common dso_local global %struct.TYPE_4__* null, align 8
@redraw_tabline = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redraw_statuslines() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @firstwin, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %1, align 8
  br label %3

3:                                                ; preds = %15, %0
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %5 = icmp ne %struct.TYPE_4__* %4, null
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %13 = call i32 @win_redr_status(%struct.TYPE_4__* %12)
  br label %14

14:                                               ; preds = %11, %6
  br label %15

15:                                               ; preds = %14
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %1, align 8
  br label %3

19:                                               ; preds = %3
  %20 = load i64, i64* @redraw_tabline, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 (...) @draw_tabline()
  br label %24

24:                                               ; preds = %22, %19
  ret void
}

declare dso_local i32 @win_redr_status(%struct.TYPE_4__*) #1

declare dso_local i32 @draw_tabline(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
