; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_move_tiling.c_handle_motion_postthreshold.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_move_tiling.c_handle_motion_postthreshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { %struct.sway_cursor*, %struct.seatop_move_tiling_event* }
%struct.sway_cursor = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.seatop_move_tiling_event = type { i32, %struct.wlr_box, %struct.sway_node*, %struct.TYPE_6__* }
%struct.wlr_box = type { i64, i64, i64, i64 }
%struct.sway_node = type { i64, i64, %struct.sway_container* }
%struct.sway_container = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_5__*, %struct.sway_container*, %struct.sway_node }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, %struct.sway_node }
%struct.wlr_surface = type { i32 }

@WLR_EDGE_NONE = common dso_local global i8* null, align 8
@N_WORKSPACE = common dso_local global i64 0, align 8
@L_HORIZ = common dso_local global i32 0, align 4
@L_TABBED = common dso_local global i32 0, align 4
@DROP_LAYOUT_BORDER = common dso_local global i64 0, align 8
@WLR_EDGE_TOP = common dso_local global i8* null, align 8
@WLR_EDGE_BOTTOM = common dso_local global i8* null, align 8
@L_VERT = common dso_local global i32 0, align 4
@L_STACKED = common dso_local global i32 0, align 4
@WLR_EDGE_LEFT = common dso_local global i8* null, align 8
@WLR_EDGE_RIGHT = common dso_local global i8* null, align 8
@INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_seat*)* @handle_motion_postthreshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_motion_postthreshold(%struct.sway_seat* %0) #0 {
  %2 = alloca %struct.sway_seat*, align 8
  %3 = alloca %struct.seatop_move_tiling_event*, align 8
  %4 = alloca %struct.wlr_surface*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.sway_cursor*, align 8
  %8 = alloca %struct.sway_node*, align 8
  %9 = alloca %struct.sway_container*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wlr_box, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %2, align 8
  %16 = load %struct.sway_seat*, %struct.sway_seat** %2, align 8
  %17 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %16, i32 0, i32 1
  %18 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %17, align 8
  store %struct.seatop_move_tiling_event* %18, %struct.seatop_move_tiling_event** %3, align 8
  store %struct.wlr_surface* null, %struct.wlr_surface** %4, align 8
  %19 = load %struct.sway_seat*, %struct.sway_seat** %2, align 8
  %20 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %19, i32 0, i32 0
  %21 = load %struct.sway_cursor*, %struct.sway_cursor** %20, align 8
  store %struct.sway_cursor* %21, %struct.sway_cursor** %7, align 8
  %22 = load %struct.sway_seat*, %struct.sway_seat** %2, align 8
  %23 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %24 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %29 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.sway_node* @node_at_coords(%struct.sway_seat* %22, i64 %27, i64 %32, %struct.wlr_surface** %4, double* %5, double* %6)
  store %struct.sway_node* %33, %struct.sway_node** %8, align 8
  %34 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %35 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %34, i32 0, i32 1
  %36 = call i32 @desktop_damage_box(%struct.wlr_box* %35)
  %37 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %38 = icmp ne %struct.sway_node* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %1
  %40 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %41 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %40, i32 0, i32 2
  store %struct.sway_node* null, %struct.sway_node** %41, align 8
  %42 = load i8*, i8** @WLR_EDGE_NONE, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %45 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %430

46:                                               ; preds = %1
  %47 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %48 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @N_WORKSPACE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %46
  %53 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %54 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %55 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %54, i32 0, i32 2
  store %struct.sway_node* %53, %struct.sway_node** %55, align 8
  %56 = load i8*, i8** @WLR_EDGE_NONE, align 8
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %59 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %61 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %64 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %63, i32 0, i32 1
  %65 = call i32 @workspace_get_box(i64 %62, %struct.wlr_box* %64)
  %66 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %67 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %66, i32 0, i32 1
  %68 = call i32 @desktop_damage_box(%struct.wlr_box* %67)
  br label %430

