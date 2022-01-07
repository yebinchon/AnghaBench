; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_is_transient_for.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_is_transient_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.sway_container = type { i64 }

@config = common dso_local global %struct.TYPE_2__* null, align 8
@POPUP_SMART = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @container_is_transient_for(%struct.sway_container* %0, %struct.sway_container* %1) #0 {
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca %struct.sway_container*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %3, align 8
  store %struct.sway_container* %1, %struct.sway_container** %4, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @POPUP_SMART, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %12 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %10
  %16 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %17 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %22 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %25 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @view_is_transient_for(i64 %23, i64 %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %20, %15, %10, %2
  %30 = phi i1 [ false, %15 ], [ false, %10 ], [ false, %2 ], [ %28, %20 ]
  %31 = zext i1 %30 to i32
  ret i32 %31
}

declare dso_local i64 @view_is_transient_for(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
