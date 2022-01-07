; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_set_floating.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_set_floating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i64, i64, i32, i32, %struct.TYPE_2__*, i32, i32, i64, %struct.sway_container*, %struct.sway_workspace* }
%struct.TYPE_2__ = type { i64 }
%struct.sway_workspace = type { i32, i32 }
%struct.sway_seat = type { i32 }

@B_CSD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"floating\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_set_floating(%struct.sway_container* %0, i32 %1) #0 {
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sway_seat*, align 8
  %6 = alloca %struct.sway_workspace*, align 8
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca %struct.sway_container*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %10 = call i32 @container_is_floating(%struct.sway_container* %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %138

14:                                               ; preds = %2
  %15 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %15, %struct.sway_seat** %5, align 8
  %16 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %17 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %16, i32 0, i32 9
  %18 = load %struct.sway_workspace*, %struct.sway_workspace** %17, align 8
  store %struct.sway_workspace* %18, %struct.sway_workspace** %6, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %61

21:                                               ; preds = %14
  %22 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %23 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %22, i32 0, i32 8
  %24 = load %struct.sway_container*, %struct.sway_container** %23, align 8
  store %struct.sway_container* %24, %struct.sway_container** %7, align 8
  %25 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %26 = call i32 @container_detach(%struct.sway_container* %25)
  %27 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %28 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %29 = call i32 @workspace_add_floating(%struct.sway_workspace* %27, %struct.sway_container* %28)
  %30 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %31 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %50

34:                                               ; preds = %21
  %35 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %36 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %35, i32 0, i32 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = call i32 @view_set_tiled(%struct.TYPE_2__* %37, i32 0)
  %39 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %40 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load i32, i32* @B_CSD, align 4
  %47 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %48 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %34
  br label %50

50:                                               ; preds = %49, %21
  %51 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %52 = call i32 @container_floating_set_default_size(%struct.sway_container* %51)
  %53 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %54 = call i32 @container_floating_resize_and_center(%struct.sway_container* %53)
  %55 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %56 = icmp ne %struct.sway_container* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %59 = call i32 @container_reap_empty(%struct.sway_container* %58)
  br label %60

60:                                               ; preds = %57, %50
  br label %133

61:                                               ; preds = %14
  %62 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %63 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %68 = call i32 @root_scratchpad_remove_container(%struct.sway_container* %67)
  br label %69

69:                                               ; preds = %66, %61
  %70 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %71 = call i32 @container_detach(%struct.sway_container* %70)
  %72 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %73 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %74 = call %struct.sway_container* @seat_get_focus_inactive_tiling(%struct.sway_seat* %72, %struct.sway_workspace* %73)
  store %struct.sway_container* %74, %struct.sway_container** %8, align 8
  %75 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %76 = icmp ne %struct.sway_container* %75, null
  br i1 %76, label %77, label %91

77:                                               ; preds = %69
  %78 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %79 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %80 = call i32 @container_add_sibling(%struct.sway_container* %78, %struct.sway_container* %79, i32 1)
  %81 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %82 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %85 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 4
  %86 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %87 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %90 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 8
  br label %105

91:                                               ; preds = %69
  %92 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %93 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %94 = call i32 @workspace_add_tiling(%struct.sway_workspace* %92, %struct.sway_container* %93)
  %95 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %96 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %99 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 4
  %100 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %101 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %104 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %91, %77
  %106 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %107 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %106, i32 0, i32 4
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = icmp ne %struct.TYPE_2__* %108, null
  br i1 %109, label %110, label %128

110:                                              ; preds = %105
  %111 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %112 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %111, i32 0, i32 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = call i32 @view_set_tiled(%struct.TYPE_2__* %113, i32 1)
  %115 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %116 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %115, i32 0, i32 4
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %110
  %122 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %123 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %126 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %121, %110
  br label %128

128:                                              ; preds = %127, %105
  %129 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %130 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %129, i32 0, i32 1
  store i64 0, i64* %130, align 8
  %131 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %132 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %131, i32 0, i32 0
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %128, %60
  %134 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %135 = call i32 @container_end_mouse_operation(%struct.sway_container* %134)
  %136 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %137 = call i32 @ipc_event_window(%struct.sway_container* %136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %138

138:                                              ; preds = %133, %13
  ret void
}

declare dso_local i32 @container_is_floating(%struct.sway_container*) #1

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local i32 @container_detach(%struct.sway_container*) #1

declare dso_local i32 @workspace_add_floating(%struct.sway_workspace*, %struct.sway_container*) #1

declare dso_local i32 @view_set_tiled(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @container_floating_set_default_size(%struct.sway_container*) #1

declare dso_local i32 @container_floating_resize_and_center(%struct.sway_container*) #1

declare dso_local i32 @container_reap_empty(%struct.sway_container*) #1

declare dso_local i32 @root_scratchpad_remove_container(%struct.sway_container*) #1

declare dso_local %struct.sway_container* @seat_get_focus_inactive_tiling(%struct.sway_seat*, %struct.sway_workspace*) #1

declare dso_local i32 @container_add_sibling(%struct.sway_container*, %struct.sway_container*, i32) #1

declare dso_local i32 @workspace_add_tiling(%struct.sway_workspace*, %struct.sway_container*) #1

declare dso_local i32 @container_end_mouse_operation(%struct.sway_container*) #1

declare dso_local i32 @ipc_event_window(%struct.sway_container*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
