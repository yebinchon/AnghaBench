; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_output_for_each_surface.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_output_for_each_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.sway_container* }
%struct.sway_container = type { i32 }
%struct.sway_output = type { i32* }
%struct.surface_iterator_data = type { i8*, %struct.sway_output*, i32 }
%struct.sway_workspace = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.sway_container* }
%struct.TYPE_4__ = type { i32, %struct.sway_container** }

@root = common dso_local global %struct.TYPE_6__* null, align 8
@ZWLR_LAYER_SHELL_V1_LAYER_BACKGROUND = common dso_local global i64 0, align 8
@ZWLR_LAYER_SHELL_V1_LAYER_BOTTOM = common dso_local global i64 0, align 8
@ZWLR_LAYER_SHELL_V1_LAYER_TOP = common dso_local global i64 0, align 8
@ZWLR_LAYER_SHELL_V1_LAYER_OVERLAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_output*, i32, i8*)* @output_for_each_surface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_for_each_surface(%struct.sway_output* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.sway_output*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.surface_iterator_data, align 8
  %8 = alloca %struct.sway_workspace*, align 8
  %9 = alloca %struct.sway_container*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sway_container*, align 8
  store %struct.sway_output* %0, %struct.sway_output** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %13 = call i64 @output_has_opaque_overlay_layer_surface(%struct.sway_output* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %118

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %7, i32 0, i32 0
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %7, i32 0, i32 1
  %20 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  store %struct.sway_output* %20, %struct.sway_output** %19, align 8
  %21 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %7, i32 0, i32 2
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %21, align 8
  %23 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %24 = call %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output* %23)
  store %struct.sway_workspace* %24, %struct.sway_workspace** %8, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @root, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load %struct.sway_container*, %struct.sway_container** %26, align 8
  store %struct.sway_container* %27, %struct.sway_container** %9, align 8
  %28 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %29 = icmp ne %struct.sway_container* %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %16
  %31 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %32 = icmp ne %struct.sway_workspace* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %134

34:                                               ; preds = %30
  %35 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %36 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.sway_container*, %struct.sway_container** %37, align 8
  store %struct.sway_container* %38, %struct.sway_container** %9, align 8
  br label %39

39:                                               ; preds = %34, %16
  %40 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %41 = icmp ne %struct.sway_container* %40, null
  br i1 %41, label %42, label %87

42:                                               ; preds = %39
  %43 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %44 = call i32 @for_each_surface_container_iterator(%struct.sway_container* %43, %struct.surface_iterator_data* %7)
  %45 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %46 = call i32 @container_for_each_child(%struct.sway_container* %45, i32 (%struct.sway_container*, %struct.surface_iterator_data*)* @for_each_surface_container_iterator, %struct.surface_iterator_data* %7)
  %47 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %48 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %49 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load %struct.sway_container*, %struct.sway_container** %50, align 8
  %52 = icmp eq %struct.sway_container* %47, %51
  br i1 %52, label %53, label %86

53:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %82, %53
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %57 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %55, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %54
  %64 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %65 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load %struct.sway_container**, %struct.sway_container*** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %69, i64 %71
  %73 = load %struct.sway_container*, %struct.sway_container** %72, align 8
  store %struct.sway_container* %73, %struct.sway_container** %11, align 8
  %74 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %75 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %76 = call i64 @container_is_transient_for(%struct.sway_container* %74, %struct.sway_container* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %63
  %79 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %80 = call i32 @for_each_surface_container_iterator(%struct.sway_container* %79, %struct.surface_iterator_data* %7)
  br label %81

81:                                               ; preds = %78, %63
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %54

85:                                               ; preds = %54
  br label %86

86:                                               ; preds = %85, %42
  br label %117

87:                                               ; preds = %39
  %88 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %89 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %90 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @ZWLR_LAYER_SHELL_V1_LAYER_BACKGROUND, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %5, align 4
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 @output_layer_for_each_surface(%struct.sway_output* %88, i32* %93, i32 %94, i8* %95)
  %97 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %98 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %99 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @ZWLR_LAYER_SHELL_V1_LAYER_BOTTOM, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %5, align 4
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @output_layer_for_each_surface(%struct.sway_output* %97, i32* %102, i32 %103, i8* %104)
  %106 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %107 = call i32 @workspace_for_each_container(%struct.sway_workspace* %106, i32 (%struct.sway_container*, %struct.surface_iterator_data*)* @for_each_surface_container_iterator, %struct.surface_iterator_data* %7)
  %108 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %109 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %110 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @ZWLR_LAYER_SHELL_V1_LAYER_TOP, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %5, align 4
  %115 = load i8*, i8** %6, align 8
  %116 = call i32 @output_layer_for_each_surface(%struct.sway_output* %108, i32* %113, i32 %114, i8* %115)
  br label %117

117:                                              ; preds = %87, %86
  br label %118

118:                                              ; preds = %117, %15
  %119 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %120 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %121 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* @ZWLR_LAYER_SHELL_V1_LAYER_OVERLAY, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %5, align 4
  %126 = load i8*, i8** %6, align 8
  %127 = call i32 @output_layer_for_each_surface(%struct.sway_output* %119, i32* %124, i32 %125, i8* %126)
  %128 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** @root, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %5, align 4
  %132 = load i8*, i8** %6, align 8
  %133 = call i32 @output_drag_icons_for_each_surface(%struct.sway_output* %128, i32* %130, i32 %131, i8* %132)
  br label %134

134:                                              ; preds = %118, %33
  ret void
}

declare dso_local i64 @output_has_opaque_overlay_layer_surface(%struct.sway_output*) #1

declare dso_local %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output*) #1

declare dso_local i32 @for_each_surface_container_iterator(%struct.sway_container*, %struct.surface_iterator_data*) #1

declare dso_local i32 @container_for_each_child(%struct.sway_container*, i32 (%struct.sway_container*, %struct.surface_iterator_data*)*, %struct.surface_iterator_data*) #1

declare dso_local i64 @container_is_transient_for(%struct.sway_container*, %struct.sway_container*) #1

declare dso_local i32 @output_layer_for_each_surface(%struct.sway_output*, i32*, i32, i8*) #1

declare dso_local i32 @workspace_for_each_container(%struct.sway_workspace*, i32 (%struct.sway_container*, %struct.surface_iterator_data*)*, %struct.surface_iterator_data*) #1

declare dso_local i32 @output_drag_icons_for_each_surface(%struct.sway_output*, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
