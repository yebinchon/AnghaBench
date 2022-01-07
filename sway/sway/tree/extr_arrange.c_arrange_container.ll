; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_arrange.c_arrange_container.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_arrange.c_arrange_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.sway_container = type { i32, i32, i32, i64 }
%struct.wlr_box = type { i32 }

@config = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arrange_container(%struct.sway_container* %0) #0 {
  %2 = alloca %struct.sway_container*, align 8
  %3 = alloca %struct.wlr_box, align 4
  store %struct.sway_container* %0, %struct.sway_container** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %35

9:                                                ; preds = %1
  %10 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %11 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %16 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @view_autoconfigure(i64 %17)
  %19 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %20 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %19, i32 0, i32 0
  %21 = call i32 @node_set_dirty(i32* %20)
  br label %35

22:                                               ; preds = %9
  %23 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %24 = call i32 @container_get_box(%struct.sway_container* %23, %struct.wlr_box* %3)
  %25 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %26 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %29 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @arrange_children(i32 %27, i32 %30, %struct.wlr_box* %3)
  %32 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %33 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %32, i32 0, i32 0
  %34 = call i32 @node_set_dirty(i32* %33)
  br label %35

35:                                               ; preds = %22, %14, %8
  ret void
}

declare dso_local i32 @view_autoconfigure(i64) #1

declare dso_local i32 @node_set_dirty(i32*) #1

declare dso_local i32 @container_get_box(%struct.sway_container*, %struct.wlr_box*) #1

declare dso_local i32 @arrange_children(i32, i32, %struct.wlr_box*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
