; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_has_ancestor.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_has_ancestor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { %struct.sway_container* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @container_has_ancestor(%struct.sway_container* %0, %struct.sway_container* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca %struct.sway_container*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %4, align 8
  store %struct.sway_container* %1, %struct.sway_container** %5, align 8
  br label %6

6:                                                ; preds = %17, %2
  %7 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %8 = icmp ne %struct.sway_container* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %11 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %10, i32 0, i32 0
  %12 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  store %struct.sway_container* %12, %struct.sway_container** %4, align 8
  %13 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %14 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %15 = icmp eq %struct.sway_container* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %19

17:                                               ; preds = %9
  br label %6

18:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %16
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
