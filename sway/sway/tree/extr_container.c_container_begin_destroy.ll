; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_begin_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_begin_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i64, %struct.TYPE_6__*, i64, i64, %struct.TYPE_7__, i64 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"close\00", align 1
@FULLSCREEN_WORKSPACE = common dso_local global i64 0, align 8
@FULLSCREEN_GLOBAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_begin_destroy(%struct.sway_container* %0) #0 {
  %2 = alloca %struct.sway_container*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %2, align 8
  %3 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %4 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %3, i32 0, i32 5
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %9 = call i32 @ipc_event_window(%struct.sway_container* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %12 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FULLSCREEN_WORKSPACE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %18 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %23 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %21, %16, %10
  %27 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %28 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %33 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FULLSCREEN_GLOBAL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %39 = call i32 @container_fullscreen_disable(%struct.sway_container* %38)
  br label %40

40:                                               ; preds = %37, %31, %26
  %41 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %42 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %46 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %45, i32 0, i32 4
  %47 = call i32 @wl_signal_emit(i32* %44, %struct.TYPE_7__* %46)
  %48 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %49 = call i32 @container_end_mouse_operation(%struct.sway_container* %48)
  %50 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %51 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %54 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %53, i32 0, i32 4
  %55 = call i32 @node_set_dirty(%struct.TYPE_7__* %54)
  %56 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %57 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %40
  %61 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %62 = call i32 @root_scratchpad_remove_container(%struct.sway_container* %61)
  br label %63

63:                                               ; preds = %60, %40
  %64 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %65 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @FULLSCREEN_GLOBAL, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %71 = call i32 @container_fullscreen_disable(%struct.sway_container* %70)
  br label %72

72:                                               ; preds = %69, %63
  %73 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %74 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %79 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %78, i32 0, i32 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = icmp ne %struct.TYPE_6__* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %77, %72
  %83 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %84 = call i32 @container_detach(%struct.sway_container* %83)
  br label %85

85:                                               ; preds = %82, %77
  ret void
}

declare dso_local i32 @ipc_event_window(%struct.sway_container*, i8*) #1

declare dso_local i32 @container_fullscreen_disable(%struct.sway_container*) #1

declare dso_local i32 @wl_signal_emit(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @container_end_mouse_operation(%struct.sway_container*) #1

declare dso_local i32 @node_set_dirty(%struct.TYPE_7__*) #1

declare dso_local i32 @root_scratchpad_remove_container(%struct.sway_container*) #1

declare dso_local i32 @container_detach(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
