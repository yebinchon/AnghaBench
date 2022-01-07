; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_is_only_visible.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_is_only_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.sway_container* }
%struct.sway_container = type { %struct.sway_container* }
%struct.TYPE_3__ = type { i32 }

@L_TABBED = common dso_local global i32 0, align 4
@L_STACKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @view_is_only_visible(%struct.sway_view* %0) #0 {
  %2 = alloca %struct.sway_view*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %2, align 8
  store i32 1, i32* %3, align 4
  %7 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %8 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %7, i32 0, i32 0
  %9 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  store %struct.sway_container* %9, %struct.sway_container** %4, align 8
  br label %10

10:                                               ; preds = %35, %1
  %11 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %12 = icmp ne %struct.sway_container* %11, null
  br i1 %12, label %13, label %39

13:                                               ; preds = %10
  %14 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %15 = call i32 @container_parent_layout(%struct.sway_container* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @L_TABBED, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @L_STACKED, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %25 = call %struct.TYPE_3__* @container_get_siblings(%struct.sway_container* %24)
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %6, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %39

34:                                               ; preds = %28, %23
  br label %35

35:                                               ; preds = %34, %19, %13
  %36 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %37 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %36, i32 0, i32 0
  %38 = load %struct.sway_container*, %struct.sway_container** %37, align 8
  store %struct.sway_container* %38, %struct.sway_container** %4, align 8
  br label %10

39:                                               ; preds = %33, %10
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @container_parent_layout(%struct.sway_container*) #1

declare dso_local %struct.TYPE_3__* @container_get_siblings(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
