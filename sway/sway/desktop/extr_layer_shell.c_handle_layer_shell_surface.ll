; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_layer_shell.c_handle_layer_shell_surface.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_layer_shell.c_handle_layer_shell_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_11__*, %struct.sway_output* }
%struct.TYPE_11__ = type { %struct.sway_output**, i32 }
%struct.sway_output = type { i32*, %struct.TYPE_16__, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.sway_output* }
%struct.wl_listener = type { i32 }
%struct.wlr_layer_surface_v1 = type { %struct.wlr_layer_surface_v1_state, %struct.wlr_layer_surface_v1_state, %struct.TYPE_15__*, %struct.sway_layer_surface*, %struct.TYPE_14__, %struct.TYPE_13__*, i32 }
%struct.wlr_layer_surface_v1_state = type { i64, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.sway_layer_surface = type { i32, %struct.TYPE_17__, %struct.wlr_layer_surface_v1*, %struct.TYPE_17__, %struct.TYPE_17__, %struct.TYPE_17__, %struct.TYPE_17__, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.sway_seat = type { i32 }
%struct.sway_workspace = type { %struct.sway_output* }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"new layer surface: namespace %s layer %d anchor %d size %dx%d margin %d,%d,%d,%d\00", align 1
@root = common dso_local global %struct.TYPE_18__* null, align 8
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"no output to auto-assign layer surface '%s' to\00", align 1
@handle_surface_commit = common dso_local global i32 0, align 4
@handle_destroy = common dso_local global i32 0, align 4
@handle_map = common dso_local global i32 0, align 4
@handle_unmap = common dso_local global i32 0, align 4
@handle_new_popup = common dso_local global i32 0, align 4
@handle_output_destroy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_layer_shell_surface(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wlr_layer_surface_v1*, align 8
  %6 = alloca %struct.sway_output*, align 8
  %7 = alloca %struct.sway_seat*, align 8
  %8 = alloca %struct.sway_workspace*, align 8
  %9 = alloca %struct.sway_layer_surface*, align 8
  %10 = alloca %struct.sway_output*, align 8
  %11 = alloca %struct.wlr_layer_surface_v1_state, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.wlr_layer_surface_v1*
  store %struct.wlr_layer_surface_v1* %13, %struct.wlr_layer_surface_v1** %5, align 8
  %14 = load i32, i32* @SWAY_DEBUG, align 4
  %15 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %16 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %19 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.wlr_layer_surface_v1_state, %struct.wlr_layer_surface_v1_state* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %23 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.wlr_layer_surface_v1_state, %struct.wlr_layer_surface_v1_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %27 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.wlr_layer_surface_v1_state, %struct.wlr_layer_surface_v1_state* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %31 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.wlr_layer_surface_v1_state, %struct.wlr_layer_surface_v1_state* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %35 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.wlr_layer_surface_v1_state, %struct.wlr_layer_surface_v1_state* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %40 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.wlr_layer_surface_v1_state, %struct.wlr_layer_surface_v1_state* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %45 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.wlr_layer_surface_v1_state, %struct.wlr_layer_surface_v1_state* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %50 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.wlr_layer_surface_v1_state, %struct.wlr_layer_surface_v1_state* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i32, i8*, i32, ...) @sway_log(i32 %14, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %21, i64 %25, i32 %29, i32 %33, i32 %38, i32 %43, i32 %48, i32 %53)
  %55 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %56 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %55, i32 0, i32 2
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = icmp ne %struct.TYPE_15__* %57, null
  br i1 %58, label %111, label %59

59:                                               ; preds = %2
  store %struct.sway_output* null, %struct.sway_output** %6, align 8
  %60 = call %struct.sway_seat* (...) @input_manager_get_default_seat()
  store %struct.sway_seat* %60, %struct.sway_seat** %7, align 8
  %61 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %62 = icmp ne %struct.sway_seat* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %65 = call %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat* %64)
  store %struct.sway_workspace* %65, %struct.sway_workspace** %8, align 8
  %66 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %67 = icmp ne %struct.sway_workspace* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %70 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %69, i32 0, i32 0
  %71 = load %struct.sway_output*, %struct.sway_output** %70, align 8
  store %struct.sway_output* %71, %struct.sway_output** %6, align 8
  br label %72

72:                                               ; preds = %68, %63
  br label %73

73:                                               ; preds = %72, %59
  %74 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %75 = icmp ne %struct.sway_output* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** @root, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = load %struct.sway_output*, %struct.sway_output** %79, align 8
  %81 = icmp eq %struct.sway_output* %77, %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %76, %73
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** @root, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %82
  %90 = load i32, i32* @SWAY_ERROR, align 4
  %91 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %92 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i32, i8*, i32, ...) @sway_log(i32 %90, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %96 = call i32 @wlr_layer_surface_v1_close(%struct.wlr_layer_surface_v1* %95)
  br label %217

97:                                               ; preds = %82
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** @root, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load %struct.sway_output**, %struct.sway_output*** %101, align 8
  %103 = getelementptr inbounds %struct.sway_output*, %struct.sway_output** %102, i64 0
  %104 = load %struct.sway_output*, %struct.sway_output** %103, align 8
  store %struct.sway_output* %104, %struct.sway_output** %6, align 8
  br label %105

105:                                              ; preds = %97, %76
  %106 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %107 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %106, i32 0, i32 2
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  %109 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %110 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %109, i32 0, i32 2
  store %struct.TYPE_15__* %108, %struct.TYPE_15__** %110, align 8
  br label %111

111:                                              ; preds = %105, %2
  %112 = call %struct.sway_layer_surface* @calloc(i32 1, i32 40)
  store %struct.sway_layer_surface* %112, %struct.sway_layer_surface** %9, align 8
  %113 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %9, align 8
  %114 = icmp ne %struct.sway_layer_surface* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  br label %217

116:                                              ; preds = %111
  %117 = load i32, i32* @handle_surface_commit, align 4
  %118 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %9, align 8
  %119 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %118, i32 0, i32 7
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  %121 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %122 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %121, i32 0, i32 5
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %9, align 8
  %127 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %126, i32 0, i32 7
  %128 = call i32 @wl_signal_add(i32* %125, %struct.TYPE_17__* %127)
  %129 = load i32, i32* @handle_destroy, align 4
  %130 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %9, align 8
  %131 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %130, i32 0, i32 6
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 4
  %133 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %134 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 3
  %136 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %9, align 8
  %137 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %136, i32 0, i32 6
  %138 = call i32 @wl_signal_add(i32* %135, %struct.TYPE_17__* %137)
  %139 = load i32, i32* @handle_map, align 4
  %140 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %9, align 8
  %141 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 8
  %143 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %144 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 2
  %146 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %9, align 8
  %147 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %146, i32 0, i32 5
  %148 = call i32 @wl_signal_add(i32* %145, %struct.TYPE_17__* %147)
  %149 = load i32, i32* @handle_unmap, align 4
  %150 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %9, align 8
  %151 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 4
  %153 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %154 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %9, align 8
  %157 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %156, i32 0, i32 4
  %158 = call i32 @wl_signal_add(i32* %155, %struct.TYPE_17__* %157)
  %159 = load i32, i32* @handle_new_popup, align 4
  %160 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %9, align 8
  %161 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 8
  %163 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %164 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %9, align 8
  %167 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %166, i32 0, i32 3
  %168 = call i32 @wl_signal_add(i32* %165, %struct.TYPE_17__* %167)
  %169 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %170 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %9, align 8
  %171 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %170, i32 0, i32 2
  store %struct.wlr_layer_surface_v1* %169, %struct.wlr_layer_surface_v1** %171, align 8
  %172 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %9, align 8
  %173 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %174 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %173, i32 0, i32 3
  store %struct.sway_layer_surface* %172, %struct.sway_layer_surface** %174, align 8
  %175 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %176 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %175, i32 0, i32 2
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = load %struct.sway_output*, %struct.sway_output** %178, align 8
  store %struct.sway_output* %179, %struct.sway_output** %10, align 8
  %180 = load i32, i32* @handle_output_destroy, align 4
  %181 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %9, align 8
  %182 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  store i32 %180, i32* %183, align 4
  %184 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %185 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %9, align 8
  %188 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %187, i32 0, i32 1
  %189 = call i32 @wl_signal_add(i32* %186, %struct.TYPE_17__* %188)
  %190 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %191 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %194 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.wlr_layer_surface_v1_state, %struct.wlr_layer_surface_v1_state* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds i32, i32* %192, i64 %196
  %198 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %9, align 8
  %199 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %198, i32 0, i32 0
  %200 = call i32 @wl_list_insert(i32* %197, i32* %199)
  %201 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %202 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %201, i32 0, i32 0
  %203 = bitcast %struct.wlr_layer_surface_v1_state* %11 to i8*
  %204 = bitcast %struct.wlr_layer_surface_v1_state* %202 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %203, i8* align 8 %204, i64 32, i1 false)
  %205 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %206 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %205, i32 0, i32 0
  %207 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %208 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %207, i32 0, i32 1
  %209 = bitcast %struct.wlr_layer_surface_v1_state* %206 to i8*
  %210 = bitcast %struct.wlr_layer_surface_v1_state* %208 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %209, i8* align 8 %210, i64 32, i1 false)
  %211 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %212 = call i32 @arrange_layers(%struct.sway_output* %211)
  %213 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %5, align 8
  %214 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %213, i32 0, i32 0
  %215 = bitcast %struct.wlr_layer_surface_v1_state* %214 to i8*
  %216 = bitcast %struct.wlr_layer_surface_v1_state* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %215, i8* align 8 %216, i64 32, i1 false)
  br label %217

217:                                              ; preds = %116, %115, %89
  ret void
}

declare dso_local i32 @sway_log(i32, i8*, i32, ...) #1

declare dso_local %struct.sway_seat* @input_manager_get_default_seat(...) #1

declare dso_local %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat*) #1

declare dso_local i32 @wlr_layer_surface_v1_close(%struct.wlr_layer_surface_v1*) #1

declare dso_local %struct.sway_layer_surface* @calloc(i32, i32) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @wl_list_insert(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @arrange_layers(%struct.sway_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
