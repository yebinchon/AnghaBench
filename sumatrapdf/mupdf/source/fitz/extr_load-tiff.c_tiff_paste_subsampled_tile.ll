; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-tiff.c_tiff_paste_subsampled_tile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-tiff.c_tiff_paste_subsampled_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiff = type { i32, i32, i32, i32, i32*, i32, i8* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Illegal TIFF Subsample values %d %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.tiff*, i8*, i32, i32, i32, i32, i32)* @tiff_paste_subsampled_tile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tiff_paste_subsampled_tile(i32* %0, %struct.tiff* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.tiff*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [48 x i32], align 16
  %29 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.tiff* %1, %struct.tiff** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %30 = load i8*, i8** %11, align 8
  store i8* %30, i8** %17, align 8
  %31 = getelementptr inbounds [48 x i32], [48 x i32]* %28, i64 0, i64 0
  store i32* %31, i32** %29, align 8
  %32 = load %struct.tiff*, %struct.tiff** %10, align 8
  %33 = getelementptr inbounds %struct.tiff, %struct.tiff* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 3
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.tiff*, %struct.tiff** %10, align 8
  %39 = getelementptr inbounds %struct.tiff, %struct.tiff* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 8
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.tiff*, %struct.tiff** %10, align 8
  %45 = getelementptr inbounds %struct.tiff, %struct.tiff* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %21, align 4
  %47 = load %struct.tiff*, %struct.tiff** %10, align 8
  %48 = getelementptr inbounds %struct.tiff, %struct.tiff* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %50 = load %struct.tiff*, %struct.tiff** %10, align 8
  %51 = getelementptr inbounds %struct.tiff, %struct.tiff* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %25, align 4
  %55 = load %struct.tiff*, %struct.tiff** %10, align 8
  %56 = getelementptr inbounds %struct.tiff, %struct.tiff* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %26, align 4
  %60 = load i32, i32* %25, align 4
  %61 = icmp ugt i32 %60, 4
  br i1 %61, label %73, label %62

62:                                               ; preds = %8
  %63 = load i32, i32* %26, align 4
  %64 = icmp ugt i32 %63, 4
  br i1 %64, label %73, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %25, align 4
  %67 = call i32 @fz_is_pow2(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32, i32* %26, align 4
  %71 = call i32 @fz_is_pow2(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %69, %65, %62, %8
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %76 = load i32, i32* %25, align 4
  %77 = load i32, i32* %26, align 4
  %78 = call i32 @fz_throw(i32* %74, i32 %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %73, %69
  store i32 0, i32* %27, align 4
  br label %80

80:                                               ; preds = %114, %79
  %81 = load i32, i32* %27, align 4
  %82 = icmp slt i32 %81, 3
  br i1 %82, label %83, label %117

83:                                               ; preds = %80
  store i32 0, i32* %20, align 4
  br label %84

84:                                               ; preds = %110, %83
  %85 = load i32, i32* %20, align 4
  %86 = load i32, i32* %26, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %113

88:                                               ; preds = %84
  store i32 0, i32* %19, align 4
  br label %89

89:                                               ; preds = %106, %88
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* %25, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %109

93:                                               ; preds = %89
  %94 = load i32, i32* %27, align 4
  %95 = load i32, i32* %20, align 4
  %96 = load %struct.tiff*, %struct.tiff** %10, align 8
  %97 = getelementptr inbounds %struct.tiff, %struct.tiff* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = mul i32 %95, %98
  %100 = add i32 %94, %99
  %101 = load i32, i32* %19, align 4
  %102 = mul i32 %101, 3
  %103 = add i32 %100, %102
  %104 = load i32*, i32** %29, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %29, align 8
  store i32 %103, i32* %104, align 4
  br label %106

106:                                              ; preds = %93
  %107 = load i32, i32* %19, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %19, align 4
  br label %89

109:                                              ; preds = %89
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %20, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %20, align 4
  br label %84

113:                                              ; preds = %84
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %27, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %27, align 4
  br label %80

117:                                              ; preds = %80
  %118 = getelementptr inbounds [48 x i32], [48 x i32]* %28, i64 0, i64 0
  store i32* %118, i32** %29, align 8
  %119 = load i32, i32* %15, align 4
  store i32 %119, i32* %19, align 4
  %120 = load i32, i32* %16, align 4
  store i32 %120, i32* %20, align 4
  store i32 0, i32* %27, align 4
  %121 = load %struct.tiff*, %struct.tiff** %10, align 8
  %122 = getelementptr inbounds %struct.tiff, %struct.tiff* %121, i32 0, i32 6
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* %16, align 4
  %125 = load %struct.tiff*, %struct.tiff** %10, align 8
  %126 = getelementptr inbounds %struct.tiff, %struct.tiff* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = mul i32 %124, %127
  %129 = load i32, i32* %15, align 4
  %130 = mul i32 %129, 3
  %131 = add i32 %128, %130
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %123, i64 %132
  store i8* %133, i8** %18, align 8
  br label %134

134:                                              ; preds = %302, %117
  %135 = load i8*, i8** %17, align 8
  %136 = load i8*, i8** %11, align 8
  %137 = load i32, i32* %12, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = icmp ult i8* %135, %139
  br i1 %140, label %141, label %305

141:                                              ; preds = %134
  %142 = load i32, i32* %27, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %197

144:                                              ; preds = %141
  %145 = load i32, i32* %20, align 4
  %146 = load i32, i32* %24, align 4
  %147 = add i32 %145, %146
  %148 = load i32, i32* %22, align 4
  %149 = icmp ult i32 %147, %148
  br i1 %149, label %150, label %180

150:                                              ; preds = %144
  %151 = load i32, i32* %20, align 4
  %152 = load i32, i32* %24, align 4
  %153 = add i32 %151, %152
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %14, align 4
  %156 = add i32 %154, %155
  %157 = icmp ult i32 %153, %156
  br i1 %157, label %158, label %180

158:                                              ; preds = %150
  %159 = load i32, i32* %19, align 4
  %160 = load i32, i32* %23, align 4
  %161 = add i32 %159, %160
  %162 = load i32, i32* %21, align 4
  %163 = icmp ult i32 %161, %162
  br i1 %163, label %164, label %180

164:                                              ; preds = %158
  %165 = load i32, i32* %19, align 4
  %166 = load i32, i32* %23, align 4
  %167 = add i32 %165, %166
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %13, align 4
  %170 = add i32 %168, %169
  %171 = icmp ult i32 %167, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %164
  %173 = load i8*, i8** %17, align 8
  %174 = load i8, i8* %173, align 1
  %175 = load i8*, i8** %18, align 8
  %176 = load i32*, i32** %29, align 8
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %175, i64 %178
  store i8 %174, i8* %179, align 1
  br label %180

180:                                              ; preds = %172, %164, %158, %150, %144
  %181 = load i32*, i32** %29, align 8
  %182 = getelementptr inbounds i32, i32* %181, i32 1
  store i32* %182, i32** %29, align 8
  %183 = load i32, i32* %23, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %23, align 4
  %185 = load i32, i32* %25, align 4
  %186 = icmp uge i32 %184, %185
  br i1 %186, label %187, label %196

187:                                              ; preds = %180
  store i32 0, i32* %23, align 4
  %188 = load i32, i32* %24, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %24, align 4
  %190 = load i32, i32* %26, align 4
  %191 = icmp uge i32 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  store i32 0, i32* %24, align 4
  %193 = load i32, i32* %27, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %27, align 4
  br label %195

195:                                              ; preds = %192, %187
  br label %196

196:                                              ; preds = %195, %180
  br label %302

197:                                              ; preds = %141
  store i32 0, i32* %24, align 4
  br label %198

198:                                              ; preds = %250, %197
  %199 = load i32, i32* %24, align 4
  %200 = load i32, i32* %26, align 4
  %201 = icmp ult i32 %199, %200
  br i1 %201, label %202, label %253

202:                                              ; preds = %198
  store i32 0, i32* %23, align 4
  br label %203

203:                                              ; preds = %246, %202
  %204 = load i32, i32* %23, align 4
  %205 = load i32, i32* %25, align 4
  %206 = icmp ult i32 %204, %205
  br i1 %206, label %207, label %249

207:                                              ; preds = %203
  %208 = load i32, i32* %20, align 4
  %209 = load i32, i32* %24, align 4
  %210 = add i32 %208, %209
  %211 = load i32, i32* %22, align 4
  %212 = icmp ult i32 %210, %211
  br i1 %212, label %213, label %243

213:                                              ; preds = %207
  %214 = load i32, i32* %20, align 4
  %215 = load i32, i32* %24, align 4
  %216 = add i32 %214, %215
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* %14, align 4
  %219 = add i32 %217, %218
  %220 = icmp ult i32 %216, %219
  br i1 %220, label %221, label %243

221:                                              ; preds = %213
  %222 = load i32, i32* %19, align 4
  %223 = load i32, i32* %23, align 4
  %224 = add i32 %222, %223
  %225 = load i32, i32* %21, align 4
  %226 = icmp ult i32 %224, %225
  br i1 %226, label %227, label %243

227:                                              ; preds = %221
  %228 = load i32, i32* %19, align 4
  %229 = load i32, i32* %23, align 4
  %230 = add i32 %228, %229
  %231 = load i32, i32* %15, align 4
  %232 = load i32, i32* %13, align 4
  %233 = add i32 %231, %232
  %234 = icmp ult i32 %230, %233
  br i1 %234, label %235, label %243

235:                                              ; preds = %227
  %236 = load i8*, i8** %17, align 8
  %237 = load i8, i8* %236, align 1
  %238 = load i8*, i8** %18, align 8
  %239 = load i32*, i32** %29, align 8
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %238, i64 %241
  store i8 %237, i8* %242, align 1
  br label %243

243:                                              ; preds = %235, %227, %221, %213, %207
  %244 = load i32*, i32** %29, align 8
  %245 = getelementptr inbounds i32, i32* %244, i32 1
  store i32* %245, i32** %29, align 8
  br label %246

246:                                              ; preds = %243
  %247 = load i32, i32* %23, align 4
  %248 = add i32 %247, 1
  store i32 %248, i32* %23, align 4
  br label %203

249:                                              ; preds = %203
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %24, align 4
  %252 = add i32 %251, 1
  store i32 %252, i32* %24, align 4
  br label %198

253:                                              ; preds = %198
  %254 = load i32, i32* %27, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %27, align 4
  %256 = icmp sge i32 %255, 3
  br i1 %256, label %257, label %301

257:                                              ; preds = %253
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %27, align 4
  %258 = getelementptr inbounds [48 x i32], [48 x i32]* %28, i64 0, i64 0
  store i32* %258, i32** %29, align 8
  %259 = load i32, i32* %25, align 4
  %260 = mul i32 %259, 3
  %261 = load i8*, i8** %18, align 8
  %262 = zext i32 %260 to i64
  %263 = getelementptr inbounds i8, i8* %261, i64 %262
  store i8* %263, i8** %18, align 8
  %264 = load i32, i32* %25, align 4
  %265 = load i32, i32* %19, align 4
  %266 = add i32 %265, %264
  store i32 %266, i32* %19, align 4
  %267 = load i32, i32* %19, align 4
  %268 = load i32, i32* %15, align 4
  %269 = load i32, i32* %13, align 4
  %270 = add i32 %268, %269
  %271 = icmp uge i32 %267, %270
  br i1 %271, label %272, label %300

272:                                              ; preds = %257
  %273 = load i32, i32* %19, align 4
  %274 = load i32, i32* %15, align 4
  %275 = load i32, i32* %13, align 4
  %276 = add i32 %274, %275
  %277 = sub i32 %273, %276
  %278 = mul i32 %277, 3
  %279 = load i8*, i8** %18, align 8
  %280 = zext i32 %278 to i64
  %281 = sub i64 0, %280
  %282 = getelementptr inbounds i8, i8* %279, i64 %281
  store i8* %282, i8** %18, align 8
  %283 = load i32, i32* %26, align 4
  %284 = sub i32 %283, 1
  %285 = load i32, i32* %21, align 4
  %286 = mul i32 %284, %285
  %287 = mul i32 %286, 3
  %288 = load i8*, i8** %18, align 8
  %289 = zext i32 %287 to i64
  %290 = getelementptr inbounds i8, i8* %288, i64 %289
  store i8* %290, i8** %18, align 8
  %291 = load i32, i32* %15, align 4
  %292 = mul i32 %291, 3
  %293 = load i8*, i8** %18, align 8
  %294 = zext i32 %292 to i64
  %295 = getelementptr inbounds i8, i8* %293, i64 %294
  store i8* %295, i8** %18, align 8
  %296 = load i32, i32* %15, align 4
  store i32 %296, i32* %19, align 4
  %297 = load i32, i32* %26, align 4
  %298 = load i32, i32* %20, align 4
  %299 = add i32 %298, %297
  store i32 %299, i32* %20, align 4
  br label %300

300:                                              ; preds = %272, %257
  br label %301

301:                                              ; preds = %300, %253
  br label %302

302:                                              ; preds = %301, %196
  %303 = load i8*, i8** %17, align 8
  %304 = getelementptr inbounds i8, i8* %303, i32 1
  store i8* %304, i8** %17, align 8
  br label %134

305:                                              ; preds = %134
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fz_is_pow2(i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
