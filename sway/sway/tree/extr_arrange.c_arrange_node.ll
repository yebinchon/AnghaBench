; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_arrange.c_arrange_node.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_arrange.c_arrange_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_node = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arrange_node(%struct.sway_node* %0) #0 {
  %2 = alloca %struct.sway_node*, align 8
  store %struct.sway_node* %0, %struct.sway_node** %2, align 8
  %3 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %4 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %23 [
    i32 129, label %6
    i32 130, label %8
    i32 128, label %13
    i32 131, label %18
  ]

6:                                                ; preds = %1
  %7 = call i32 (...) @arrange_root()
  br label %23

8:                                                ; preds = %1
  %9 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %10 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @arrange_output(i32 %11)
  br label %23

13:                                               ; preds = %1
  %14 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %15 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @arrange_workspace(i32 %16)
  br label %23

18:                                               ; preds = %1
  %19 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %20 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @arrange_container(i32 %21)
  br label %23

23:                                               ; preds = %1, %18, %13, %8, %6
  ret void
}

declare dso_local i32 @arrange_root(...) #1

declare dso_local i32 @arrange_output(i32) #1

declare dso_local i32 @arrange_workspace(i32) #1

declare dso_local i32 @arrange_container(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
