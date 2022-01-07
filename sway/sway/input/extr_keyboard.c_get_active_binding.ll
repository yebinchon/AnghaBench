; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_get_active_binding.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_get_active_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_shortcut_state = type { i64, i64*, i64 }
%struct.TYPE_5__ = type { i32, %struct.sway_binding** }
%struct.sway_binding = type { i32, i64, i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64* }

@BINDING_LOCKED = common dso_local global i32 0, align 4
@BINDING_RELEASE = common dso_local global i32 0, align 4
@XKB_LAYOUT_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Encountered conflicting bindings %d and %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_shortcut_state*, %struct.TYPE_5__*, %struct.sway_binding**, i64, i32, i32, i8*, i64)* @get_active_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_active_binding(%struct.sway_shortcut_state* %0, %struct.TYPE_5__* %1, %struct.sway_binding** %2, i64 %3, i32 %4, i32 %5, i8* %6, i64 %7) #0 {
  %9 = alloca %struct.sway_shortcut_state*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.sway_binding**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.sway_binding*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.sway_shortcut_state* %0, %struct.sway_shortcut_state** %9, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %10, align 8
  store %struct.sway_binding** %2, %struct.sway_binding*** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i64 %7, i64* %16, align 8
  store i32 0, i32* %17, align 4
  br label %29

29:                                               ; preds = %294, %8
  %30 = load i32, i32* %17, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %297

35:                                               ; preds = %29
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.sway_binding**, %struct.sway_binding*** %37, align 8
  %39 = load i32, i32* %17, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sway_binding*, %struct.sway_binding** %38, i64 %40
  %42 = load %struct.sway_binding*, %struct.sway_binding** %41, align 8
  store %struct.sway_binding* %42, %struct.sway_binding** %18, align 8
  %43 = load %struct.sway_binding*, %struct.sway_binding** %18, align 8
  %44 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @BINDING_LOCKED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %19, align 4
  %50 = load %struct.sway_binding*, %struct.sway_binding** %18, align 8
  %51 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @BINDING_RELEASE, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %20, align 4
  %55 = load i64, i64* %12, align 8
  %56 = load %struct.sway_binding*, %struct.sway_binding** %18, align 8
  %57 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = xor i64 %55, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %94, label %61

61:                                               ; preds = %35
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %20, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %94, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %19, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %94, label %69

69:                                               ; preds = %65
  %70 = load %struct.sway_binding*, %struct.sway_binding** %18, align 8
  %71 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @XKB_LAYOUT_INVALID, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load %struct.sway_binding*, %struct.sway_binding** %18, align 8
  %77 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %16, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %94, label %81

