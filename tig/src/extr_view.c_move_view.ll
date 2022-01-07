; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_move_view.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_move_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32, i32, i32, %struct.TYPE_4__, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.view*, i32*)* }

@opt_mouse_scroll = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"request %d not handled in switch\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Cannot move beyond the first line\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Cannot move beyond the last line\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @move_view(%struct.view* %0, i32 %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %137 [
    i32 138, label %8
    i32 135, label %14
    i32 133, label %24
    i32 134, label %46
    i32 136, label %75
    i32 137, label %99
    i32 131, label %130
    i32 130, label %132
    i32 132, label %135
    i32 128, label %135
    i32 139, label %136
    i32 129, label %136
  ]

8:                                                ; preds = %2
  %9 = load %struct.view*, %struct.view** %3, align 8
  %10 = getelementptr inbounds %struct.view, %struct.view* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  br label %140

14:                                               ; preds = %2
  %15 = load %struct.view*, %struct.view** %3, align 8
  %16 = getelementptr inbounds %struct.view, %struct.view* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.view*, %struct.view** %3, align 8
  %19 = getelementptr inbounds %struct.view, %struct.view* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %17, %21
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %140

24:                                               ; preds = %2
  %25 = load %struct.view*, %struct.view** %3, align 8
  %26 = getelementptr inbounds %struct.view, %struct.view* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.view*, %struct.view** %3, align 8
  %29 = getelementptr inbounds %struct.view, %struct.view* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %27, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load %struct.view*, %struct.view** %3, align 8
  %35 = getelementptr inbounds %struct.view, %struct.view* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 0, %37
  br label %44

39:                                               ; preds = %24
  %40 = load %struct.view*, %struct.view** %3, align 8
  %41 = getelementptr inbounds %struct.view, %struct.view* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 0, %42
  br label %44

44:                                               ; preds = %39, %33
  %45 = phi i32 [ %38, %33 ], [ %43, %39 ]
  store i32 %45, i32* %6, align 4
  br label %140

46:                                               ; preds = %2
  %47 = load %struct.view*, %struct.view** %3, align 8
  %48 = getelementptr inbounds %struct.view, %struct.view* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.view*, %struct.view** %3, align 8
  %52 = getelementptr inbounds %struct.view, %struct.view* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  %55 = load %struct.view*, %struct.view** %3, align 8
  %56 = getelementptr inbounds %struct.view, %struct.view* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sge i32 %54, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %46
  %60 = load %struct.view*, %struct.view** %3, align 8
  %61 = getelementptr inbounds %struct.view, %struct.view* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.view*, %struct.view** %3, align 8
  %64 = getelementptr inbounds %struct.view, %struct.view* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %62, %66
  %68 = sub nsw i32 %67, 1
  br label %73

69:                                               ; preds = %46
  %70 = load %struct.view*, %struct.view** %3, align 8
  %71 = getelementptr inbounds %struct.view, %struct.view* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  br label %73

73:                                               ; preds = %69, %59
  %74 = phi i32 [ %68, %59 ], [ %72, %69 ]
  store i32 %74, i32* %6, align 4
  br label %140

75:                                               ; preds = %2
  %76 = load %struct.view*, %struct.view** %3, align 8
  %77 = getelementptr inbounds %struct.view, %struct.view* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sdiv i32 %78, 2
  %80 = load %struct.view*, %struct.view** %3, align 8
  %81 = getelementptr inbounds %struct.view, %struct.view* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %79, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %75
  %86 = load %struct.view*, %struct.view** %3, align 8
  %87 = getelementptr inbounds %struct.view, %struct.view* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 0, %89
  br label %97

91:                                               ; preds = %75
  %92 = load %struct.view*, %struct.view** %3, align 8
  %93 = getelementptr inbounds %struct.view, %struct.view* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sdiv i32 %94, 2
  %96 = sub nsw i32 0, %95
  br label %97

97:                                               ; preds = %91, %85
  %98 = phi i32 [ %90, %85 ], [ %96, %91 ]
  store i32 %98, i32* %6, align 4
  br label %140