69:                                               ; preds = %46
  %70 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %71 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %70, i32 0, i32 2
  %72 = load %struct.sway_container*, %struct.sway_container** %71, align 8
  store %struct.sway_container* %72, %struct.sway_container** %9, align 8
  %73 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %74 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %73, i32 0, i32 3
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @workspace_num_tiling_views(i64 %77)
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %97

80:                                               ; preds = %69
  %81 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %82 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %85 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %84, i32 0, i32 3
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %83, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %80
  %91 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %92 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %91, i32 0, i32 2
  store %struct.sway_node* null, %struct.sway_node** %92, align 8
  %93 = load i8*, i8** @WLR_EDGE_NONE, align 8
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %96 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %430

97:                                               ; preds = %80, %69
  br label %98

98:                                               ; preds = %248, %97
  %99 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %100 = icmp ne %struct.sway_container* %99, null
  br i1 %100, label %101, label %252

101:                                              ; preds = %98
  %102 = load i8*, i8** @WLR_EDGE_NONE, align 8
  %103 = ptrtoint i8* %102 to i32
  store i32 %103, i32* %10, align 4
  %104 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %105 = call i32 @container_parent_layout(%struct.sway_container* %104)
  store i32 %105, i32* %11, align 4
  %106 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %107 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %106, i32 0, i32 10
  %108 = load %struct.sway_container*, %struct.sway_container** %107, align 8
  %109 = icmp ne %struct.sway_container* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %101
  %111 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %112 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %111, i32 0, i32 10
  %113 = load %struct.sway_container*, %struct.sway_container** %112, align 8
  %114 = call i32 @container_get_box(%struct.sway_container* %113, %struct.wlr_box* %12)
  br label %120

115:                                              ; preds = %101
  %116 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %117 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @workspace_get_box(i64 %118, %struct.wlr_box* %12)
  br label %120

120:                                              ; preds = %115, %110
  %121 = phi i32 [ %114, %110 ], [ %119, %115 ]
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @L_HORIZ, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @L_TABBED, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %162

129:                                              ; preds = %125, %120
  %130 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %131 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %12, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @DROP_LAYOUT_BORDER, align 8
  %138 = add nsw i64 %136, %137
  %139 = icmp ult i64 %134, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %129
  %141 = load i8*, i8** @WLR_EDGE_TOP, align 8
  %142 = ptrtoint i8* %141 to i32
  store i32 %142, i32* %10, align 4
  br label %161

143:                                              ; preds = %129
  %144 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %145 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %144, i32 0, i32 0
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %12, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %12, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %150, %152
  %154 = load i64, i64* @DROP_LAYOUT_BORDER, align 8
  %155 = sub nsw i64 %153, %154
  %156 = icmp ugt i64 %148, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %143
  %158 = load i8*, i8** @WLR_EDGE_BOTTOM, align 8
  %159 = ptrtoint i8* %158 to i32
  store i32 %159, i32* %10, align 4
  br label %160

160:                                              ; preds = %157, %143
  br label %161

161:                                              ; preds = %160, %140
  br label %204

162:                                              ; preds = %125
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @L_VERT, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %170, label %166

166:                                              ; preds = %162
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* @L_STACKED, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %203

170:                                              ; preds = %166, %162
  %171 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %172 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %171, i32 0, i32 0
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %12, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @DROP_LAYOUT_BORDER, align 8
  %179 = add nsw i64 %177, %178
  %180 = icmp ult i64 %175, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %170
  %182 = load i8*, i8** @WLR_EDGE_LEFT, align 8
  %183 = ptrtoint i8* %182 to i32
  store i32 %183, i32* %10, align 4
  br label %202