81:                                               ; preds = %75, %69
  %82 = load %struct.sway_binding*, %struct.sway_binding** %18, align 8
  %83 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i8*, i8** %15, align 8
  %86 = call i64 @strcmp(i32 %84, i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load %struct.sway_binding*, %struct.sway_binding** %18, align 8
  %90 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @strcmp(i32 %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88, %75, %65, %61, %35
  br label %294

95:                                               ; preds = %88, %81
  store i32 0, i32* %21, align 4
  %96 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %9, align 8
  %97 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.sway_binding*, %struct.sway_binding** %18, align 8
  %100 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %99, i32 0, i32 5
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = icmp eq i64 %98, %104
  br i1 %105, label %106, label %138

106:                                              ; preds = %95
  store i32 1, i32* %21, align 4
  store i64 0, i64* %22, align 8
  br label %107

107:                                              ; preds = %134, %106
  %108 = load i64, i64* %22, align 8
  %109 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %9, align 8
  %110 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ult i64 %108, %111
  br i1 %112, label %113, label %137

113:                                              ; preds = %107
  %114 = load %struct.sway_binding*, %struct.sway_binding** %18, align 8
  %115 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %114, i32 0, i32 5
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  %119 = load i64, i64* %22, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to i64*
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %23, align 8
  %124 = load i64, i64* %23, align 8
  %125 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %9, align 8
  %126 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %125, i32 0, i32 1
  %127 = load i64*, i64** %126, align 8
  %128 = load i64, i64* %22, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %124, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %113
  store i32 0, i32* %21, align 4
  br label %137

133:                                              ; preds = %113
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %22, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %22, align 8
  br label %107

137:                                              ; preds = %132, %107
  br label %161

138:                                              ; preds = %95
  %139 = load %struct.sway_binding*, %struct.sway_binding** %18, align 8
  %140 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %139, i32 0, i32 5
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %160

145:                                              ; preds = %138
  %146 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %9, align 8
  %147 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.sway_binding*, %struct.sway_binding** %18, align 8
  %150 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %149, i32 0, i32 5
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i64*, i64** %152, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 0
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to i64*
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %148, %157
  %159 = zext i1 %158 to i32
  store i32 %159, i32* %21, align 4
  br label %160

160:                                              ; preds = %145, %138
  br label %161

161:                                              ; preds = %160, %137
  %162 = load i32, i32* %21, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  br label %294

165:                                              ; preds = %161
  %166 = load %struct.sway_binding**, %struct.sway_binding*** %11, align 8
  %167 = load %struct.sway_binding*, %struct.sway_binding** %166, align 8
  %168 = icmp ne %struct.sway_binding* %167, null
  br i1 %168, label %169, label %266

169:                                              ; preds = %165
  %170 = load %struct.sway_binding**, %struct.sway_binding*** %11, align 8
  %171 = load %struct.sway_binding*, %struct.sway_binding** %170, align 8
  %172 = load %struct.sway_binding*, %struct.sway_binding** %18, align 8
  %173 = icmp eq %struct.sway_binding* %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %294

175:                                              ; preds = %169
  %176 = load %struct.sway_binding**, %struct.sway_binding*** %11, align 8
  %177 = load %struct.sway_binding*, %struct.sway_binding** %176, align 8
  %178 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @BINDING_LOCKED, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  %183 = zext i1 %182 to i32
  store i32 %183, i32* %24, align 4
  %184 = load %struct.sway_binding**, %struct.sway_binding*** %11, align 8
  %185 = load %struct.sway_binding*, %struct.sway_binding** %184, align 8
  %186 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = load i8*, i8** %15, align 8
  %189 = call i64 @strcmp(i32 %187, i8* %188)
  %190 = icmp eq i64 %189, 0
  %191 = zext i1 %190 to i32
  store i32 %191, i32* %25, align 4
  %192 = load %struct.sway_binding**, %struct.sway_binding*** %11, align 8
  %193 = load %struct.sway_binding*, %struct.sway_binding** %192, align 8
  %194 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @XKB_LAYOUT_INVALID, align 8
  %197 = icmp ne i64 %195, %196
  %198 = zext i1 %197 to i32
  store i32 %198, i32* %26, align 4
  %199 = load %struct.sway_binding*, %struct.sway_binding** %18, align 8
  %200 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = load i8*, i8** %15, align 8
  %203 = call i64 @strcmp(i32 %201, i8* %202)
  %204 = icmp eq i64 %203, 0
  %205 = zext i1 %204 to i32
  store i32 %205, i32* %27, align 4
  %206 = load %struct.sway_binding*, %struct.sway_binding** %18, align 8
  %207 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @XKB_LAYOUT_INVALID, align 8
  %210 = icmp ne i64 %208, %209
  %211 = zext i1 %210 to i32
  store i32 %211, i32* %28, align 4
  %212 = load i32, i32* %25, align 4
  %213 = load i32, i32* %27, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %233

215:                                              ; preds = %175
  %216 = load i32, i32* %24, align 4
  %217 = load i32, i32* %19, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %233

219:                                              ; preds = %215
  %220 = load i32, i32* %26, align 4
  %221 = load i32, i32* %28, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %233

223:                                              ; preds = %219
  %224 = load i32, i32* @SWAY_DEBUG, align 4
  %225 = load %struct.sway_binding**, %struct.sway_binding*** %11, align 8
  %226 = load %struct.sway_binding*, %struct.sway_binding** %225, align 8
  %227 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.sway_binding*, %struct.sway_binding** %18, align 8
  %230 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @sway_log(i32 %224, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %228, i32 %231)
  br label %294

233:                                              ; preds = %219, %215, %175
  %234 = load i32, i32* %25, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %233
  %237 = load i32, i32* %27, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %236
  br label %294

240:                                              ; preds = %236, %233
  %241 = load i32, i32* %25, align 4
  %242 = load i32, i32* %27, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %252

244:                                              ; preds = %240
  %245 = load %struct.sway_binding**, %struct.sway_binding*** %11, align 8
  %246 = load %struct.sway_binding*, %struct.sway_binding** %245, align 8
  %247 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* %16, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %244
  br label %294

252:                                              ; preds = %244, %240
  %253 = load i32, i32* %25, align 4
  %254 = load i32, i32* %27, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %265

256:                                              ; preds = %252
  %257 = load i32, i32* %26, align 4
  %258 = load i32, i32* %28, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %265

260:                                              ; preds = %256
  %261 = load i32, i32* %24, align 4
  %262 = load i32, i32* %14, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %260
  br label %294

265:                                              ; preds = %260, %256, %252
  br label %266

266:                                              ; preds = %265, %165
  %267 = load %struct.sway_binding*, %struct.sway_binding** %18, align 8
  %268 = load %struct.sway_binding**, %struct.sway_binding*** %11, align 8
  store %struct.sway_binding* %267, %struct.sway_binding** %268, align 8
  %269 = load %struct.sway_binding**, %struct.sway_binding*** %11, align 8
  %270 = load %struct.sway_binding*, %struct.sway_binding** %269, align 8
  %271 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 8
  %273 = load i8*, i8** %15, align 8
  %274 = call i64 @strcmp(i32 %272, i8* %273)
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %276, label %293

276:                                              ; preds = %266
  %277 = load %struct.sway_binding**, %struct.sway_binding*** %11, align 8
  %278 = load %struct.sway_binding*, %struct.sway_binding** %277, align 8
  %279 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @BINDING_LOCKED, align 4
  %282 = and i32 %280, %281
  %283 = load i32, i32* %14, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %293

285:                                              ; preds = %276
  %286 = load %struct.sway_binding**, %struct.sway_binding*** %11, align 8
  %287 = load %struct.sway_binding*, %struct.sway_binding** %286, align 8
  %288 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %287, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* %16, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %293

292:                                              ; preds = %285
  br label %297

293:                                              ; preds = %285, %276, %266
  br label %294

294:                                              ; preds = %293, %264, %251, %239, %223, %174, %164, %94
  %295 = load i32, i32* %17, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %17, align 4
  br label %29

297:                                              ; preds = %292, %29
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @sway_log(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
