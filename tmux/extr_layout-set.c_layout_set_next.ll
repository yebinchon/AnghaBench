; ModuleID = '/home/carl/AnghaBench/tmux/extr_layout-set.c_layout_set_next.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_layout-set.c_layout_set_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.window*)* }
%struct.window = type { i32 }

@layout_sets = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @layout_set_next(%struct.window* %0) #0 {
  %2 = alloca %struct.window*, align 8
  %3 = alloca i32, align 4
  store %struct.window* %0, %struct.window** %2, align 8
  %4 = load %struct.window*, %struct.window** %2, align 8
  %5 = getelementptr inbounds %struct.window, %struct.window* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %21

9:                                                ; preds = %1
  %10 = load %struct.window*, %struct.window** %2, align 8
  %11 = getelementptr inbounds %struct.window, %struct.window* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @layout_sets, align 8
  %16 = call i32 @nitems(%struct.TYPE_3__* %15)
  %17 = sub nsw i32 %16, 1
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %9
  br label %21

21:                                               ; preds = %20, %8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @layout_sets, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.window*)*, i32 (%struct.window*)** %26, align 8
  %28 = icmp ne i32 (%struct.window*)* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @layout_sets, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct.window*)*, i32 (%struct.window*)** %34, align 8
  %36 = load %struct.window*, %struct.window** %2, align 8
  %37 = call i32 %35(%struct.window* %36)
  br label %38

38:                                               ; preds = %29, %21
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.window*, %struct.window** %2, align 8
  %41 = getelementptr inbounds %struct.window, %struct.window* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
