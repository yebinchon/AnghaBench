; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_map.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32 }
%struct.sway_view = type { %struct.sway_container*, %struct.TYPE_8__*, %struct.TYPE_9__, %struct.wlr_surface* }
%struct.sway_container = type { i32, %struct.TYPE_12__*, i64, i64, i32, i32 }
%struct.TYPE_12__ = type { %struct.sway_container* }
%struct.TYPE_8__ = type { i64 (%struct.sway_view*)* }
%struct.TYPE_9__ = type { i32 }
%struct.wlr_surface = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.wlr_output = type { %struct.sway_output* }
%struct.sway_output = type { i32 }
%struct.sway_workspace = type { i32 }
%struct.sway_seat = type { i32 }
%struct.sway_node = type { i64, %struct.sway_container* }

@.str = private unnamed_addr constant [23 x i8] c"cannot map mapped view\00", align 1
@root = common dso_local global %struct.TYPE_10__* null, align 8
@N_CONTAINER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@view_handle_surface_new_subsurface = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_11__* null, align 8
@POPUP_LEAVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @view_map(%struct.sway_view* %0, %struct.wlr_surface* %1, i32 %2, %struct.wlr_output* %3, i32 %4) #0 {
  %6 = alloca %struct.sway_view*, align 8
  %7 = alloca %struct.wlr_surface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wlr_output*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sway_workspace*, align 8
  %12 = alloca %struct.sway_output*, align 8
  %13 = alloca %struct.sway_seat*, align 8
  %14 = alloca %struct.sway_node*, align 8
  %15 = alloca %struct.sway_container*, align 8
  %16 = alloca %struct.sway_container*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %6, align 8
  store %struct.wlr_surface* %1, %struct.wlr_surface** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.wlr_output* %3, %struct.wlr_output** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %18 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %17, i32 0, i32 3
  %19 = load %struct.wlr_surface*, %struct.wlr_surface** %18, align 8
  %20 = icmp eq %struct.wlr_surface* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @sway_assert(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  br label %299

25:                                               ; preds = %5
  %26 = load %struct.wlr_surface*, %struct.wlr_surface** %7, align 8
  %27 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %28 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %27, i32 0, i32 3
  store %struct.wlr_surface* %26, %struct.wlr_surface** %28, align 8
  %29 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %30 = call i32 @view_populate_pid(%struct.sway_view* %29)
  %31 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %32 = call %struct.sway_container* @container_create(%struct.sway_view* %31)
  %33 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %34 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %33, i32 0, i32 0
  store %struct.sway_container* %32, %struct.sway_container** %34, align 8
  store %struct.sway_workspace* null, %struct.sway_workspace** %11, align 8
  %35 = load %struct.wlr_output*, %struct.wlr_output** %9, align 8
  %36 = icmp ne %struct.wlr_output* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %25
  %38 = load %struct.wlr_output*, %struct.wlr_output** %9, align 8
  %39 = getelementptr inbounds %struct.wlr_output, %struct.wlr_output* %38, i32 0, i32 0
  %40 = load %struct.sway_output*, %struct.sway_output** %39, align 8
  %41 = icmp ne %struct.sway_output* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.wlr_output*, %struct.wlr_output** %9, align 8
  %44 = getelementptr inbounds %struct.wlr_output, %struct.wlr_output* %43, i32 0, i32 0
  %45 = load %struct.sway_output*, %struct.sway_output** %44, align 8
  store %struct.sway_output* %45, %struct.sway_output** %12, align 8
  %46 = load %struct.sway_output*, %struct.sway_output** %12, align 8
  %47 = call %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output* %46)
  store %struct.sway_workspace* %47, %struct.sway_workspace** %11, align 8
  br label %48

48:                                               ; preds = %42, %37, %25
  %49 = load %struct.sway_workspace*, %struct.sway_workspace** %11, align 8
  %50 = icmp ne %struct.sway_workspace* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %53 = call %struct.sway_workspace* @select_workspace(%struct.sway_view* %52)
  store %struct.sway_workspace* %53, %struct.sway_workspace** %11, align 8
  br label %54

