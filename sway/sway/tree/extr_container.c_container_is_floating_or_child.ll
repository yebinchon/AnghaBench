; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_is_floating_or_child.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_is_floating_or_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { %struct.sway_container* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @container_is_floating_or_child(%struct.sway_container* %0) #0 {
  %2 = alloca %struct.sway_container*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %2, align 8
  br label %3

3:                                                ; preds = %8, %1
  %4 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %5 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %4, i32 0, i32 0
  %6 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %7 = icmp ne %struct.sway_container* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %10 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %9, i32 0, i32 0
  %11 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  store %struct.sway_container* %11, %struct.sway_container** %2, align 8
  br label %3

12:                                               ; preds = %3
  %13 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %14 = call i32 @container_is_floating(%struct.sway_container* %13)
  ret i32 %14
}

declare dso_local i32 @container_is_floating(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
