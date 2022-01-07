; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_raise_floating.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_raise_floating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { %struct.TYPE_2__*, %struct.sway_container* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_raise_floating(%struct.sway_container* %0) #0 {
  %2 = alloca %struct.sway_container*, align 8
  %3 = alloca %struct.sway_container*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %2, align 8
  %4 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  store %struct.sway_container* %4, %struct.sway_container** %3, align 8
  br label %5

5:                                                ; preds = %10, %1
  %6 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %7 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %6, i32 0, i32 1
  %8 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %9 = icmp ne %struct.sway_container* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %12 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %11, i32 0, i32 1
  %13 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  store %struct.sway_container* %13, %struct.sway_container** %3, align 8
  br label %5

14:                                               ; preds = %5
  %15 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %16 = call i64 @container_is_floating(%struct.sway_container* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %20 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %25 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %30 = call i32 @list_move_to_end(i32 %28, %struct.sway_container* %29)
  %31 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %32 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @node_set_dirty(i32* %34)
  br label %36

36:                                               ; preds = %23, %18, %14
  ret void
}

declare dso_local i64 @container_is_floating(%struct.sway_container*) #1

declare dso_local i32 @list_move_to_end(i32, %struct.sway_container*) #1

declare dso_local i32 @node_set_dirty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
