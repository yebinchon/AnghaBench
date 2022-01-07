; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_scan_out_fullscreen_view.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_scan_out_fullscreen_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.sway_output = type { i32*, %struct.TYPE_7__, %struct.wlr_output* }
%struct.TYPE_7__ = type { %struct.sway_workspace* }
%struct.sway_workspace = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.sway_container** }
%struct.sway_container = type { i32 }
%struct.wlr_output = type { float, i64 }
%struct.sway_view = type { %struct.wlr_surface*, i32, i64 }
%struct.wlr_surface = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"Expected an active workspace\00", align 1
@ZWLR_LAYER_SHELL_V1_LAYER_OVERLAY = common dso_local global i64 0, align 8
@root = common dso_local global %struct.TYPE_12__* null, align 8
@count_surface_iterator = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sway_output*, %struct.sway_view*)* @scan_out_fullscreen_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_out_fullscreen_view(%struct.sway_output* %0, %struct.sway_view* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sway_output*, align 8
  %5 = alloca %struct.sway_view*, align 8
  %6 = alloca %struct.wlr_output*, align 8
  %7 = alloca %struct.sway_workspace*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sway_container*, align 8
  %10 = alloca %struct.wlr_surface*, align 8
  %11 = alloca i64, align 8
  store %struct.sway_output* %0, %struct.sway_output** %4, align 8
  store %struct.sway_view* %1, %struct.sway_view** %5, align 8
  %12 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %13 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %12, i32 0, i32 2
  %14 = load %struct.wlr_output*, %struct.wlr_output** %13, align 8
  store %struct.wlr_output* %14, %struct.wlr_output** %6, align 8
  %15 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %16 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.sway_workspace*, %struct.sway_workspace** %17, align 8
  store %struct.sway_workspace* %18, %struct.sway_workspace** %7, align 8
  %19 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %20 = call i32 @sway_assert(%struct.sway_workspace* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %131

23:                                               ; preds = %2
  %24 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %25 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %131

29:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %58, %29
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %33 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %31, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %30
  %40 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %41 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load %struct.sway_container**, %struct.sway_container*** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %45, i64 %47
  %49 = load %struct.sway_container*, %struct.sway_container** %48, align 8
  store %struct.sway_container* %49, %struct.sway_container** %9, align 8
  %50 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %51 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %52 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @container_is_transient_for(%struct.sway_container* %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %131

57:                                               ; preds = %39
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %30

61:                                               ; preds = %30
  %62 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %63 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @ZWLR_LAYER_SHELL_V1_LAYER_OVERLAY, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = call i32 @wl_list_empty(i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %131

70:                                               ; preds = %61
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** @root, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = call i32 @wl_list_empty(i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %131

76:                                               ; preds = %70
  %77 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %78 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %77, i32 0, i32 0
  %79 = load %struct.wlr_surface*, %struct.wlr_surface** %78, align 8
  store %struct.wlr_surface* %79, %struct.wlr_surface** %10, align 8
  %80 = load %struct.wlr_surface*, %struct.wlr_surface** %10, align 8
  %81 = icmp eq %struct.wlr_surface* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %131

83:                                               ; preds = %76
  store i64 0, i64* %11, align 8
  %84 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %85 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %86 = load i32, i32* @count_surface_iterator, align 4
  %87 = call i32 @output_view_for_each_surface(%struct.sway_output* %84, %struct.sway_view* %85, i32 %86, i64* %11)
  %88 = load i64, i64* %11, align 8
  %89 = icmp ne i64 %88, 1
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %131

91:                                               ; preds = %83
  %92 = load %struct.wlr_surface*, %struct.wlr_surface** %10, align 8
  %93 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store i32 0, i32* %3, align 4
  br label %131

97:                                               ; preds = %91
  %98 = load %struct.wlr_surface*, %struct.wlr_surface** %10, align 8
  %99 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = sitofp i64 %101 to float
  %103 = load %struct.wlr_output*, %struct.wlr_output** %6, align 8
  %104 = getelementptr inbounds %struct.wlr_output, %struct.wlr_output* %103, i32 0, i32 0
  %105 = load float, float* %104, align 8
  %106 = fcmp une float %102, %105
  br i1 %106, label %116, label %107

107:                                              ; preds = %97
  %108 = load %struct.wlr_surface*, %struct.wlr_surface** %10, align 8
  %109 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.wlr_output*, %struct.wlr_output** %6, align 8
  %113 = getelementptr inbounds %struct.wlr_output, %struct.wlr_output* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %111, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %107, %97
  store i32 0, i32* %3, align 4
  br label %131

117:                                              ; preds = %107
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 0), align 4
  %119 = load %struct.wlr_surface*, %struct.wlr_surface** %10, align 8
  %120 = call i32 @wlr_presentation_surface_sampled(i32 %118, %struct.wlr_surface* %119)
  %121 = load %struct.wlr_output*, %struct.wlr_output** %6, align 8
  %122 = load %struct.wlr_surface*, %struct.wlr_surface** %10, align 8
  %123 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @wlr_output_attach_buffer(%struct.wlr_output* %121, i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  br label %131

128:                                              ; preds = %117
  %129 = load %struct.wlr_output*, %struct.wlr_output** %6, align 8
  %130 = call i32 @wlr_output_commit(%struct.wlr_output* %129)
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %128, %127, %116, %96, %90, %82, %75, %69, %56, %28, %22
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @sway_assert(%struct.sway_workspace*, i8*) #1

declare dso_local i64 @container_is_transient_for(%struct.sway_container*, i32) #1

declare dso_local i32 @wl_list_empty(i32*) #1

declare dso_local i32 @output_view_for_each_surface(%struct.sway_output*, %struct.sway_view*, i32, i64*) #1

declare dso_local i32 @wlr_presentation_surface_sampled(i32, %struct.wlr_surface*) #1

declare dso_local i32 @wlr_output_attach_buffer(%struct.wlr_output*, i32*) #1

declare dso_local i32 @wlr_output_commit(%struct.wlr_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
