; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_autoconfigure.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_autoconfigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double, double, double, double }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.sway_view = type { %struct.sway_container* }
%struct.sway_container = type { i64, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.sway_workspace* }
%struct.sway_workspace = type { i32, i32, i32, i32, %struct.sway_output* }
%struct.sway_output = type { double, double, double, double }
%struct.TYPE_5__ = type { i32 }

@FULLSCREEN_GLOBAL = common dso_local global i64 0, align 8
@FULLSCREEN_WORKSPACE = common dso_local global i64 0, align 8
@root = common dso_local global %struct.TYPE_6__* null, align 8
@config = common dso_local global %struct.TYPE_7__* null, align 8
@ESMART_ON = common dso_local global i64 0, align 8
@ESMART_NO_GAPS = common dso_local global i64 0, align 8
@E_BOTH = common dso_local global i64 0, align 8
@E_VERTICAL = common dso_local global i64 0, align 8
@E_HORIZONTAL = common dso_local global i64 0, align 8
@L_TABBED = common dso_local global i32 0, align 4
@L_STACKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @view_autoconfigure(%struct.sway_view* %0) #0 {
  %2 = alloca %struct.sway_view*, align 8
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca %struct.sway_workspace*, align 8
  %5 = alloca %struct.sway_output*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store %struct.sway_view* %0, %struct.sway_view** %2, align 8
  %18 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %19 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %18, i32 0, i32 0
  %20 = load %struct.sway_container*, %struct.sway_container** %19, align 8
  store %struct.sway_container* %20, %struct.sway_container** %3, align 8
  %21 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %22 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %21, i32 0, i32 15
  %23 = load %struct.sway_workspace*, %struct.sway_workspace** %22, align 8
  store %struct.sway_workspace* %23, %struct.sway_workspace** %4, align 8
  %24 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %25 = call i64 @container_is_scratchpad_hidden(%struct.sway_container* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %29 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FULLSCREEN_GLOBAL, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %470

34:                                               ; preds = %27, %1
  %35 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %36 = icmp ne %struct.sway_workspace* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %39 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %38, i32 0, i32 4
  %40 = load %struct.sway_output*, %struct.sway_output** %39, align 8
  br label %42

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi %struct.sway_output* [ %40, %37 ], [ null, %41 ]
  store %struct.sway_output* %43, %struct.sway_output** %5, align 8
  %44 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %45 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @FULLSCREEN_WORKSPACE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %42
  %50 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %51 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %50, i32 0, i32 0
  %52 = load double, double* %51, align 8
  %53 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %54 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %53, i32 0, i32 1
  store double %52, double* %54, align 8
  %55 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %56 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %55, i32 0, i32 1
  %57 = load double, double* %56, align 8
  %58 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %59 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %58, i32 0, i32 2
  store double %57, double* %59, align 8
  %60 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %61 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %60, i32 0, i32 2
  %62 = load double, double* %61, align 8
  %63 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %64 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %63, i32 0, i32 3
  store double %62, double* %64, align 8
  %65 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %66 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %65, i32 0, i32 3
  %67 = load double, double* %66, align 8
  %68 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %69 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %68, i32 0, i32 4
  store double %67, double* %69, align 8
  br label %470

70:                                               ; preds = %42
  %71 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %72 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @FULLSCREEN_GLOBAL, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %70
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** @root, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load double, double* %78, align 8
  %80 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %81 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %80, i32 0, i32 1
  store double %79, double* %81, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** @root, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load double, double* %83, align 8
  %85 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %86 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %85, i32 0, i32 2
  store double %84, double* %86, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @root, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load double, double* %88, align 8
  %90 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %91 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %90, i32 0, i32 3
  store double %89, double* %91, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** @root, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  %94 = load double, double* %93, align 8
  %95 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %96 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %95, i32 0, i32 4
  store double %94, double* %96, align 8
  br label %470

97:                                               ; preds = %70
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %100 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %99, i32 0, i32 6
  store i32 1, i32* %100, align 4
  %101 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %102 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %101, i32 0, i32 5
  store i32 1, i32* %102, align 8
  %103 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %104 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %103, i32 0, i32 8
  store i32 1, i32* %104, align 4
  %105 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %106 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %105, i32 0, i32 7
  store i32 1, i32* %106, align 8
  store double 0.000000e+00, double* %6, align 8
  %107 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %108 = call i32 @container_is_floating(%struct.sway_container* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %280, label %110

110:                                              ; preds = %98
  %111 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %112 = icmp ne %struct.sway_workspace* %111, null
  br i1 %112, label %113, label %280

113:                                              ; preds = %110
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @ESMART_ON, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %132, label %119

119:                                              ; preds = %113
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @ESMART_NO_GAPS, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %127 = call i32 @gaps_to_edge(%struct.sway_view* %126)
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  br label %130

130:                                              ; preds = %125, %119
  %131 = phi i1 [ false, %119 ], [ %129, %125 ]
  br label %132

132:                                              ; preds = %130, %113
  %133 = phi i1 [ true, %113 ], [ %131, %130 ]
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %139 = call i64 @view_is_only_visible(%struct.sway_view* %138)
  %140 = icmp ne i64 %139, 0
  br label %141

141:                                              ; preds = %137, %132
  %142 = phi i1 [ false, %132 ], [ %140, %137 ]
  %143 = zext i1 %142 to i32
  store i32 %143, i32* %8, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @E_BOTH, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %158, label %149

149:                                              ; preds = %141
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @E_VERTICAL, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %158, label %155

155:                                              ; preds = %149
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %188

158:                                              ; preds = %155, %149, %141
  %159 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %160 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %159, i32 0, i32 9
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %163 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %161, %164
  %166 = zext i1 %165 to i32
  %167 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %168 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %167, i32 0, i32 7
  store i32 %166, i32* %168, align 8
  %169 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %170 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %169, i32 0, i32 9
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %173 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %172, i32 0, i32 10
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %171, %174
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %178 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %181 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %179, %182
  %184 = icmp ne i32 %176, %183
  %185 = zext i1 %184 to i32
  %186 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %187 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %186, i32 0, i32 8
  store i32 %185, i32* %187, align 4
  br label %188

188:                                              ; preds = %158, %155
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @E_BOTH, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %203, label %194

194:                                              ; preds = %188
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @E_HORIZONTAL, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %203, label %200

200:                                              ; preds = %194
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %233

203:                                              ; preds = %200, %194, %188
  %204 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %205 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %204, i32 0, i32 11
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %208 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %206, %209
  %211 = zext i1 %210 to i32
  %212 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %213 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %212, i32 0, i32 5
  store i32 %211, i32* %213, align 8
  %214 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %215 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %214, i32 0, i32 11
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %218 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %217, i32 0, i32 12
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %216, %219
  store i32 %220, i32* %10, align 4
  %221 = load i32, i32* %10, align 4
  %222 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %223 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %226 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %224, %227
  %229 = icmp ne i32 %221, %228
  %230 = zext i1 %229 to i32
  %231 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %232 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %231, i32 0, i32 6
  store i32 %230, i32* %232, align 4
  br label %233

233:                                              ; preds = %203, %200
  %234 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %235 = call %struct.TYPE_5__* @container_get_siblings(%struct.sway_container* %234)
  store %struct.TYPE_5__* %235, %struct.TYPE_5__** %11, align 8
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %237 = icmp ne %struct.TYPE_5__* %236, null
  br i1 %237, label %238, label %243

238:                                              ; preds = %233
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = icmp sgt i32 %241, 1
  br i1 %242, label %249, label %243

243:                                              ; preds = %238, %233
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = icmp ne i32 %246, 0
  %248 = xor i1 %247, true
  br label %249

249:                                              ; preds = %243, %238
  %250 = phi i1 [ true, %238 ], [ %248, %243 ]
  %251 = zext i1 %250 to i32
  store i32 %251, i32* %12, align 4
  %252 = load i32, i32* %12, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %279

254:                                              ; preds = %249
  %255 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %256 = call i32 @container_parent_layout(%struct.sway_container* %255)
  store i32 %256, i32* %13, align 4
  %257 = load i32, i32* %13, align 4
  %258 = load i32, i32* @L_TABBED, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %264

260:                                              ; preds = %254
  %261 = call double (...) @container_titlebar_height()
  store double %261, double* %6, align 8
  %262 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %263 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %262, i32 0, i32 5
  store i32 0, i32* %263, align 8
  br label %278

264:                                              ; preds = %254
  %265 = load i32, i32* %13, align 4
  %266 = load i32, i32* @L_STACKED, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %277

268:                                              ; preds = %264
  %269 = call double (...) @container_titlebar_height()
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = sitofp i32 %272 to double
  %274 = fmul double %269, %273
  store double %274, double* %6, align 8
  %275 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %276 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %275, i32 0, i32 5
  store i32 0, i32* %276, align 8
  br label %277

277:                                              ; preds = %268, %264
  br label %278

278:                                              ; preds = %277, %260
  br label %279

279:                                              ; preds = %278, %249
  br label %280

280:                                              ; preds = %279, %110, %98
  %281 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %282 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %281, i32 0, i32 13
  %283 = load i32, i32* %282, align 8
  switch i32 %283, label %284 [
    i32 131, label %285
    i32 130, label %285
    i32 128, label %306
    i32 129, label %377
  ]

284:                                              ; preds = %280
  br label %285

285:                                              ; preds = %280, %280, %284
  %286 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %287 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %286, i32 0, i32 9
  %288 = load i32, i32* %287, align 8
  %289 = sitofp i32 %288 to double
  store double %289, double* %14, align 8
  %290 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %291 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %290, i32 0, i32 11
  %292 = load i32, i32* %291, align 8
  %293 = sitofp i32 %292 to double
  %294 = load double, double* %6, align 8
  %295 = fadd double %293, %294
  store double %295, double* %15, align 8
  %296 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %297 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %296, i32 0, i32 10
  %298 = load i32, i32* %297, align 4
  %299 = sitofp i32 %298 to double
  store double %299, double* %16, align 8
  %300 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %301 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %300, i32 0, i32 12
  %302 = load i32, i32* %301, align 4
  %303 = sitofp i32 %302 to double
  %304 = load double, double* %6, align 8
  %305 = fsub double %303, %304
  store double %305, double* %17, align 8
  br label %457

306:                                              ; preds = %280
  %307 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %308 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %307, i32 0, i32 9
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %311 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %310, i32 0, i32 14
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %314 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %313, i32 0, i32 7
  %315 = load i32, i32* %314, align 8
  %316 = mul nsw i32 %312, %315
  %317 = add nsw i32 %309, %316
  %318 = sitofp i32 %317 to double
  store double %318, double* %14, align 8
  %319 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %320 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %319, i32 0, i32 11
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %323 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %322, i32 0, i32 14
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %326 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %325, i32 0, i32 5
  %327 = load i32, i32* %326, align 8
  %328 = mul nsw i32 %324, %327
  %329 = add nsw i32 %321, %328
  %330 = sitofp i32 %329 to double
  %331 = load double, double* %6, align 8
  %332 = fadd double %330, %331
  store double %332, double* %15, align 8
  %333 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %334 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %333, i32 0, i32 10
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %337 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %336, i32 0, i32 14
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %340 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %339, i32 0, i32 7
  %341 = load i32, i32* %340, align 8
  %342 = mul nsw i32 %338, %341
  %343 = sub nsw i32 %335, %342
  %344 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %345 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %344, i32 0, i32 14
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %348 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %347, i32 0, i32 8
  %349 = load i32, i32* %348, align 4
  %350 = mul nsw i32 %346, %349
  %351 = sub nsw i32 %343, %350
  %352 = sitofp i32 %351 to double
  store double %352, double* %16, align 8
  %353 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %354 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %353, i32 0, i32 12
  %355 = load i32, i32* %354, align 4
  %356 = sitofp i32 %355 to double
  %357 = load double, double* %6, align 8
  %358 = fsub double %356, %357
  %359 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %360 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %359, i32 0, i32 14
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %363 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %362, i32 0, i32 5
  %364 = load i32, i32* %363, align 8
  %365 = mul nsw i32 %361, %364
  %366 = sitofp i32 %365 to double
  %367 = fsub double %358, %366
  %368 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %369 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %368, i32 0, i32 14
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %372 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %371, i32 0, i32 6
  %373 = load i32, i32* %372, align 4
  %374 = mul nsw i32 %370, %373
  %375 = sitofp i32 %374 to double
  %376 = fsub double %367, %375
  store double %376, double* %17, align 8
  br label %457

377:                                              ; preds = %280
  %378 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %379 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %378, i32 0, i32 9
  %380 = load i32, i32* %379, align 8
  %381 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %382 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %381, i32 0, i32 14
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %385 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %384, i32 0, i32 7
  %386 = load i32, i32* %385, align 8
  %387 = mul nsw i32 %383, %386
  %388 = add nsw i32 %380, %387
  %389 = sitofp i32 %388 to double
  store double %389, double* %14, align 8
  %390 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %391 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %390, i32 0, i32 10
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %394 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %393, i32 0, i32 14
  %395 = load i32, i32* %394, align 4
  %396 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %397 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %396, i32 0, i32 7
  %398 = load i32, i32* %397, align 8
  %399 = mul nsw i32 %395, %398
  %400 = sub nsw i32 %392, %399
  %401 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %402 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %401, i32 0, i32 14
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %405 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %404, i32 0, i32 8
  %406 = load i32, i32* %405, align 4
  %407 = mul nsw i32 %403, %406
  %408 = sub nsw i32 %400, %407
  %409 = sitofp i32 %408 to double
  store double %409, double* %16, align 8
  %410 = load double, double* %6, align 8
  %411 = fcmp une double %410, 0.000000e+00
  br i1 %411, label %412, label %434

412:                                              ; preds = %377
  %413 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %414 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %413, i32 0, i32 11
  %415 = load i32, i32* %414, align 8
  %416 = sitofp i32 %415 to double
  %417 = load double, double* %6, align 8
  %418 = fadd double %416, %417
  store double %418, double* %15, align 8
  %419 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %420 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %419, i32 0, i32 12
  %421 = load i32, i32* %420, align 4
  %422 = sitofp i32 %421 to double
  %423 = load double, double* %6, align 8
  %424 = fsub double %422, %423
  %425 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %426 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %425, i32 0, i32 14
  %427 = load i32, i32* %426, align 4
  %428 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %429 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %428, i32 0, i32 6
  %430 = load i32, i32* %429, align 4
  %431 = mul nsw i32 %427, %430
  %432 = sitofp i32 %431 to double
  %433 = fsub double %424, %432
  store double %433, double* %17, align 8
  br label %456

434:                                              ; preds = %377
  %435 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %436 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %435, i32 0, i32 11
  %437 = load i32, i32* %436, align 8
  %438 = sitofp i32 %437 to double
  %439 = call double (...) @container_titlebar_height()
  %440 = fadd double %438, %439
  store double %440, double* %15, align 8
  %441 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %442 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %441, i32 0, i32 12
  %443 = load i32, i32* %442, align 4
  %444 = sitofp i32 %443 to double
  %445 = call double (...) @container_titlebar_height()
  %446 = fsub double %444, %445
  %447 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %448 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %447, i32 0, i32 14
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %451 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %450, i32 0, i32 6
  %452 = load i32, i32* %451, align 4
  %453 = mul nsw i32 %449, %452
  %454 = sitofp i32 %453 to double
  %455 = fsub double %446, %454
  store double %455, double* %17, align 8
  br label %456

456:                                              ; preds = %434, %412
  br label %457

457:                                              ; preds = %456, %306, %285
  %458 = load double, double* %14, align 8
  %459 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %460 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %459, i32 0, i32 1
  store double %458, double* %460, align 8
  %461 = load double, double* %15, align 8
  %462 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %463 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %462, i32 0, i32 2
  store double %461, double* %463, align 8
  %464 = load double, double* %16, align 8
  %465 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %466 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %465, i32 0, i32 3
  store double %464, double* %466, align 8
  %467 = load double, double* %17, align 8
  %468 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %469 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %468, i32 0, i32 4
  store double %467, double* %469, align 8
  br label %470

470:                                              ; preds = %457, %76, %49, %33
  ret void
}

declare dso_local i64 @container_is_scratchpad_hidden(%struct.sway_container*) #1

declare dso_local i32 @container_is_floating(%struct.sway_container*) #1

declare dso_local i32 @gaps_to_edge(%struct.sway_view*) #1

declare dso_local i64 @view_is_only_visible(%struct.sway_view*) #1

declare dso_local %struct.TYPE_5__* @container_get_siblings(%struct.sway_container*) #1

declare dso_local i32 @container_parent_layout(%struct.sway_container*) #1

declare dso_local double @container_titlebar_height(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
