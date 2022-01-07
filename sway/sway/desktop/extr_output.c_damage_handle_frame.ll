; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_damage_handle_frame.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_damage_handle_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.sway_container* }
%struct.sway_container = type { i64 }
%struct.sway_output = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { %struct.sway_workspace* }
%struct.sway_workspace = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.sway_container* }
%struct.TYPE_5__ = type { i32 }
%struct.wl_listener = type { i32 }
%struct.timespec = type { i32 }

@damage_frame = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@root = common dso_local global %struct.TYPE_8__* null, align 8
@damage_handle_frame.last_scanned_out = internal global i32 0, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Scanning out fullscreen view\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Stopping fullscreen view scan out\00", align 1
@output = common dso_local global %struct.sway_output* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @damage_handle_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @damage_handle_frame(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_output*, align 8
  %6 = alloca %struct.timespec, align 4
  %7 = alloca %struct.sway_workspace*, align 8
  %8 = alloca %struct.sway_container*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %13 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %14 = ptrtoint %struct.sway_output* %13 to i32
  %15 = load i32, i32* @damage_frame, align 4
  %16 = call %struct.sway_output* @wl_container_of(%struct.wl_listener* %12, i32 %14, i32 %15)
  store %struct.sway_output* %16, %struct.sway_output** %5, align 8
  %17 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %18 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %23 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21, %2
  br label %106

29:                                               ; preds = %21
  %30 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %31 = call i32 @clock_gettime(i32 %30, %struct.timespec* %6)
  %32 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %33 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.sway_workspace*, %struct.sway_workspace** %34, align 8
  store %struct.sway_workspace* %35, %struct.sway_workspace** %7, align 8
  %36 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %37 = icmp eq %struct.sway_workspace* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %106

39:                                               ; preds = %29
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @root, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.sway_container*, %struct.sway_container** %41, align 8
  store %struct.sway_container* %42, %struct.sway_container** %8, align 8
  %43 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %44 = icmp ne %struct.sway_container* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %47 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.sway_container*, %struct.sway_container** %48, align 8
  store %struct.sway_container* %49, %struct.sway_container** %8, align 8
  br label %50

50:                                               ; preds = %45, %39
  %51 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %52 = icmp ne %struct.sway_container* %51, null
  br i1 %52, label %53, label %87

53:                                               ; preds = %50
  %54 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %55 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %87

58:                                               ; preds = %53
  %59 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %60 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %61 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @scan_out_fullscreen_view(%struct.sway_output* %59, i64 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load i32, i32* @damage_handle_frame.last_scanned_out, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @SWAY_DEBUG, align 4
  %71 = call i32 @sway_log(i32 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %66, %58
  %73 = load i32, i32* @damage_handle_frame.last_scanned_out, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* @SWAY_DEBUG, align 4
  %80 = call i32 @sway_log(i32 %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %75, %72
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* @damage_handle_frame.last_scanned_out, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %103

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86, %53, %50
  %88 = call i32 @pixman_region32_init(i32* %11)
  %89 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %90 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @wlr_output_damage_attach_render(i32 %91, i32* %10, i32* %11)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %87
  br label %106

95:                                               ; preds = %87
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %100 = call i32 @output_render(%struct.sway_output* %99, %struct.timespec* %6, i32* %11)
  br label %101

101:                                              ; preds = %98, %95
  %102 = call i32 @pixman_region32_fini(i32* %11)
  br label %103

103:                                              ; preds = %101, %85
  %104 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %105 = call i32 @send_frame_done(%struct.sway_output* %104, %struct.timespec* %6)
  br label %106

106:                                              ; preds = %103, %94, %38, %28
  ret void
}

declare dso_local %struct.sway_output* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @scan_out_fullscreen_view(%struct.sway_output*, i64) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @pixman_region32_init(i32*) #1

declare dso_local i32 @wlr_output_damage_attach_render(i32, i32*, i32*) #1

declare dso_local i32 @output_render(%struct.sway_output*, %struct.timespec*, i32*) #1

declare dso_local i32 @pixman_region32_fini(i32*) #1

declare dso_local i32 @send_frame_done(%struct.sway_output*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
