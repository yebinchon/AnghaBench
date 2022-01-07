; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_pce.c_puzzle_generate_shape_lines.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_pce.c_puzzle_generate_shape_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i64, %struct.TYPE_5__* }

@MAX_SECT = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @puzzle_generate_shape_lines(i32* %0, %struct.TYPE_4__* %1, i64 %2, i64 %3, float %4, float %5, i32* %6, i64 %7, i64 %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  store i32* %0, i32** %12, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store float %4, float* %16, align 4
  store float %5, float* %17, align 4
  store i32* %6, i32** %18, align 8
  store i64 %7, i64* %19, align 8
  store i64 %8, i64* %20, align 8
  store i64 %9, i64* %21, align 8
  %38 = load i64, i64* %14, align 8
  store i64 %38, i64* %22, align 8
  br label %39

39:                                               ; preds = %367, %10
  %40 = load i64, i64* %22, align 8
  %41 = load i64, i64* %15, align 8
  %42 = load i64, i64* %14, align 8
  %43 = add nsw i64 %41, %42
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %45, label %370

45:                                               ; preds = %39
  %46 = load i64, i64* %22, align 8
  %47 = load i64, i64* %14, align 8
  %48 = sub nsw i64 %46, %47
  store i64 %48, i64* %23, align 8
  %49 = load i32, i32* @MAX_SECT, align 4
  %50 = zext i32 %49 to i64
  %51 = call i8* @llvm.stacksave()
  store i8* %51, i8** %24, align 8
  %52 = alloca i64, i64 %50, align 16
  store i64 %50, i64* %25, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i64, i64* %22, align 8
  %55 = load float, float* %16, align 4
  %56 = load float, float* %17, align 4
  %57 = load i32*, i32** %18, align 8
  %58 = load i64, i64* %19, align 8
  %59 = load i64, i64* %20, align 8
  %60 = load i64, i64* %21, align 8
  %61 = call i64 @puzzle_detect_curve(i32* %53, i64 %54, float %55, float %56, i32* %57, i64 %58, i64 %59, i64 %60, i64* %52)
  store i64 %61, i64* %26, align 8
  store i64 0, i64* %27, align 8
  %62 = load i64, i64* %20, align 8
  %63 = icmp eq i64 %62, 128
  br i1 %63, label %64, label %72

64:                                               ; preds = %45
  %65 = load i64, i64* %22, align 8
  %66 = icmp sge i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32*, i32** %12, align 8
  %69 = load i64, i64* %22, align 8
  %70 = load i64, i64* %21, align 8
  %71 = call i64 @puzzle_diagonal_limit(i32* %68, i64 %69, i32 1, i64 %70)
  br label %73

72:                                               ; preds = %64, %45
  br label %73

73:                                               ; preds = %72, %67
  %74 = phi i64 [ %71, %67 ], [ 0, %72 ]
  store i64 %74, i64* %28, align 8
  store i64 0, i64* %27, align 8
  br label %75

75:                                               ; preds = %90, %73
  %76 = load i64, i64* %27, align 8
  %77 = load i64, i64* %26, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %75
  %80 = load i64, i64* %27, align 8
  %81 = getelementptr inbounds i64, i64* %52, i64 %80
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %29, align 8
  %83 = load i64, i64* %29, align 8
  %84 = load i64, i64* %28, align 8
  %85 = sub nsw i64 %83, %84
  store i64 %85, i64* %30, align 8
  %86 = load i64, i64* %30, align 8
  %87 = load i64, i64* %27, align 8
  %88 = getelementptr inbounds i64, i64* %52, i64 %87
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* %29, align 8
  store i64 %89, i64* %28, align 8
  br label %90

90:                                               ; preds = %79
  %91 = load i64, i64* %27, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %27, align 8
  br label %75

93:                                               ; preds = %75
  %94 = load i64, i64* %20, align 8
  switch i64 %94, label %362 [
    i64 128, label %95
    i64 129, label %274
  ]

95:                                               ; preds = %93
  %96 = load i64, i64* %22, align 8
  %97 = icmp sge i64 %96, 0
  br i1 %97, label %98, label %185

98:                                               ; preds = %95
  %99 = load i64, i64* %26, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load i64, i64* %23, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i64 %99, i64* %105, align 8
  %106 = load i64, i64* %26, align 8
  %107 = mul i64 4, %106
  %108 = trunc i64 %107 to i32
  %109 = call i8* @malloc(i32 %108)
  %110 = bitcast i8* %109 to %struct.TYPE_5__*
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = load i64, i64* %23, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 3
  store %struct.TYPE_5__* %110, %struct.TYPE_5__** %116, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = load i64, i64* %23, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = icmp ne %struct.TYPE_5__* %123, null
  br i1 %124, label %150, label %125

125:                                              ; preds = %98
  store i64 0, i64* %31, align 8
  br label %126

126:                                              ; preds = %139, %125
  %127 = load i64, i64* %31, align 8
  %128 = load i64, i64* %23, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %126
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = load i64, i64* %31, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = call i32 @free(%struct.TYPE_5__* %137)
  br label %139

139:                                              ; preds = %130
  %140 = load i64, i64* %31, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %31, align 8
  br label %126

142:                                              ; preds = %126
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = call i32 @free(%struct.TYPE_5__* %145)
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %148, align 8
  %149 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %149, i32* %11, align 4
  store i32 1, i32* %32, align 4
  br label %363

150:                                              ; preds = %98
  store i64 0, i64* %33, align 8
  br label %151

151:                                              ; preds = %181, %150
  %152 = load i64, i64* %33, align 8
  %153 = load i64, i64* %26, align 8
  %154 = icmp ult i64 %152, %153
  br i1 %154, label %155, label %184

155:                                              ; preds = %151
  %156 = load i64, i64* %33, align 8
  %157 = urem i64 %156, 2
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = load i64, i64* %23, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = load i64, i64* %33, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  store i64 %157, i64* %167, align 8
  %168 = load i64, i64* %33, align 8
  %169 = getelementptr inbounds i64, i64* %52, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = load i64, i64* %23, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 3
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = load i64, i64* %33, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 2
  store i64 %170, i64* %180, align 8
  br label %181

181:                                              ; preds = %155
  %182 = load i64, i64* %33, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %33, align 8
  br label %151

184:                                              ; preds = %151
  br label %273

185:                                              ; preds = %95
  %186 = load i64, i64* %26, align 8
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = load i64, i64* %23, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  store i64 %186, i64* %192, align 8
  %193 = load i64, i64* %26, align 8
  %194 = mul i64 4, %193
  %195 = trunc i64 %194 to i32
  %196 = call i8* @malloc(i32 %195)
  %197 = bitcast i8* %196 to %struct.TYPE_5__*
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = load i64, i64* %23, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 3
  store %struct.TYPE_5__* %197, %struct.TYPE_5__** %203, align 8
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %205, align 8
  %207 = load i64, i64* %23, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 3
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %209, align 8
  %211 = icmp ne %struct.TYPE_5__* %210, null
  br i1 %211, label %237, label %212

212:                                              ; preds = %185
  store i64 0, i64* %34, align 8
  br label %213

213:                                              ; preds = %226, %212
  %214 = load i64, i64* %34, align 8
  %215 = load i64, i64* %23, align 8
  %216 = icmp ult i64 %214, %215
  br i1 %216, label %217, label %229

217:                                              ; preds = %213
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %219, align 8
  %221 = load i64, i64* %34, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 3
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %223, align 8
  %225 = call i32 @free(%struct.TYPE_5__* %224)
  br label %226

226:                                              ; preds = %217
  %227 = load i64, i64* %34, align 8
  %228 = add i64 %227, 1
  store i64 %228, i64* %34, align 8
  br label %213

229:                                              ; preds = %213
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %231, align 8
  %233 = call i32 @free(%struct.TYPE_5__* %232)
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %235, align 8
  %236 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %236, i32* %11, align 4
  store i32 1, i32* %32, align 4
  br label %363

237:                                              ; preds = %185
  store i64 0, i64* %35, align 8
  br label %238

238:                                              ; preds = %269, %237
  %239 = load i64, i64* %35, align 8
  %240 = load i64, i64* %26, align 8
  %241 = icmp ult i64 %239, %240
  br i1 %241, label %242, label %272

242:                                              ; preds = %238
  %243 = load i64, i64* %35, align 8
  %244 = add i64 %243, 1
  %245 = urem i64 %244, 2
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %247, align 8
  %249 = load i64, i64* %23, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 3
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %251, align 8
  %253 = load i64, i64* %35, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 1
  store i64 %245, i64* %255, align 8
  %256 = load i64, i64* %35, align 8
  %257 = getelementptr inbounds i64, i64* %52, i64 %256
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %260, align 8
  %262 = load i64, i64* %23, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 3
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %264, align 8
  %266 = load i64, i64* %35, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 2
  store i64 %258, i64* %268, align 8
  br label %269

269:                                              ; preds = %242
  %270 = load i64, i64* %35, align 8
  %271 = add i64 %270, 1
  store i64 %271, i64* %35, align 8
  br label %238

272:                                              ; preds = %238
  br label %273

273:                                              ; preds = %272, %184
  br label %362

274:                                              ; preds = %93
  %275 = load i64, i64* %26, align 8
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %277, align 8
  %279 = load i64, i64* %23, align 8
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 0
  store i64 %275, i64* %281, align 8
  %282 = load i64, i64* %26, align 8
  %283 = mul i64 4, %282
  %284 = trunc i64 %283 to i32
  %285 = call i8* @malloc(i32 %284)
  %286 = bitcast i8* %285 to %struct.TYPE_5__*
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** %288, align 8
  %290 = load i64, i64* %23, align 8
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 3
  store %struct.TYPE_5__* %286, %struct.TYPE_5__** %292, align 8
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_5__*, %struct.TYPE_5__** %294, align 8
  %296 = load i64, i64* %23, align 8
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 3
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** %298, align 8
  %300 = icmp ne %struct.TYPE_5__* %299, null
  br i1 %300, label %326, label %301

301:                                              ; preds = %274
  store i64 0, i64* %36, align 8
  br label %302

302:                                              ; preds = %315, %301
  %303 = load i64, i64* %36, align 8
  %304 = load i64, i64* %23, align 8
  %305 = icmp ult i64 %303, %304
  br i1 %305, label %306, label %318

306:                                              ; preds = %302
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 0
  %309 = load %struct.TYPE_5__*, %struct.TYPE_5__** %308, align 8
  %310 = load i64, i64* %36, align 8
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 3
  %313 = load %struct.TYPE_5__*, %struct.TYPE_5__** %312, align 8
  %314 = call i32 @free(%struct.TYPE_5__* %313)
  br label %315

315:                                              ; preds = %306
  %316 = load i64, i64* %36, align 8
  %317 = add i64 %316, 1
  store i64 %317, i64* %36, align 8
  br label %302

318:                                              ; preds = %302
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 0
  %321 = load %struct.TYPE_5__*, %struct.TYPE_5__** %320, align 8
  %322 = call i32 @free(%struct.TYPE_5__* %321)
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %324, align 8
  %325 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %325, i32* %11, align 4
  store i32 1, i32* %32, align 4
  br label %363

326:                                              ; preds = %274
  store i64 0, i64* %37, align 8
  br label %327

327:                                              ; preds = %358, %326
  %328 = load i64, i64* %37, align 8
  %329 = load i64, i64* %26, align 8
  %330 = icmp ult i64 %328, %329
  br i1 %330, label %331, label %361

331:                                              ; preds = %327
  %332 = load i64, i64* %37, align 8
  %333 = add i64 %332, 1
  %334 = urem i64 %333, 2
  %335 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 0
  %337 = load %struct.TYPE_5__*, %struct.TYPE_5__** %336, align 8
  %338 = load i64, i64* %23, align 8
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 3
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %340, align 8
  %342 = load i64, i64* %37, align 8
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 1
  store i64 %334, i64* %344, align 8
  %345 = load i64, i64* %37, align 8
  %346 = getelementptr inbounds i64, i64* %52, i64 %345
  %347 = load i64, i64* %346, align 8
  %348 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 0
  %350 = load %struct.TYPE_5__*, %struct.TYPE_5__** %349, align 8
  %351 = load i64, i64* %23, align 8
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i32 0, i32 3
  %354 = load %struct.TYPE_5__*, %struct.TYPE_5__** %353, align 8
  %355 = load i64, i64* %37, align 8
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %354, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 2
  store i64 %347, i64* %357, align 8
  br label %358

358:                                              ; preds = %331
  %359 = load i64, i64* %37, align 8
  %360 = add i64 %359, 1
  store i64 %360, i64* %37, align 8
  br label %327

361:                                              ; preds = %327
  br label %362

362:                                              ; preds = %361, %93, %273
  store i32 0, i32* %32, align 4
  br label %363

363:                                              ; preds = %362, %318, %229, %142
  %364 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %364)
  %365 = load i32, i32* %32, align 4
  switch i32 %365, label %374 [
    i32 0, label %366
    i32 1, label %372
  ]

366:                                              ; preds = %363
  br label %367

367:                                              ; preds = %366
  %368 = load i64, i64* %22, align 8
  %369 = add nsw i64 %368, 1
  store i64 %369, i64* %22, align 8
  br label %39

370:                                              ; preds = %39
  %371 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %371, i32* %11, align 4
  br label %372

372:                                              ; preds = %370, %363
  %373 = load i32, i32* %11, align 4
  ret i32 %373

374:                                              ; preds = %363
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @puzzle_detect_curve(i32*, i64, float, float, i32*, i64, i64, i64, i64*) #2

declare dso_local i64 @puzzle_diagonal_limit(i32*, i64, i32, i64) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @free(%struct.TYPE_5__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