99:                                               ; preds = %2
  %100 = load %struct.view*, %struct.view** %3, align 8
  %101 = getelementptr inbounds %struct.view, %struct.view* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.view*, %struct.view** %3, align 8
  %105 = getelementptr inbounds %struct.view, %struct.view* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sdiv i32 %106, 2
  %108 = add nsw i32 %103, %107
  %109 = load %struct.view*, %struct.view** %3, align 8
  %110 = getelementptr inbounds %struct.view, %struct.view* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp sge i32 %108, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %99
  %114 = load %struct.view*, %struct.view** %3, align 8
  %115 = getelementptr inbounds %struct.view, %struct.view* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.view*, %struct.view** %3, align 8
  %118 = getelementptr inbounds %struct.view, %struct.view* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %116, %120
  %122 = sub nsw i32 %121, 1
  br label %128

123:                                              ; preds = %99
  %124 = load %struct.view*, %struct.view** %3, align 8
  %125 = getelementptr inbounds %struct.view, %struct.view* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sdiv i32 %126, 2
  br label %128

128:                                              ; preds = %123, %113
  %129 = phi i32 [ %122, %113 ], [ %127, %123 ]
  store i32 %129, i32* %6, align 4
  br label %140

130:                                              ; preds = %2
  %131 = load i32, i32* @opt_mouse_scroll, align 4
  store i32 %131, i32* %6, align 4
  br label %140

132:                                              ; preds = %2
  %133 = load i32, i32* @opt_mouse_scroll, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %6, align 4
  br label %140

135:                                              ; preds = %2, %2
  store i32 -1, i32* %6, align 4
  br label %140

136:                                              ; preds = %2, %2
  store i32 1, i32* %6, align 4
  br label %140

