; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_EM_ScrollCaret.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_EM_ScrollCaret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64, i32, i64, i64, i64, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64 }

@ES_MULTILINE = common dso_local global i32 0, align 4
@EF_AFTER_WRAP = common dso_local global i32 0, align 4
@HSCROLL_FRACTION = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@EF_FOCUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @EDIT_EM_ScrollCaret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_EM_ScrollCaret(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ES_MULTILINE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %200

21:                                               ; preds = %1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @EDIT_EM_LineFromChar(%struct.TYPE_12__* %25, i64 %28)
  store i64 %29, i64* %3, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @EF_AFTER_WRAP, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @EDIT_EM_PosFromChar(%struct.TYPE_12__* %30, i64 %33, i32 %38)
  %40 = call i64 @LOWORD(i32 %39)
  %41 = trunc i64 %40 to i16
  %42 = sext i16 %41 to i64
  store i64 %42, i64* %7, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %44 = call i64 @get_vertical_line_count(%struct.TYPE_12__* %43)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %3, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %4, align 8
  %50 = add nsw i64 %48, %49
  %51 = icmp sge i64 %45, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %21
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* %4, align 8
  %55 = sub nsw i64 %53, %54
  %56 = add nsw i64 %55, 1
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  store i64 %60, i64* %8, align 8
  br label %61

61:                                               ; preds = %52, %21
  %62 = load i64, i64* %3, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i64, i64* %3, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  store i64 %72, i64* %8, align 8
  br label %73

73:                                               ; preds = %67, %61
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %77, %81
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %83, %87
  br i1 %88, label %89, label %104

89:                                               ; preds = %73
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %90, %94
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* @HSCROLL_FRACTION, align 8
  %98 = sdiv i64 %96, %97
  %99 = load i64, i64* %6, align 8
  %100 = sdiv i64 %98, %99
  %101 = load i64, i64* %6, align 8
  %102 = mul nsw i64 %100, %101
  %103 = sub nsw i64 %95, %102
  store i64 %103, i64* %9, align 8
  br label %104

104:                                              ; preds = %89, %73
  %105 = load i64, i64* %7, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %105, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %104
  %112 = load i64, i64* %7, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %112, %116
  %118 = load i64, i64* @HSCROLL_FRACTION, align 8
  %119 = sub nsw i64 %118, 1
  %120 = load i64, i64* %5, align 8
  %121 = mul nsw i64 %119, %120
  %122 = load i64, i64* @HSCROLL_FRACTION, align 8
  %123 = sdiv i64 %121, %122
  %124 = load i64, i64* %6, align 8
  %125 = sdiv i64 %123, %124
  %126 = load i64, i64* %6, align 8
  %127 = mul nsw i64 %125, %126
  %128 = sub nsw i64 %117, %127
  store i64 %128, i64* %9, align 8
  br label %129

129:                                              ; preds = %111, %104
  %130 = load i64, i64* %8, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %150, label %132

132:                                              ; preds = %129
  %133 = load i64, i64* %9, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %150, label %135

135:                                              ; preds = %132
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %199

140:                                              ; preds = %135
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = sub nsw i64 %143, %146
  %148 = load i64, i64* %4, align 8
  %149 = icmp slt i64 %147, %148
  br i1 %149, label %150, label %199

150:                                              ; preds = %140, %132, %129
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 6
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %9, align 8
  %155 = add nsw i64 %153, %154
  %156 = load i64, i64* %5, align 8
  %157 = add nsw i64 %155, %156
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 7
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %157, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %150
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 7
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %5, align 8
  %167 = sub nsw i64 %165, %166
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 6
  %170 = load i64, i64* %169, align 8
  %171 = sub nsw i64 %167, %170
  store i64 %171, i64* %9, align 8
  br label %172

172:                                              ; preds = %162, %150
  %173 = load i64, i64* %9, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %193, label %175

175:                                              ; preds = %172
  %176 = load i64, i64* %8, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %193, label %178

178:                                              ; preds = %175
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %198

183:                                              ; preds = %178
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  %190 = sub nsw i64 %186, %189
  %191 = load i64, i64* %4, align 8
  %192 = icmp slt i64 %190, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %183, %175, %172
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %195 = load i64, i64* %9, align 8
  %196 = load i64, i64* %8, align 8
  %197 = call i32 @EDIT_EM_LineScroll_internal(%struct.TYPE_12__* %194, i64 %195, i64 %196)
  br label %198

198:                                              ; preds = %193, %183, %178
  br label %199

199:                                              ; preds = %198, %140, %135
  br label %321

200:                                              ; preds = %1
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = load i32, i32* @FALSE, align 4
  %206 = call i32 @EDIT_EM_PosFromChar(%struct.TYPE_12__* %201, i64 %204, i32 %205)
  %207 = call i64 @LOWORD(i32 %206)
  %208 = trunc i64 %207 to i16
  %209 = sext i16 %208 to i64
  store i64 %209, i64* %10, align 8
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = sub nsw i64 %213, %217
  store i64 %218, i64* %12, align 8
  %219 = load i64, i64* %10, align 8
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = icmp slt i64 %219, %223
  br i1 %224, label %225, label %263

225:                                              ; preds = %200
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* %12, align 8
  %231 = load i64, i64* @HSCROLL_FRACTION, align 8
  %232 = sdiv i64 %230, %231
  %233 = add nsw i64 %229, %232
  store i64 %233, i64* %11, align 8
  br label %234

234:                                              ; preds = %257, %225
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 6
  %237 = load i64, i64* %236, align 8
  %238 = add nsw i64 %237, -1
  store i64 %238, i64* %236, align 8
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = load i32, i32* @FALSE, align 4
  %244 = call i32 @EDIT_EM_PosFromChar(%struct.TYPE_12__* %239, i64 %242, i32 %243)
  %245 = call i64 @LOWORD(i32 %244)
  %246 = trunc i64 %245 to i16
  %247 = sext i16 %246 to i64
  store i64 %247, i64* %10, align 8
  br label %248

248:                                              ; preds = %234
  %249 = load i64, i64* %10, align 8
  %250 = load i64, i64* %11, align 8
  %251 = icmp slt i64 %249, %250
  br i1 %251, label %252, label %257

252:                                              ; preds = %248
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 6
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br label %257

257:                                              ; preds = %252, %248
  %258 = phi i1 [ false, %248 ], [ %256, %252 ]
  br i1 %258, label %234, label %259

259:                                              ; preds = %257
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %261 = load i32, i32* @TRUE, align 4
  %262 = call i32 @EDIT_UpdateText(%struct.TYPE_12__* %260, i32* null, i32 %261)
  br label %320

263:                                              ; preds = %200
  %264 = load i64, i64* %10, align 8
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = icmp sgt i64 %264, %268
  br i1 %269, label %270, label %319

270:                                              ; preds = %263
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %272 = call i64 @get_text_length(%struct.TYPE_12__* %271)
  store i64 %272, i64* %14, align 8
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* %12, align 8
  %278 = load i64, i64* @HSCROLL_FRACTION, align 8
  %279 = sdiv i64 %277, %278
  %280 = sub nsw i64 %276, %279
  store i64 %280, i64* %11, align 8
  br label %281

281:                                              ; preds = %313, %270
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 6
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %284, 1
  store i64 %285, i64* %283, align 8
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = load i32, i32* @FALSE, align 4
  %291 = call i32 @EDIT_EM_PosFromChar(%struct.TYPE_12__* %286, i64 %289, i32 %290)
  %292 = call i64 @LOWORD(i32 %291)
  %293 = trunc i64 %292 to i16
  %294 = sext i16 %293 to i64
  store i64 %294, i64* %10, align 8
  %295 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %296 = load i64, i64* %14, align 8
  %297 = load i32, i32* @FALSE, align 4
  %298 = call i32 @EDIT_EM_PosFromChar(%struct.TYPE_12__* %295, i64 %296, i32 %297)
  %299 = call i64 @LOWORD(i32 %298)
  %300 = trunc i64 %299 to i16
  %301 = sext i16 %300 to i64
  store i64 %301, i64* %13, align 8
  br label %302

302:                                              ; preds = %281
  %303 = load i64, i64* %10, align 8
  %304 = load i64, i64* %11, align 8
  %305 = icmp sgt i64 %303, %304
  br i1 %305, label %306, label %313

306:                                              ; preds = %302
  %307 = load i64, i64* %13, align 8
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 8
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = icmp sgt i64 %307, %311
  br label %313

313:                                              ; preds = %306, %302
  %314 = phi i1 [ false, %302 ], [ %312, %306 ]
  br i1 %314, label %281, label %315

315:                                              ; preds = %313
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %317 = load i32, i32* @TRUE, align 4
  %318 = call i32 @EDIT_UpdateText(%struct.TYPE_12__* %316, i32* null, i32 %317)
  br label %319

319:                                              ; preds = %315, %263
  br label %320

320:                                              ; preds = %319, %259
  br label %321

321:                                              ; preds = %320, %199
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @EF_FOCUSED, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %339

328:                                              ; preds = %321
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %330 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 2
  %332 = load i64, i64* %331, align 8
  %333 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @EF_AFTER_WRAP, align 4
  %337 = and i32 %335, %336
  %338 = call i32 @EDIT_SetCaretPos(%struct.TYPE_12__* %329, i64 %332, i32 %337)
  br label %339

339:                                              ; preds = %328, %321
  ret void
}

declare dso_local i64 @EDIT_EM_LineFromChar(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i32 @EDIT_EM_PosFromChar(%struct.TYPE_12__*, i64, i32) #1

declare dso_local i64 @get_vertical_line_count(%struct.TYPE_12__*) #1

declare dso_local i32 @EDIT_EM_LineScroll_internal(%struct.TYPE_12__*, i64, i64) #1

declare dso_local i32 @EDIT_UpdateText(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i64 @get_text_length(%struct.TYPE_12__*) #1

declare dso_local i32 @EDIT_SetCaretPos(%struct.TYPE_12__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