54:                                               ; preds = %51, %48
  %55 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %55, %struct.sway_seat** %13, align 8
  %56 = load %struct.sway_workspace*, %struct.sway_workspace** %11, align 8
  %57 = icmp ne %struct.sway_workspace* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.sway_seat*, %struct.sway_seat** %13, align 8
  %60 = load %struct.sway_workspace*, %struct.sway_workspace** %11, align 8
  %61 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %60, i32 0, i32 0
  %62 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %59, i32* %61)
  br label %68

63:                                               ; preds = %54
  %64 = load %struct.sway_seat*, %struct.sway_seat** %13, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** @root, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %64, i32* %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = phi %struct.sway_node* [ %62, %58 ], [ %67, %63 ]
  store %struct.sway_node* %69, %struct.sway_node** %14, align 8
  %70 = load %struct.sway_node*, %struct.sway_node** %14, align 8
  %71 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @N_CONTAINER, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load %struct.sway_node*, %struct.sway_node** %14, align 8
  %77 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %76, i32 0, i32 1
  %78 = load %struct.sway_container*, %struct.sway_container** %77, align 8
  br label %80

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79, %75
  %81 = phi %struct.sway_container* [ %78, %75 ], [ null, %79 ]
  store %struct.sway_container* %81, %struct.sway_container** %15, align 8
  %82 = load %struct.sway_container*, %struct.sway_container** %15, align 8
  %83 = icmp ne %struct.sway_container* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load %struct.sway_container*, %struct.sway_container** %15, align 8
  %86 = call i64 @container_is_floating(%struct.sway_container* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  store %struct.sway_container* null, %struct.sway_container** %15, align 8
  %89 = load %struct.sway_seat*, %struct.sway_seat** %13, align 8
  %90 = call %struct.sway_workspace* @seat_get_last_known_workspace(%struct.sway_seat* %89)
  store %struct.sway_workspace* %90, %struct.sway_workspace** %11, align 8
  br label %91

91:                                               ; preds = %88, %84, %80
  %92 = load %struct.sway_container*, %struct.sway_container** %15, align 8
  %93 = icmp ne %struct.sway_container* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load %struct.sway_container*, %struct.sway_container** %15, align 8
  %96 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %97 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %96, i32 0, i32 0
  %98 = load %struct.sway_container*, %struct.sway_container** %97, align 8
  %99 = call i32 @container_add_sibling(%struct.sway_container* %95, %struct.sway_container* %98, i32 1)
  br label %110

100:                                              ; preds = %91
  %101 = load %struct.sway_workspace*, %struct.sway_workspace** %11, align 8
  %102 = icmp ne %struct.sway_workspace* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load %struct.sway_workspace*, %struct.sway_workspace** %11, align 8
  %105 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %106 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %105, i32 0, i32 0
  %107 = load %struct.sway_container*, %struct.sway_container** %106, align 8
  %108 = call i32 @workspace_add_tiling(%struct.sway_workspace* %104, %struct.sway_container* %107)
  br label %109

109:                                              ; preds = %103, %100
  br label %110

110:                                              ; preds = %109, %94
  %111 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %112 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %111, i32 0, i32 0
  %113 = load %struct.sway_container*, %struct.sway_container** %112, align 8
  %114 = call i32 @ipc_event_window(%struct.sway_container* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %115 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %116 = load %struct.wlr_surface*, %struct.wlr_surface** %7, align 8
  %117 = call i32 @view_init_subsurfaces(%struct.sway_view* %115, %struct.wlr_surface* %116)
  %118 = load %struct.wlr_surface*, %struct.wlr_surface** %7, align 8
  %119 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %122 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %121, i32 0, i32 2
  %123 = call i32 @wl_signal_add(i32* %120, %struct.TYPE_9__* %122)
  %124 = load i32, i32* @view_handle_surface_new_subsurface, align 4
  %125 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %126 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 8
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %110
  %131 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @view_update_csd_from_client(%struct.sway_view* %131, i32 %132)
  br label %134

134:                                              ; preds = %130, %110
  %135 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %136 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %135, i32 0, i32 1
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i64 (%struct.sway_view*)*, i64 (%struct.sway_view*)** %138, align 8
  %140 = icmp ne i64 (%struct.sway_view*)* %139, null
  br i1 %140, label %141, label %169

141:                                              ; preds = %134
  %142 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %143 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %142, i32 0, i32 1
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i64 (%struct.sway_view*)*, i64 (%struct.sway_view*)** %145, align 8
  %147 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %148 = call i64 %146(%struct.sway_view* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %169

150:                                              ; preds = %141
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** @config, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %155 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %154, i32 0, i32 0
  %156 = load %struct.sway_container*, %struct.sway_container** %155, align 8
  %157 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %156, i32 0, i32 5
  store i32 %153, i32* %157, align 4
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** @config, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %162 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %161, i32 0, i32 0
  %163 = load %struct.sway_container*, %struct.sway_container** %162, align 8
  %164 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %163, i32 0, i32 4
  store i32 %160, i32* %164, align 8
  %165 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %166 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %165, i32 0, i32 0
  %167 = load %struct.sway_container*, %struct.sway_container** %166, align 8
  %168 = call i32 @container_set_floating(%struct.sway_container* %167, i32 1)
  br label %186

169:                                              ; preds = %141, %134
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** @config, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %174 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %173, i32 0, i32 0
  %175 = load %struct.sway_container*, %struct.sway_container** %174, align 8
  %176 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %175, i32 0, i32 5
  store i32 %172, i32* %176, align 4
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** @config, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %181 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %180, i32 0, i32 0
  %182 = load %struct.sway_container*, %struct.sway_container** %181, align 8
  %183 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %182, i32 0, i32 4
  store i32 %179, i32* %183, align 8
  %184 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %185 = call i32 @view_set_tiled(%struct.sway_view* %184, i32 1)
  br label %186

186:                                              ; preds = %169, %150
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** @config, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @POPUP_LEAVE, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %237

192:                                              ; preds = %186
  %193 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %194 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %193, i32 0, i32 0
  %195 = load %struct.sway_container*, %struct.sway_container** %194, align 8
  %196 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %195, i32 0, i32 1
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %196, align 8
  %198 = icmp ne %struct.TYPE_12__* %197, null
  br i1 %198, label %199, label %237

199:                                              ; preds = %192
  %200 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %201 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %200, i32 0, i32 0
  %202 = load %struct.sway_container*, %struct.sway_container** %201, align 8
  %203 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %202, i32 0, i32 1
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = load %struct.sway_container*, %struct.sway_container** %205, align 8
  %207 = icmp ne %struct.sway_container* %206, null
  br i1 %207, label %208, label %237

208:                                              ; preds = %199
  %209 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %210 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %209, i32 0, i32 0
  %211 = load %struct.sway_container*, %struct.sway_container** %210, align 8
  %212 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %211, i32 0, i32 1
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = load %struct.sway_container*, %struct.sway_container** %214, align 8
  %216 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %237

219:                                              ; preds = %208
  %220 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %221 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %220, i32 0, i32 0
  %222 = load %struct.sway_container*, %struct.sway_container** %221, align 8
  %223 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %222, i32 0, i32 1
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 0
  %226 = load %struct.sway_container*, %struct.sway_container** %225, align 8
  store %struct.sway_container* %226, %struct.sway_container** %16, align 8
  %227 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %228 = load %struct.sway_container*, %struct.sway_container** %16, align 8
  %229 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = call i64 @view_is_transient_for(%struct.sway_view* %227, i64 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %219
  %234 = load %struct.sway_container*, %struct.sway_container** %16, align 8
  %235 = call i32 @container_set_fullscreen(%struct.sway_container* %234, i32 0)
  br label %236

236:                                              ; preds = %233, %219
  br label %237

237:                                              ; preds = %236, %208, %199, %192, %186
  %238 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %239 = call i32 @view_update_title(%struct.sway_view* %238, i32 0)
  %240 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %241 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %240, i32 0, i32 0
  %242 = load %struct.sway_container*, %struct.sway_container** %241, align 8
  %243 = call i32 @container_update_representation(%struct.sway_container* %242)
  %244 = load i32, i32* %8, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %257

246:                                              ; preds = %237
  %247 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %248 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %247, i32 0, i32 0
  %249 = load %struct.sway_container*, %struct.sway_container** %248, align 8
  %250 = call i32 @container_set_fullscreen(%struct.sway_container* %249, i32 1)
  %251 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %252 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %251, i32 0, i32 0
  %253 = load %struct.sway_container*, %struct.sway_container** %252, align 8
  %254 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %253, i32 0, i32 1
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %254, align 8
  %256 = call i32 @arrange_workspace(%struct.TYPE_12__* %255)
  br label %287

257:                                              ; preds = %237
  %258 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %259 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %258, i32 0, i32 0
  %260 = load %struct.sway_container*, %struct.sway_container** %259, align 8
  %261 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %271

264:                                              ; preds = %257
  %265 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %266 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %265, i32 0, i32 0
  %267 = load %struct.sway_container*, %struct.sway_container** %266, align 8
  %268 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = call i32 @arrange_container(i64 %269)
  br label %286

271:                                              ; preds = %257
  %272 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %273 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %272, i32 0, i32 0
  %274 = load %struct.sway_container*, %struct.sway_container** %273, align 8
  %275 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %274, i32 0, i32 1
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %275, align 8
  %277 = icmp ne %struct.TYPE_12__* %276, null
  br i1 %277, label %278, label %285

278:                                              ; preds = %271
  %279 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %280 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %279, i32 0, i32 0
  %281 = load %struct.sway_container*, %struct.sway_container** %280, align 8
  %282 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %281, i32 0, i32 1
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %282, align 8
  %284 = call i32 @arrange_workspace(%struct.TYPE_12__* %283)
  br label %285

285:                                              ; preds = %278, %271
  br label %286

286:                                              ; preds = %285, %264
  br label %287

287:                                              ; preds = %286, %246
  %288 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %289 = call i32 @view_execute_criteria(%struct.sway_view* %288)
  %290 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %291 = call i64 @should_focus(%struct.sway_view* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %287
  %294 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %295 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %294, i32 0, i32 0
  %296 = load %struct.sway_container*, %struct.sway_container** %295, align 8
  %297 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %296, i32 0, i32 0
  %298 = call i32 @input_manager_set_focus(i32* %297)
  br label %299

299:                                              ; preds = %24, %293, %287
  ret void
}

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @view_populate_pid(%struct.sway_view*) #1

declare dso_local %struct.sway_container* @container_create(%struct.sway_view*) #1

declare dso_local %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output*) #1

declare dso_local %struct.sway_workspace* @select_workspace(%struct.sway_view*) #1

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat*, i32*) #1

declare dso_local i64 @container_is_floating(%struct.sway_container*) #1

declare dso_local %struct.sway_workspace* @seat_get_last_known_workspace(%struct.sway_seat*) #1

declare dso_local i32 @container_add_sibling(%struct.sway_container*, %struct.sway_container*, i32) #1

declare dso_local i32 @workspace_add_tiling(%struct.sway_workspace*, %struct.sway_container*) #1

declare dso_local i32 @ipc_event_window(%struct.sway_container*, i8*) #1

declare dso_local i32 @view_init_subsurfaces(%struct.sway_view*, %struct.wlr_surface*) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @view_update_csd_from_client(%struct.sway_view*, i32) #1

declare dso_local i32 @container_set_floating(%struct.sway_container*, i32) #1

declare dso_local i32 @view_set_tiled(%struct.sway_view*, i32) #1

declare dso_local i64 @view_is_transient_for(%struct.sway_view*, i64) #1

declare dso_local i32 @container_set_fullscreen(%struct.sway_container*, i32) #1

declare dso_local i32 @view_update_title(%struct.sway_view*, i32) #1

declare dso_local i32 @container_update_representation(%struct.sway_container*) #1

declare dso_local i32 @arrange_workspace(%struct.TYPE_12__*) #1

declare dso_local i32 @arrange_container(i64) #1

declare dso_local i32 @view_execute_criteria(%struct.sway_view*) #1

declare dso_local i64 @should_focus(%struct.sway_view*) #1

declare dso_local i32 @input_manager_set_focus(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
