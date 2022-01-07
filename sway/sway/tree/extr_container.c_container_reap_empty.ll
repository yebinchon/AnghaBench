; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_reap_empty.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_reap_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { %struct.sway_container*, %struct.TYPE_2__*, %struct.sway_workspace*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.sway_workspace = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_reap_empty(%struct.sway_container* %0) #0 {
  %2 = alloca %struct.sway_container*, align 8
  %3 = alloca %struct.sway_workspace*, align 8
  %4 = alloca %struct.sway_container*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %2, align 8
  %5 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %6 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %38

10:                                               ; preds = %1
  %11 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %12 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %11, i32 0, i32 2
  %13 = load %struct.sway_workspace*, %struct.sway_workspace** %12, align 8
  store %struct.sway_workspace* %13, %struct.sway_workspace** %3, align 8
  br label %14

14:                                               ; preds = %25, %10
  %15 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %16 = icmp ne %struct.sway_container* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %19 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %38

25:                                               ; preds = %17
  %26 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %27 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %26, i32 0, i32 0
  %28 = load %struct.sway_container*, %struct.sway_container** %27, align 8
  store %struct.sway_container* %28, %struct.sway_container** %4, align 8
  %29 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %30 = call i32 @container_begin_destroy(%struct.sway_container* %29)
  %31 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  store %struct.sway_container* %31, %struct.sway_container** %2, align 8
  br label %14

32:                                               ; preds = %14
  %33 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %34 = icmp ne %struct.sway_workspace* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %37 = call i32 @workspace_consider_destroy(%struct.sway_workspace* %36)
  br label %38

38:                                               ; preds = %9, %24, %35, %32
  ret void
}

declare dso_local i32 @container_begin_destroy(%struct.sway_container*) #1

declare dso_local i32 @workspace_consider_destroy(%struct.sway_workspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