184:                                              ; preds = %170
  %185 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %186 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %185, i32 0, i32 0
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %12, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %12, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %191, %193
  %195 = load i64, i64* @DROP_LAYOUT_BORDER, align 8
  %196 = sub nsw i64 %194, %195
  %197 = icmp ugt i64 %189, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %184
  %199 = load i8*, i8** @WLR_EDGE_RIGHT, align 8
  %200 = ptrtoint i8* %199 to i32
  store i32 %200, i32* %10, align 4
  br label %201

201:                                              ; preds = %198, %184
  br label %202

202:                                              ; preds = %201, %181
  br label %203

203:                                              ; preds = %202, %166
  br label %204

204:                                              ; preds = %203, %161
  %205 = load i32, i32* %10, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %248

207:                                              ; preds = %204
  %208 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %209 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %208, i32 0, i32 11
  %210 = call i8* @node_get_parent(%struct.sway_node* %209)
  %211 = bitcast i8* %210 to %struct.sway_node*
  %212 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %213 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %212, i32 0, i32 2
  store %struct.sway_node* %211, %struct.sway_node** %213, align 8
  %214 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %215 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %214, i32 0, i32 2
  %216 = load %struct.sway_node*, %struct.sway_node** %215, align 8
  %217 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %218 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %217, i32 0, i32 3
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 1
  %221 = icmp eq %struct.sway_node* %216, %220
  br i1 %221, label %222, label %230

222:                                              ; preds = %207
  %223 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %224 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %223, i32 0, i32 2
  %225 = load %struct.sway_node*, %struct.sway_node** %224, align 8
  %226 = call i8* @node_get_parent(%struct.sway_node* %225)
  %227 = bitcast i8* %226 to %struct.sway_node*
  %228 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %229 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %228, i32 0, i32 2
  store %struct.sway_node* %227, %struct.sway_node** %229, align 8
  br label %230

230:                                              ; preds = %222, %207
  %231 = load i32, i32* %10, align 4
  %232 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %233 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  %234 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %235 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %234, i32 0, i32 2
  %236 = load %struct.sway_node*, %struct.sway_node** %235, align 8
  %237 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %238 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %237, i32 0, i32 1
  %239 = call i32 @node_get_box(%struct.sway_node* %236, %struct.wlr_box* %238)
  %240 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %241 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %240, i32 0, i32 1
  %242 = load i32, i32* %10, align 4
  %243 = load i64, i64* @DROP_LAYOUT_BORDER, align 8
  %244 = call i32 @resize_box(%struct.wlr_box* %241, i32 %242, i64 %243)
  %245 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %246 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %245, i32 0, i32 1
  %247 = call i32 @desktop_damage_box(%struct.wlr_box* %246)
  br label %430

248:                                              ; preds = %204
  %249 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %250 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %249, i32 0, i32 10
  %251 = load %struct.sway_container*, %struct.sway_container** %250, align 8
  store %struct.sway_container* %251, %struct.sway_container** %9, align 8
  br label %98

252:                                              ; preds = %98
  %253 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %254 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %253, i32 0, i32 2
  %255 = load %struct.sway_container*, %struct.sway_container** %254, align 8
  store %struct.sway_container* %255, %struct.sway_container** %9, align 8
  %256 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %257 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %256, i32 0, i32 9
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %257, align 8
  %259 = icmp ne %struct.TYPE_5__* %258, null
  br i1 %259, label %260, label %282

260:                                              ; preds = %252
  %261 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %262 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %261, i32 0, i32 9
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %282

267:                                              ; preds = %260
  %268 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %269 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %270 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %269, i32 0, i32 3
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 1
  %273 = icmp eq %struct.sway_node* %268, %272
  br i1 %273, label %282, label %274

