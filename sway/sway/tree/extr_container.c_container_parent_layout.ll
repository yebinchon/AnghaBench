; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_parent_layout.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_parent_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@L_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @container_parent_layout(%struct.sway_container* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sway_container*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %3, align 8
  %4 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %5 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %10 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %2, align 4
  br label %27

14:                                               ; preds = %1
  %15 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %16 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %21 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %2, align 4
  br label %27

25:                                               ; preds = %14
  %26 = load i32, i32* @L_NONE, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %19, %8
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
