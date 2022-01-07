; ModuleID = '/home/carl/AnghaBench/tmux/extr_layout-set.c_layout_set_select.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_layout-set.c_layout_set_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.window*)* }
%struct.window = type { i32 }

@layout_sets = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @layout_set_select(%struct.window* %0, i32 %1) #0 {
  %3 = alloca %struct.window*, align 8
  %4 = alloca i32, align 4
  store %struct.window* %0, %struct.window** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @layout_sets, align 8
  %7 = call i32 @nitems(%struct.TYPE_3__* %6)
  %8 = sub nsw i32 %7, 1
  %9 = icmp sgt i32 %5, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @layout_sets, align 8
  %12 = call i32 @nitems(%struct.TYPE_3__* %11)
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @layout_sets, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.window*)*, i32 (%struct.window*)** %19, align 8
  %21 = icmp ne i32 (%struct.window*)* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %14
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @layout_sets, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.window*)*, i32 (%struct.window*)** %27, align 8
  %29 = load %struct.window*, %struct.window** %3, align 8
  %30 = call i32 %28(%struct.window* %29)
  br label %31

31:                                               ; preds = %22, %14
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.window*, %struct.window** %3, align 8
  %34 = getelementptr inbounds %struct.window, %struct.window* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
