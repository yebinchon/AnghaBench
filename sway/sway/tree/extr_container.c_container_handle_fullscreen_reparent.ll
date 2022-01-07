; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_handle_fullscreen_reparent.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_handle_fullscreen_reparent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sway_container* }

@FULLSCREEN_WORKSPACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_handle_fullscreen_reparent(%struct.sway_container* %0) #0 {
  %2 = alloca %struct.sway_container*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %2, align 8
  %3 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %4 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @FULLSCREEN_WORKSPACE, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %10 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %15 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  %19 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %20 = icmp eq %struct.sway_container* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13, %8, %1
  br label %46

22:                                               ; preds = %13
  %23 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %24 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.sway_container*, %struct.sway_container** %26, align 8
  %28 = icmp ne %struct.sway_container* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %31 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.sway_container*, %struct.sway_container** %33, align 8
  %35 = call i32 @container_fullscreen_disable(%struct.sway_container* %34)
  br label %36

36:                                               ; preds = %29, %22
  %37 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %38 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %39 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store %struct.sway_container* %37, %struct.sway_container** %41, align 8
  %42 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %43 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = call i32 @arrange_workspace(%struct.TYPE_2__* %44)
  br label %46

46:                                               ; preds = %36, %21
  ret void
}

declare dso_local i32 @container_fullscreen_disable(%struct.sway_container*) #1

declare dso_local i32 @arrange_workspace(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
