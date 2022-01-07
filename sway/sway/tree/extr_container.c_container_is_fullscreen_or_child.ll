; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_is_fullscreen_or_child.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_is_fullscreen_or_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { %struct.sway_container*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @container_is_fullscreen_or_child(%struct.sway_container* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sway_container*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %3, align 8
  br label %4

4:                                                ; preds = %14, %1
  %5 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %6 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  store i32 1, i32* %2, align 4
  br label %18

10:                                               ; preds = %4
  %11 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %12 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %11, i32 0, i32 0
  %13 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  store %struct.sway_container* %13, %struct.sway_container** %3, align 8
  br label %14

14:                                               ; preds = %10
  %15 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %16 = icmp ne %struct.sway_container* %15, null
  br i1 %16, label %4, label %17

17:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %9
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
