; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_easy_font_maker.c_parse_char.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_easy_font_maker.c_parse_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32 }

@segments = common dso_local global i32 0, align 4
@vsegments = common dso_local global i32 0, align 4
@data = common dso_local global i32* null, align 8
@last_x = common dso_local global i64* null, align 8
@last_y = common dso_local global i64* null, align 8
@h = common dso_local global i32 0, align 4
@w = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_char(i32 %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @segments, align 4
  %16 = call i64 @stb_arr_len(i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load i32, i32* @vsegments, align 4
  %20 = call i64 @stb_arr_len(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = sub nsw i64 %20, %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @segments, align 4
  %30 = call i64 @stb_arr_len(i32 %29)
  %31 = icmp eq i64 %28, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = load i32, i32* @vsegments, align 4
  %41 = call i64 @stb_arr_len(i32 %40)
  %42 = icmp eq i64 %39, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %55, %3
  %48 = load i32*, i32** @data, align 8
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 %49, 3
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 255
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %47

58:                                               ; preds = %47
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %59, %60
  %62 = add nsw i32 %61, 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i64*, i64** @last_x, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  store i64 0, i64* %66, align 8
  %67 = load i64*, i64** @last_x, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  store i64 0, i64* %68, align 8
  %69 = load i64*, i64** @last_y, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  store i64 0, i64* %70, align 8
  %71 = load i64*, i64** @last_y, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  store i64 0, i64* %72, align 8
  store i32 2, i32* %10, align 4
  br label %73

73:                                               ; preds = %108, %58
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @h, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %111

77:                                               ; preds = %73
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %100, %77
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %79
  %84 = load i32*, i32** @data, align 8
  %85 = load i32, i32* %10, align 4
  %86 = mul nsw i32 %85, 3
  %87 = load i32, i32* @w, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load i32, i32* %4, align 4
  %90 = mul nsw i32 %89, 3
  %91 = add nsw i32 %88, %90
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %84, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %95, 255
  br i1 %96, label %97, label %99

97:                                               ; preds = %83
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %9, align 4
  br label %103

99:                                               ; preds = %83
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %79

103:                                              ; preds = %97, %79
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %111

107:                                              ; preds = %103
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %73

111:                                              ; preds = %106, %73
  %112 = load i32, i32* %9, align 4
  %113 = icmp sgt i32 %112, 2
  %114 = zext i1 %113 to i32
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp sgt i32 %117, 2
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  store i32 3, i32* %9, align 4
  br label %120

120:                                              ; preds = %119, %111
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %311, %120
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %314

126:                                              ; preds = %122
  store i32 2, i32* %11, align 4
  br label %127

127:                                              ; preds = %307, %126
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @h, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %310

131:                                              ; preds = %127
  %132 = load i32*, i32** @data, align 8
  %133 = load i32, i32* %11, align 4
  %134 = mul nsw i32 %133, 3
  %135 = load i32, i32* @w, align 4
  %136 = mul nsw i32 %134, %135
  %137 = load i32, i32* %4, align 4
  %138 = mul nsw i32 %137, 3
  %139 = add nsw i32 %136, %138
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %132, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = icmp slt i32 %143, 255
  br i1 %144, label %145, label %306

145:                                              ; preds = %131
  %146 = load i32*, i32** @data, align 8
  %147 = load i32, i32* %11, align 4
  %148 = mul nsw i32 %147, 3
  %149 = load i32, i32* @w, align 4
  %150 = mul nsw i32 %148, %149
  %151 = load i32, i32* %4, align 4
  %152 = mul nsw i32 %151, 3
  %153 = add nsw i32 %150, %152
  %154 = add nsw i32 %153, 0
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %146, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 255
  br i1 %158, label %159, label %225

159:                                              ; preds = %145
  store i32 0, i32* %12, align 4
  br label %160

160:                                              ; preds = %200, %159
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %161, %162
  %164 = load i32, i32* @h, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %198

166:                                              ; preds = %160
  %167 = load i32*, i32** @data, align 8
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %168, %169
  %171 = mul nsw i32 %170, 3
  %172 = load i32, i32* @w, align 4
  %173 = mul nsw i32 %171, %172
  %174 = load i32, i32* %4, align 4
  %175 = mul nsw i32 %174, 3
  %176 = add nsw i32 %173, %175
  %177 = add nsw i32 %176, 0
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %167, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 255
  br i1 %181, label %182, label %198

182:                                              ; preds = %166
  %183 = load i32*, i32** @data, align 8
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %12, align 4
  %186 = add nsw i32 %184, %185
  %187 = mul nsw i32 %186, 3
  %188 = load i32, i32* @w, align 4
  %189 = mul nsw i32 %187, %188
  %190 = load i32, i32* %4, align 4
  %191 = mul nsw i32 %190, 3
  %192 = add nsw i32 %189, %191
  %193 = add nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %183, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 0
  br label %198

198:                                              ; preds = %182, %166, %160
  %199 = phi i1 [ false, %166 ], [ false, %160 ], [ %197, %182 ]
  br i1 %199, label %200, label %216

200:                                              ; preds = %198
  %201 = load i32*, i32** @data, align 8
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* %12, align 4
  %204 = add nsw i32 %202, %203
  %205 = mul nsw i32 %204, 3
  %206 = load i32, i32* @w, align 4
  %207 = mul nsw i32 %205, %206
  %208 = load i32, i32* %4, align 4
  %209 = mul nsw i32 %208, 3
  %210 = add nsw i32 %207, %209
  %211 = add nsw i32 %210, 0
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %201, i64 %212
  store i32 0, i32* %213, align 4
  %214 = load i32, i32* %12, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %12, align 4
  br label %160

216:                                              ; preds = %198
  %217 = load i32, i32* %4, align 4
  %218 = load i32, i32* %7, align 4
  %219 = sub nsw i32 %217, %218
  %220 = load i32, i32* %11, align 4
  %221 = load i32, i32* %9, align 4
  %222 = sub nsw i32 %220, %221
  %223 = load i32, i32* %12, align 4
  %224 = call i32 @add_seg(i32 %219, i32 %222, i32 %223, i32 0)
  br label %225

225:                                              ; preds = %216, %145
  %226 = load i32*, i32** @data, align 8
  %227 = load i32, i32* %11, align 4
  %228 = mul nsw i32 %227, 3
  %229 = load i32, i32* @w, align 4
  %230 = mul nsw i32 %228, %229
  %231 = load i32, i32* %4, align 4
  %232 = mul nsw i32 %231, 3
  %233 = add nsw i32 %230, %232
  %234 = add nsw i32 %233, 2
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %226, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %237, 255
  br i1 %238, label %239, label %305

239:                                              ; preds = %225
  store i32 0, i32* %13, align 4
  br label %240

240:                                              ; preds = %280, %239
  %241 = load i32, i32* %4, align 4
  %242 = load i32, i32* %13, align 4
  %243 = add nsw i32 %241, %242
  %244 = load i32, i32* %8, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %278

246:                                              ; preds = %240
  %247 = load i32*, i32** @data, align 8
  %248 = load i32, i32* %11, align 4
  %249 = mul nsw i32 %248, 3
  %250 = load i32, i32* @w, align 4
  %251 = mul nsw i32 %249, %250
  %252 = load i32, i32* %4, align 4
  %253 = load i32, i32* %13, align 4
  %254 = add nsw i32 %252, %253
  %255 = mul nsw i32 %254, 3
  %256 = add nsw i32 %251, %255
  %257 = add nsw i32 %256, 2
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %247, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = icmp eq i32 %260, 255
  br i1 %261, label %262, label %278

262:                                              ; preds = %246
  %263 = load i32*, i32** @data, align 8
  %264 = load i32, i32* %11, align 4
  %265 = mul nsw i32 %264, 3
  %266 = load i32, i32* @w, align 4
  %267 = mul nsw i32 %265, %266
  %268 = load i32, i32* %4, align 4
  %269 = load i32, i32* %13, align 4
  %270 = add nsw i32 %268, %269
  %271 = mul nsw i32 %270, 3
  %272 = add nsw i32 %267, %271
  %273 = add nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %263, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = icmp eq i32 %276, 0
  br label %278

278:                                              ; preds = %262, %246, %240
  %279 = phi i1 [ false, %246 ], [ false, %240 ], [ %277, %262 ]
  br i1 %279, label %280, label %296

280:                                              ; preds = %278
  %281 = load i32*, i32** @data, align 8
  %282 = load i32, i32* %11, align 4
  %283 = mul nsw i32 %282, 3
  %284 = load i32, i32* @w, align 4
  %285 = mul nsw i32 %283, %284
  %286 = load i32, i32* %4, align 4
  %287 = load i32, i32* %13, align 4
  %288 = add nsw i32 %286, %287
  %289 = mul nsw i32 %288, 3
  %290 = add nsw i32 %285, %289
  %291 = add nsw i32 %290, 2
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %281, i64 %292
  store i32 0, i32* %293, align 4
  %294 = load i32, i32* %13, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %13, align 4
  br label %240

296:                                              ; preds = %278
  %297 = load i32, i32* %4, align 4
  %298 = load i32, i32* %7, align 4
  %299 = sub nsw i32 %297, %298
  %300 = load i32, i32* %11, align 4
  %301 = load i32, i32* %9, align 4
  %302 = sub nsw i32 %300, %301
  %303 = load i32, i32* %13, align 4
  %304 = call i32 @add_seg(i32 %299, i32 %302, i32 %303, i32 1)
  br label %305

305:                                              ; preds = %296, %225
  br label %306

306:                                              ; preds = %305, %131
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %11, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %11, align 4
  br label %127

310:                                              ; preds = %127
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %4, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %4, align 4
  br label %122

314:                                              ; preds = %122
  %315 = load i32, i32* %8, align 4
  ret i32 %315
}

declare dso_local i64 @stb_arr_len(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @add_seg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
