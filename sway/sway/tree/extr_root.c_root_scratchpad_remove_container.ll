; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_root.c_root_scratchpad_remove_container.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_root.c_root_scratchpad_remove_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sway_container = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Container is not in scratchpad\00", align 1
@root = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"move\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @root_scratchpad_remove_container(%struct.sway_container* %0) #0 {
  %2 = alloca %struct.sway_container*, align 8
  %3 = alloca i32, align 4
  store %struct.sway_container* %0, %struct.sway_container** %2, align 8
  %4 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %5 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @sway_assert(i32 %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %12 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @root, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %17 = call i32 @list_find(i32 %15, %struct.sway_container* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %28

20:                                               ; preds = %10
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @root, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @list_del(i32 %23, i32 %24)
  %26 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %27 = call i32 @ipc_event_window(%struct.sway_container* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %9, %20, %10
  ret void
}

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @list_find(i32, %struct.sway_container*) #1

declare dso_local i32 @list_del(i32, i32) #1

declare dso_local i32 @ipc_event_window(%struct.sway_container*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