137:                                              ; preds = %2
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %137, %136, %135, %132, %130, %128, %97, %73, %44, %14, %8
  %141 = load i32, i32* %6, align 4
  %142 = icmp sle i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = load %struct.view*, %struct.view** %3, align 8
  %145 = getelementptr inbounds %struct.view, %struct.view* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = call i32 @report(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %372

151:                                              ; preds = %143, %140
  %152 = load i32, i32* %6, align 4
  %153 = icmp sge i32 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %151
  %155 = load %struct.view*, %struct.view** %3, align 8
  %156 = getelementptr inbounds %struct.view, %struct.view* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  %160 = load %struct.view*, %struct.view** %3, align 8
  %161 = getelementptr inbounds %struct.view, %struct.view* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp sge i32 %159, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %154
  %165 = call i32 @report(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %372

166:                                              ; preds = %154, %151
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %6, align 4
  %169 = load %struct.view*, %struct.view** %3, align 8
  %170 = getelementptr inbounds %struct.view, %struct.view* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, %168
  store i32 %173, i32* %171, align 4
  %174 = load %struct.view*, %struct.view** %3, align 8
  %175 = getelementptr inbounds %struct.view, %struct.view* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp sle i32 0, %177
  br i1 %178, label %179, label %188

179:                                              ; preds = %167
  %180 = load %struct.view*, %struct.view** %3, align 8
  %181 = getelementptr inbounds %struct.view, %struct.view* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.view*, %struct.view** %3, align 8
  %185 = getelementptr inbounds %struct.view, %struct.view* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %183, %186
  br label %188

188:                                              ; preds = %179, %167
  %189 = phi i1 [ false, %167 ], [ %187, %179 ]
  %190 = zext i1 %189 to i32
  %191 = call i32 @assert(i32 %190)
  %192 = load %struct.view*, %struct.view** %3, align 8
  %193 = getelementptr inbounds %struct.view, %struct.view* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.view*, %struct.view** %3, align 8
  %197 = getelementptr inbounds %struct.view, %struct.view* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %195, %199
  br i1 %200, label %215, label %201

201:                                              ; preds = %188
  %202 = load %struct.view*, %struct.view** %3, align 8
  %203 = getelementptr inbounds %struct.view, %struct.view* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.view*, %struct.view** %3, align 8
  %207 = getelementptr inbounds %struct.view, %struct.view* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.view*, %struct.view** %3, align 8
  %211 = getelementptr inbounds %struct.view, %struct.view* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %209, %212
  %214 = icmp sge i32 %205, %213
  br i1 %214, label %215, label %280

215:                                              ; preds = %201, %188
  %216 = load i32, i32* %6, align 4
  store i32 %216, i32* %5, align 4
  %217 = load i32, i32* %6, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %233

219:                                              ; preds = %215
  %220 = load i32, i32* %6, align 4
  %221 = sub nsw i32 0, %220
  %222 = load %struct.view*, %struct.view** %3, align 8
  %223 = getelementptr inbounds %struct.view, %struct.view* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = icmp sgt i32 %221, %225
  br i1 %226, label %227, label %233

227:                                              ; preds = %219
  %228 = load %struct.view*, %struct.view** %3, align 8
  %229 = getelementptr inbounds %struct.view, %struct.view* %228, i32 0, i32 3
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %5, align 4
  br label %279

233:                                              ; preds = %219, %215
  %234 = load i32, i32* %6, align 4
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %236, label %278

236:                                              ; preds = %233
  %237 = load %struct.view*, %struct.view** %3, align 8
  %238 = getelementptr inbounds %struct.view, %struct.view* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.view*, %struct.view** %3, align 8
  %242 = getelementptr inbounds %struct.view, %struct.view* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = sub nsw i32 %243, 1
  %245 = icmp eq i32 %240, %244
  br i1 %245, label %246, label %277

246:                                              ; preds = %236
  %247 = load %struct.view*, %struct.view** %3, align 8
  %248 = getelementptr inbounds %struct.view, %struct.view* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.view*, %struct.view** %3, align 8
  %251 = getelementptr inbounds %struct.view, %struct.view* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = icmp sgt i32 %249, %252
  br i1 %253, label %254, label %277

254:                                              ; preds = %246
  %255 = load %struct.view*, %struct.view** %3, align 8
  %256 = getelementptr inbounds %struct.view, %struct.view* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.view*, %struct.view** %3, align 8
  %259 = getelementptr inbounds %struct.view, %struct.view* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = sub nsw i32 %257, %261
  %263 = sub nsw i32 %262, 1
  store i32 %263, i32* %5, align 4
  %264 = load i32, i32* %5, align 4
  %265 = load %struct.view*, %struct.view** %3, align 8
  %266 = getelementptr inbounds %struct.view, %struct.view* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = icmp sge i32 %264, %267
  br i1 %268, label %269, label %276

269:                                              ; preds = %254
  %270 = load %struct.view*, %struct.view** %3, align 8
  %271 = getelementptr inbounds %struct.view, %struct.view* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = sub nsw i32 %272, 1
  %274 = load i32, i32* %5, align 4
  %275 = sub nsw i32 %274, %273
  store i32 %275, i32* %5, align 4
  br label %276

276:                                              ; preds = %269, %254
  br label %277

277:                                              ; preds = %276, %246, %236
  br label %278

278:                                              ; preds = %277, %233
  br label %279

279:                                              ; preds = %278, %227
  br label %280

280:                                              ; preds = %279, %201
  %281 = load %struct.view*, %struct.view** %3, align 8
  %282 = call i32 @view_is_displayed(%struct.view* %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %325, label %284

284:                                              ; preds = %280
  %285 = load i32, i32* %5, align 4
  %286 = load %struct.view*, %struct.view** %3, align 8
  %287 = getelementptr inbounds %struct.view, %struct.view* %286, i32 0, i32 3
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %289, %285
  store i32 %290, i32* %288, align 4
  %291 = load %struct.view*, %struct.view** %3, align 8
  %292 = getelementptr inbounds %struct.view, %struct.view* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = icmp sle i32 0, %294
  br i1 %295, label %296, label %305

296:                                              ; preds = %284
  %297 = load %struct.view*, %struct.view** %3, align 8
  %298 = getelementptr inbounds %struct.view, %struct.view* %297, i32 0, i32 3
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.view*, %struct.view** %3, align 8
  %302 = getelementptr inbounds %struct.view, %struct.view* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = icmp slt i32 %300, %303
  br label %305

305:                                              ; preds = %296, %284
  %306 = phi i1 [ false, %284 ], [ %304, %296 ]
  %307 = zext i1 %306 to i32
  %308 = call i32 @assert(i32 %307)
  %309 = load %struct.view*, %struct.view** %3, align 8
  %310 = getelementptr inbounds %struct.view, %struct.view* %309, i32 0, i32 5
  %311 = load %struct.TYPE_3__*, %struct.TYPE_3__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %311, i32 0, i32 0
  %313 = load i32 (%struct.view*, i32*)*, i32 (%struct.view*, i32*)** %312, align 8
  %314 = load %struct.view*, %struct.view** %3, align 8
  %315 = load %struct.view*, %struct.view** %3, align 8
  %316 = getelementptr inbounds %struct.view, %struct.view* %315, i32 0, i32 4
  %317 = load i32*, i32** %316, align 8
  %318 = load %struct.view*, %struct.view** %3, align 8
  %319 = getelementptr inbounds %struct.view, %struct.view* %318, i32 0, i32 3
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %317, i64 %322
  %324 = call i32 %313(%struct.view* %314, i32* %323)
  br label %372

325:                                              ; preds = %280
  %326 = load i32, i32* %6, align 4
  %327 = call i32 @ABS(i32 %326)
  %328 = load %struct.view*, %struct.view** %3, align 8
  %329 = getelementptr inbounds %struct.view, %struct.view* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = icmp slt i32 %327, %330
  br i1 %331, label %332, label %347

332:                                              ; preds = %325
  %333 = load %struct.view*, %struct.view** %3, align 8
  %334 = load %struct.view*, %struct.view** %3, align 8
  %335 = getelementptr inbounds %struct.view, %struct.view* %334, i32 0, i32 3
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* %6, align 4
  %339 = sub nsw i32 %337, %338
  %340 = load %struct.view*, %struct.view** %3, align 8
  %341 = getelementptr inbounds %struct.view, %struct.view* %340, i32 0, i32 3
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = sub nsw i32 %339, %343
  %345 = sext i32 %344 to i64
  %346 = call i32 @draw_view_line(%struct.view* %333, i64 %345)
  br label %347

347:                                              ; preds = %332, %325
  %348 = load i32, i32* %5, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %347
  %351 = load %struct.view*, %struct.view** %3, align 8
  %352 = load i32, i32* %5, align 4
  %353 = call i32 @do_scroll_view(%struct.view* %351, i32 %352)
  br label %372

354:                                              ; preds = %347
  %355 = load %struct.view*, %struct.view** %3, align 8
  %356 = load %struct.view*, %struct.view** %3, align 8
  %357 = getelementptr inbounds %struct.view, %struct.view* %356, i32 0, i32 3
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.view*, %struct.view** %3, align 8
  %361 = getelementptr inbounds %struct.view, %struct.view* %360, i32 0, i32 3
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = sub nsw i32 %359, %363
  %365 = sext i32 %364 to i64
  %366 = call i32 @draw_view_line(%struct.view* %355, i64 %365)
  %367 = load %struct.view*, %struct.view** %3, align 8
  %368 = getelementptr inbounds %struct.view, %struct.view* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = call i32 @wnoutrefresh(i32 %369)
  %371 = call i32 (...) @report_clear()
  br label %372

372:                                              ; preds = %354, %350, %305, %164, %149
  ret void
}

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @view_is_displayed(%struct.view*) #1

declare dso_local i32 @ABS(i32) #1

declare dso_local i32 @draw_view_line(%struct.view*, i64) #1

declare dso_local i32 @do_scroll_view(%struct.view*, i32) #1

declare dso_local i32 @wnoutrefresh(i32) #1

declare dso_local i32 @report_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
