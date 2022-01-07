; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_is_transient_for.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_is_transient_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.sway_view*, %struct.sway_view*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @view_is_transient_for(%struct.sway_view* %0, %struct.sway_view* %1) #0 {
  %3 = alloca %struct.sway_view*, align 8
  %4 = alloca %struct.sway_view*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %3, align 8
  store %struct.sway_view* %1, %struct.sway_view** %4, align 8
  %5 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %6 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64 (%struct.sway_view*, %struct.sway_view*)*, i64 (%struct.sway_view*, %struct.sway_view*)** %8, align 8
  %10 = icmp ne i64 (%struct.sway_view*, %struct.sway_view*)* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %13 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64 (%struct.sway_view*, %struct.sway_view*)*, i64 (%struct.sway_view*, %struct.sway_view*)** %15, align 8
  %17 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %18 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %19 = call i64 %16(%struct.sway_view* %17, %struct.sway_view* %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %11, %2
  %22 = phi i1 [ false, %2 ], [ %20, %11 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