274:                                              ; preds = %267
  %275 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %276 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %277 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %276, i32 0, i32 3
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 1
  %280 = call i64 @node_has_ancestor(%struct.sway_node* %275, %struct.sway_node* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %289

282:                                              ; preds = %274, %267, %260, %252
  %283 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %284 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %283, i32 0, i32 2
  store %struct.sway_node* null, %struct.sway_node** %284, align 8
  %285 = load i8*, i8** @WLR_EDGE_NONE, align 8
  %286 = ptrtoint i8* %285 to i32
  %287 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %288 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %287, i32 0, i32 0
  store i32 %286, i32* %288, align 8
  br label %430

289:                                              ; preds = %274
  %290 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %291 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %294 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %293, i32 0, i32 2
  %295 = load i64, i64* %294, align 8
  %296 = call double @fmin(i64 %292, i64 %295)
  %297 = fmul double %296, 3.000000e-01
  %298 = fptoui double %297 to i64
  store i64 %298, i64* %13, align 8
  %299 = load i64, i64* @INT_MAX, align 8
  store i64 %299, i64* %14, align 8
  %300 = load i8*, i8** @WLR_EDGE_NONE, align 8
  %301 = ptrtoint i8* %300 to i32
  %302 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %303 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %302, i32 0, i32 0
  store i32 %301, i32* %303, align 8
  %304 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %305 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %304, i32 0, i32 0
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %310 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %309, i32 0, i32 3
  %311 = load i64, i64* %310, align 8
  %312 = sub i64 %308, %311
  store i64 %312, i64* %15, align 8
  %313 = load i64, i64* %14, align 8
  %314 = icmp ult i64 %312, %313
  br i1 %314, label %315, label %321

315:                                              ; preds = %289
  %316 = load i64, i64* %15, align 8
  store i64 %316, i64* %14, align 8
  %317 = load i8*, i8** @WLR_EDGE_TOP, align 8
  %318 = ptrtoint i8* %317 to i32
  %319 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %320 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %319, i32 0, i32 0
  store i32 %318, i32* %320, align 8
  br label %321

321:                                              ; preds = %315, %289
  %322 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %323 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %322, i32 0, i32 0
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %328 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %327, i32 0, i32 4
  %329 = load i64, i64* %328, align 8
  %330 = sub i64 %326, %329
  store i64 %330, i64* %15, align 8
  %331 = load i64, i64* %14, align 8
  %332 = icmp ult i64 %330, %331
  br i1 %332, label %333, label %339

333:                                              ; preds = %321
  %334 = load i64, i64* %15, align 8
  store i64 %334, i64* %14, align 8
  %335 = load i8*, i8** @WLR_EDGE_LEFT, align 8
  %336 = ptrtoint i8* %335 to i32
  %337 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %338 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %337, i32 0, i32 0
  store i32 %336, i32* %338, align 8
  br label %339

339:                                              ; preds = %333, %321
  %340 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %341 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %340, i32 0, i32 4
  %342 = load i64, i64* %341, align 8
  %343 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %344 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %343, i32 0, i32 5
  %345 = load i64, i64* %344, align 8
  %346 = add i64 %342, %345
  %347 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %348 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %347, i32 0, i32 0
  %349 = load %struct.TYPE_4__*, %struct.TYPE_4__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = sub i64 %346, %351
  store i64 %352, i64* %15, align 8
  %353 = load i64, i64* %14, align 8
  %354 = icmp ult i64 %352, %353
  br i1 %354, label %355, label %361

355:                                              ; preds = %339
  %356 = load i64, i64* %15, align 8
  store i64 %356, i64* %14, align 8
  %357 = load i8*, i8** @WLR_EDGE_RIGHT, align 8
  %358 = ptrtoint i8* %357 to i32
  %359 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %360 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %359, i32 0, i32 0
  store i32 %358, i32* %360, align 8
  br label %361

361:                                              ; preds = %355, %339
  %362 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %363 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %362, i32 0, i32 3
  %364 = load i64, i64* %363, align 8
  %365 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %366 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %365, i32 0, i32 6
  %367 = load i64, i64* %366, align 8
  %368 = add i64 %364, %367
  %369 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %370 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %369, i32 0, i32 0
  %371 = load %struct.TYPE_4__*, %struct.TYPE_4__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = sub i64 %368, %373
  store i64 %374, i64* %15, align 8
  %375 = load i64, i64* %14, align 8
  %376 = icmp ult i64 %374, %375
  br i1 %376, label %377, label %383

377:                                              ; preds = %361
  %378 = load i64, i64* %15, align 8
  store i64 %378, i64* %14, align 8
  %379 = load i8*, i8** @WLR_EDGE_BOTTOM, align 8
  %380 = ptrtoint i8* %379 to i32
  %381 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %382 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %381, i32 0, i32 0
  store i32 %380, i32* %382, align 8
  br label %383

383:                                              ; preds = %377, %361
  %384 = load i64, i64* %14, align 8
  %385 = load i64, i64* %13, align 8
  %386 = icmp ugt i64 %384, %385
  br i1 %386, label %387, label %392

387:                                              ; preds = %383
  %388 = load i8*, i8** @WLR_EDGE_NONE, align 8
  %389 = ptrtoint i8* %388 to i32
  %390 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %391 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %390, i32 0, i32 0
  store i32 %389, i32* %391, align 8
  br label %392

392:                                              ; preds = %387, %383
  %393 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %394 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %395 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %394, i32 0, i32 2
  store %struct.sway_node* %393, %struct.sway_node** %395, align 8
  %396 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %397 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %396, i32 0, i32 7
  %398 = load i64, i64* %397, align 8
  %399 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %400 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %399, i32 0, i32 1
  %401 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %400, i32 0, i32 2
  store i64 %398, i64* %401, align 8
  %402 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %403 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %402, i32 0, i32 8
  %404 = load i64, i64* %403, align 8
  %405 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %406 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %406, i32 0, i32 0
  store i64 %404, i64* %407, align 8
  %408 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %409 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %408, i32 0, i32 1
  %410 = load i64, i64* %409, align 8
  %411 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %412 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %411, i32 0, i32 1
  %413 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %412, i32 0, i32 3
  store i64 %410, i64* %413, align 8
  %414 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %415 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %414, i32 0, i32 2
  %416 = load i64, i64* %415, align 8
  %417 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %418 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %417, i32 0, i32 1
  %419 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %418, i32 0, i32 1
  store i64 %416, i64* %419, align 8
  %420 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %421 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %420, i32 0, i32 1
  %422 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %423 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = load i64, i64* %13, align 8
  %426 = call i32 @resize_box(%struct.wlr_box* %421, i32 %424, i64 %425)
  %427 = load %struct.seatop_move_tiling_event*, %struct.seatop_move_tiling_event** %3, align 8
  %428 = getelementptr inbounds %struct.seatop_move_tiling_event, %struct.seatop_move_tiling_event* %427, i32 0, i32 1
  %429 = call i32 @desktop_damage_box(%struct.wlr_box* %428)
  br label %430

430:                                              ; preds = %392, %282, %230, %90, %52, %39
  ret void
}

declare dso_local %struct.sway_node* @node_at_coords(%struct.sway_seat*, i64, i64, %struct.wlr_surface**, double*, double*) #1

declare dso_local i32 @desktop_damage_box(%struct.wlr_box*) #1

declare dso_local i32 @workspace_get_box(i64, %struct.wlr_box*) #1

declare dso_local i32 @workspace_num_tiling_views(i64) #1

declare dso_local i32 @container_parent_layout(%struct.sway_container*) #1

declare dso_local i32 @container_get_box(%struct.sway_container*, %struct.wlr_box*) #1

declare dso_local i8* @node_get_parent(%struct.sway_node*) #1

declare dso_local i32 @node_get_box(%struct.sway_node*, %struct.wlr_box*) #1

declare dso_local i32 @resize_box(%struct.wlr_box*, i32, i64) #1

declare dso_local i64 @node_has_ancestor(%struct.sway_node*, %struct.sway_node*) #1

declare dso_local double @fmin(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
