; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_separation.c_fz_convert_separation_colors.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_separation.c_fz_convert_separation_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8** }

@FZ_MAX_COLORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"All found in DeviceN space\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"None\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_convert_separation_colors(i32* %0, i32* %1, float* %2, %struct.TYPE_3__* %3, i32* %4, float* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store float* %2, float** %10, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %11, align 8
  store i32* %4, i32** %12, align 8
  store float* %5, float** %13, align 8
  store i32 %6, i32* %14, align 4
  %31 = load i32, i32* @FZ_MAX_COLORS, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %22, align 8
  %34 = alloca float, i64 %32, align 16
  store i64 %32, i64* %23, align 8
  store i32 0, i32* %24, align 4
  %35 = load i32*, i32** %12, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %7
  %38 = load i32*, i32** %9, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load float*, float** %13, align 8
  %42 = icmp ne float* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load float*, float** %10, align 8
  %45 = icmp ne float* %44, null
  br label %46

46:                                               ; preds = %43, %40, %37, %7
  %47 = phi i1 [ false, %40 ], [ false, %37 ], [ false, %7 ], [ %45, %43 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32*, i32** %8, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @fz_colorspace_is_device_n(i32* %50, i32* %51)
  %53 = call i32 @assert(i32 %52)
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @fz_colorspace_n(i32* %54, i32* %55)
  store i32 %56, i32* %18, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %58 = icmp eq %struct.TYPE_3__* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %64

60:                                               ; preds = %46
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  br label %64

64:                                               ; preds = %60, %59
  %65 = phi i32 [ 0, %59 ], [ %63, %60 ]
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %19, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %20, align 4
  store i32 0, i32* %15, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @fz_colorspace_is_subtractive(i32* %69, i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %87, label %73

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %83, %73
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %18, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load float*, float** %13, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, float* %79, i64 %81
  store float 1.000000e+00, float* %82, align 4
  br label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  br label %74

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %64
  br label %88

88:                                               ; preds = %97, %87
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %20, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load float*, float** %13, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %93, i64 %95
  store float 0.000000e+00, float* %96, align 4
  br label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %15, align 4
  br label %88

100:                                              ; preds = %88
  %101 = load i32*, i32** %8, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @fz_colorspace_n(i32* %101, i32* %102)
  store i32 %103, i32* %17, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %15, align 4
  br label %104

104:                                              ; preds = %274, %100
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %277

108:                                              ; preds = %104
  %109 = load i32*, i32** %8, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* %15, align 4
  %112 = call i8* @fz_colorspace_colorant(i32* %109, i32* %110, i32 %111)
  store i8* %112, i8** %25, align 8
  %113 = load i8*, i8** %25, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %274

116:                                              ; preds = %108
  %117 = load i32, i32* %15, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %146

119:                                              ; preds = %116
  %120 = load i8*, i8** %25, align 8
  %121 = call i32 @strcmp(i8* %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %146, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %124, 1
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32*, i32** %8, align 8
  %128 = call i32 @fz_warn(i32* %127, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %123
  store i32 0, i32* %15, align 4
  br label %130

130:                                              ; preds = %142, %129
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %20, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %130
  %135 = load float*, float** %10, align 8
  %136 = getelementptr inbounds float, float* %135, i64 0
  %137 = load float, float* %136, align 4
  %138 = load float*, float** %13, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float* %138, i64 %140
  store float %137, float* %141, align 4
  br label %142

142:                                              ; preds = %134
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %15, align 4
  br label %130

145:                                              ; preds = %130
  br label %277

146:                                              ; preds = %119, %116
  %147 = load i8*, i8** %25, align 8
  %148 = call i32 @strcmp(i8* %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  br label %274

151:                                              ; preds = %146
  %152 = load i32, i32* %21, align 4
  store i32 %152, i32* %16, align 4
  br label %153

153:                                              ; preds = %174, %151
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %19, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %177

157:                                              ; preds = %153
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load i8**, i8*** %159, align 8
  %161 = load i32, i32* %16, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  %164 = load i8*, i8** %163, align 8
  store i8* %164, i8** %26, align 8
  %165 = load i8*, i8** %26, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %173

167:                                              ; preds = %157
  %168 = load i8*, i8** %25, align 8
  %169 = load i8*, i8** %26, align 8
  %170 = call i32 @strcmp(i8* %168, i8* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %167
  br label %226

173:                                              ; preds = %167, %157
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %16, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %16, align 4
  br label %153

177:                                              ; preds = %153
  store i32 0, i32* %16, align 4
  br label %178

178:                                              ; preds = %199, %177
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* %21, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %202

182:                                              ; preds = %178
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 1
  %185 = load i8**, i8*** %184, align 8
  %186 = load i32, i32* %16, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  %189 = load i8*, i8** %188, align 8
  store i8* %189, i8** %27, align 8
  %190 = load i8*, i8** %27, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %198

192:                                              ; preds = %182
  %193 = load i8*, i8** %25, align 8
  %194 = load i8*, i8** %27, align 8
  %195 = call i32 @strcmp(i8* %193, i8* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %192
  br label %226

198:                                              ; preds = %192, %182
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %16, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %16, align 4
  br label %178

202:                                              ; preds = %178
  store i32 0, i32* %16, align 4
  br label %203

203:                                              ; preds = %221, %202
  %204 = load i32, i32* %16, align 4
  %205 = load i32, i32* %18, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %224

207:                                              ; preds = %203
  %208 = load i32*, i32** %8, align 8
  %209 = load i32*, i32** %12, align 8
  %210 = load i32, i32* %16, align 4
  %211 = call i8* @fz_colorspace_colorant(i32* %208, i32* %209, i32 %210)
  store i8* %211, i8** %28, align 8
  %212 = load i8*, i8** %28, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %220

214:                                              ; preds = %207
  %215 = load i8*, i8** %25, align 8
  %216 = load i8*, i8** %28, align 8
  %217 = call i32 @strcmp(i8* %215, i8* %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %214
  br label %242

220:                                              ; preds = %214, %207
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %16, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %16, align 4
  br label %203

224:                                              ; preds = %203
  br i1 false, label %225, label %240

225:                                              ; preds = %224
  br label %226

226:                                              ; preds = %225, %197, %172
  %227 = load float*, float** %10, align 8
  %228 = load i32, i32* %15, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds float, float* %227, i64 %229
  %231 = load float, float* %230, align 4
  %232 = load float*, float** %13, align 8
  %233 = load i32, i32* %16, align 4
  %234 = load i32, i32* %18, align 4
  %235 = add nsw i32 %233, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds float, float* %232, i64 %236
  store float %231, float* %237, align 4
  %238 = load i32, i32* %16, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %21, align 4
  br label %273

240:                                              ; preds = %224
  br i1 false, label %241, label %254

241:                                              ; preds = %240
  br label %242

242:                                              ; preds = %241, %219
  %243 = load float*, float** %10, align 8
  %244 = load i32, i32* %15, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds float, float* %243, i64 %245
  %247 = load float, float* %246, align 4
  %248 = load float*, float** %13, align 8
  %249 = load i32, i32* %16, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds float, float* %248, i64 %250
  %252 = load float, float* %251, align 4
  %253 = fadd float %252, %247
  store float %253, float* %251, align 4
  br label %272

254:                                              ; preds = %240
  %255 = load i32, i32* %24, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %254
  %258 = load i32, i32* %17, align 4
  %259 = sext i32 %258 to i64
  %260 = mul i64 4, %259
  %261 = trunc i64 %260 to i32
  %262 = call i32 @memset(float* %34, i32 0, i32 %261)
  store i32 1, i32* %24, align 4
  br label %263

263:                                              ; preds = %257, %254
  %264 = load float*, float** %10, align 8
  %265 = load i32, i32* %15, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds float, float* %264, i64 %266
  %268 = load float, float* %267, align 4
  %269 = load i32, i32* %15, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %34, i64 %270
  store float %268, float* %271, align 4
  br label %272

272:                                              ; preds = %263, %242
  br label %273

273:                                              ; preds = %272, %226
  br label %274

274:                                              ; preds = %273, %150, %115
  %275 = load i32, i32* %15, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %15, align 4
  br label %104

277:                                              ; preds = %145, %104
  %278 = load i32, i32* %24, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %310

280:                                              ; preds = %277
  %281 = load i32, i32* @FZ_MAX_COLORS, align 4
  %282 = zext i32 %281 to i64
  %283 = call i8* @llvm.stacksave()
  store i8* %283, i8** %29, align 8
  %284 = alloca float, i64 %282, align 16
  store i64 %282, i64* %30, align 8
  %285 = load i32*, i32** %8, align 8
  %286 = load i32*, i32** %9, align 8
  %287 = load i32*, i32** %12, align 8
  %288 = load i32, i32* %14, align 4
  %289 = call i32 @fz_convert_color(i32* %285, i32* %286, float* %34, i32* %287, float* %284, i32* null, i32 %288)
  store i32 0, i32* %15, align 4
  br label %290

290:                                              ; preds = %305, %280
  %291 = load i32, i32* %15, align 4
  %292 = load i32, i32* %18, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %308

294:                                              ; preds = %290
  %295 = load i32, i32* %15, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds float, float* %284, i64 %296
  %298 = load float, float* %297, align 4
  %299 = load float*, float** %13, align 8
  %300 = load i32, i32* %15, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds float, float* %299, i64 %301
  %303 = load float, float* %302, align 4
  %304 = fadd float %303, %298
  store float %304, float* %302, align 4
  br label %305

305:                                              ; preds = %294
  %306 = load i32, i32* %15, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %15, align 4
  br label %290

308:                                              ; preds = %290
  %309 = load i8*, i8** %29, align 8
  call void @llvm.stackrestore(i8* %309)
  br label %310

310:                                              ; preds = %308, %277
  %311 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %311)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @fz_colorspace_is_device_n(i32*, i32*) #2

declare dso_local i32 @fz_colorspace_n(i32*, i32*) #2

declare dso_local i32 @fz_colorspace_is_subtractive(i32*, i32*) #2

declare dso_local i8* @fz_colorspace_colorant(i32*, i32*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @fz_warn(i32*, i8*) #2

declare dso_local i32 @memset(float*, i32, i32) #2

declare dso_local i32 @fz_convert_color(i32*, i32*, float*, i32*, float*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
