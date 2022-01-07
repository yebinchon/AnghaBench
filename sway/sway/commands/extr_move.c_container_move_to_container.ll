; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_move.c_container_move_to_container.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_move.c_container_move_to_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { %struct.sway_workspace*, i64, i64, i64, i64, i64 }
%struct.sway_workspace = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"move\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_container*, %struct.sway_container*)* @container_move_to_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @container_move_to_container(%struct.sway_container* %0, %struct.sway_container* %1) #0 {
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca %struct.sway_workspace*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %3, align 8
  store %struct.sway_container* %1, %struct.sway_container** %4, align 8
  %6 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %7 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %8 = icmp eq %struct.sway_container* %6, %7
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %11 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %12 = call i64 @container_has_ancestor(%struct.sway_container* %10, %struct.sway_container* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %16 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %17 = call i64 @container_has_ancestor(%struct.sway_container* %15, %struct.sway_container* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %9, %2
  br label %84

20:                                               ; preds = %14
  %21 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %22 = call i64 @container_is_floating(%struct.sway_container* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %26 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %27 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %26, i32 0, i32 0
  %28 = load %struct.sway_workspace*, %struct.sway_workspace** %27, align 8
  %29 = call i32 @container_move_to_workspace(%struct.sway_container* %25, %struct.sway_workspace* %28)
  br label %84

30:                                               ; preds = %20
  %31 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %32 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %31, i32 0, i32 0
  %33 = load %struct.sway_workspace*, %struct.sway_workspace** %32, align 8
  store %struct.sway_workspace* %33, %struct.sway_workspace** %5, align 8
  %34 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %35 = call i32 @container_detach(%struct.sway_container* %34)
  %36 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %37 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %39 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %38, i32 0, i32 5
  store i64 0, i64* %39, align 8
  %40 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %41 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %43 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %45 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %30
  %49 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %50 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %51 = call i32 @container_add_sibling(%struct.sway_container* %49, %struct.sway_container* %50, i32 1)
  br label %56

52:                                               ; preds = %30
  %53 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %54 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %55 = call i32 @container_add_child(%struct.sway_container* %53, %struct.sway_container* %54)
  br label %56

56:                                               ; preds = %52, %48
  %57 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %58 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %63 = call i32 @ipc_event_window(%struct.sway_container* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %56
  %65 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %66 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %65, i32 0, i32 0
  %67 = load %struct.sway_workspace*, %struct.sway_workspace** %66, align 8
  %68 = call i32 @workspace_focus_fullscreen(%struct.sway_workspace* %67)
  %69 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %70 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %69, i32 0, i32 0
  %71 = load %struct.sway_workspace*, %struct.sway_workspace** %70, align 8
  %72 = call i32 @workspace_detect_urgent(%struct.sway_workspace* %71)
  %73 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %74 = icmp ne %struct.sway_workspace* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %64
  %76 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %77 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %78 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %77, i32 0, i32 0
  %79 = load %struct.sway_workspace*, %struct.sway_workspace** %78, align 8
  %80 = icmp ne %struct.sway_workspace* %76, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %83 = call i32 @workspace_detect_urgent(%struct.sway_workspace* %82)
  br label %84

84:                                               ; preds = %19, %24, %81, %75, %64
  ret void
}

declare dso_local i64 @container_has_ancestor(%struct.sway_container*, %struct.sway_container*) #1

declare dso_local i64 @container_is_floating(%struct.sway_container*) #1

declare dso_local i32 @container_move_to_workspace(%struct.sway_container*, %struct.sway_workspace*) #1

declare dso_local i32 @container_detach(%struct.sway_container*) #1

declare dso_local i32 @container_add_sibling(%struct.sway_container*, %struct.sway_container*, i32) #1

declare dso_local i32 @container_add_child(%struct.sway_container*, %struct.sway_container*) #1

declare dso_local i32 @ipc_event_window(%struct.sway_container*, i8*) #1

declare dso_local i32 @workspace_focus_fullscreen(%struct.sway_workspace*) #1

declare dso_local i32 @workspace_detect_urgent(%struct.sway_workspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
