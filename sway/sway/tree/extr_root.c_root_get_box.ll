; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_root.c_root_get_box.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_root.c_root_get_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_root = type { i32, i32, i32, i32 }
%struct.wlr_box = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @root_get_box(%struct.sway_root* %0, %struct.wlr_box* %1) #0 {
  %3 = alloca %struct.sway_root*, align 8
  %4 = alloca %struct.wlr_box*, align 8
  store %struct.sway_root* %0, %struct.sway_root** %3, align 8
  store %struct.wlr_box* %1, %struct.wlr_box** %4, align 8
  %5 = load %struct.sway_root*, %struct.sway_root** %3, align 8
  %6 = getelementptr inbounds %struct.sway_root, %struct.sway_root* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %9 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 4
  %10 = load %struct.sway_root*, %struct.sway_root** %3, align 8
  %11 = getelementptr inbounds %struct.sway_root, %struct.sway_root* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %14 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.sway_root*, %struct.sway_root** %3, align 8
  %16 = getelementptr inbounds %struct.sway_root, %struct.sway_root* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %19 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sway_root*, %struct.sway_root** %3, align 8
  %21 = getelementptr inbounds %struct.sway_root, %struct.sway_root* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %24 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
