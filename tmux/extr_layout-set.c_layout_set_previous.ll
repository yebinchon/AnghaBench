; ModuleID = '/home/carl/AnghaBench/tmux/extr_layout-set.c_layout_set_previous.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_layout-set.c_layout_set_previous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.window*)* }
%struct.window = type { i32 }

@layout_sets = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @layout_set_previous(%struct.window* %0) #0 {
  %2 = alloca %struct.window*, align 8
  %3 = alloca i64, align 8
  store %struct.window* %0, %struct.window** %2, align 8
  %4 = load %struct.window*, %struct.window** %2, align 8
  %5 = getelementptr inbounds %struct.window, %struct.window* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @layout_sets, align 8
  %10 = call i32 @nitems(%struct.TYPE_3__* %9)
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %3, align 8
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.window*, %struct.window** %2, align 8
  %15 = getelementptr inbounds %struct.window, %struct.window* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @layout_sets, align 8
  %22 = call i32 @nitems(%struct.TYPE_3__* %21)
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %3, align 8
  br label %28

25:                                               ; preds = %13
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, -1
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %25, %20
  br label %29

29:                                               ; preds = %28, %8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @layout_sets, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.window*)*, i32 (%struct.window*)** %33, align 8
  %35 = icmp ne i32 (%struct.window*)* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @layout_sets, align 8
  %38 = load i64, i64* %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32 (%struct.window*)*, i32 (%struct.window*)** %40, align 8
  %42 = load %struct.window*, %struct.window** %2, align 8
  %43 = call i32 %41(%struct.window* %42)
  br label %44

44:                                               ; preds = %36, %29
  %45 = load i64, i64* %3, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.window*, %struct.window** %2, align 8
  %48 = getelementptr inbounds %struct.window, %struct.window* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i64, i64* %3, align 8
  ret i64 %49
}

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
