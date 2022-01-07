; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_fse_compress.c_FSE_normalizeM2.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_fse_compress.c_FSE_normalizeM2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i16*, i64, i32*, i64, i64)* @FSE_normalizeM2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FSE_normalizeM2(i16* %0, i64 %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i16, align 2
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store i16* %0, i16** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i16 -2, i16* %12, align 2
  store i64 0, i64* %14, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %8, align 8
  %30 = lshr i64 %28, %29
  store i64 %30, i64* %16, align 8
  %31 = load i64, i64* %10, align 8
  %32 = mul i64 %31, 3
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, 1
  %35 = lshr i64 %32, %34
  store i64 %35, i64* %17, align 8
  store i64 0, i64* %13, align 8
  br label %36

36:                                               ; preds = %96, %5
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp ule i64 %37, %38
  br i1 %39, label %40, label %99

40:                                               ; preds = %36
  %41 = load i32*, i32** %9, align 8
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i16*, i16** %7, align 8
  %48 = load i64, i64* %13, align 8
  %49 = getelementptr inbounds i16, i16* %47, i64 %48
  store i16 0, i16* %49, align 2
  br label %96

50:                                               ; preds = %40
  %51 = load i32*, i32** %9, align 8
  %52 = load i64, i64* %13, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  %56 = load i64, i64* %16, align 8
  %57 = icmp ule i64 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %50
  %59 = load i16*, i16** %7, align 8
  %60 = load i64, i64* %13, align 8
  %61 = getelementptr inbounds i16, i16* %59, i64 %60
  store i16 -1, i16* %61, align 2
  %62 = load i64, i64* %14, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %14, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load i64, i64* %13, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = zext i32 %67 to i64
  %69 = load i64, i64* %10, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %10, align 8
  br label %96

71:                                               ; preds = %50
  %72 = load i32*, i32** %9, align 8
  %73 = load i64, i64* %13, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = zext i32 %75 to i64
  %77 = load i64, i64* %17, align 8
  %78 = icmp ule i64 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %71
  %80 = load i16*, i16** %7, align 8
  %81 = load i64, i64* %13, align 8
  %82 = getelementptr inbounds i16, i16* %80, i64 %81
  store i16 1, i16* %82, align 2
  %83 = load i64, i64* %14, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %14, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i64, i64* %13, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = zext i32 %88 to i64
  %90 = load i64, i64* %10, align 8
  %91 = sub i64 %90, %89
  store i64 %91, i64* %10, align 8
  br label %96

92:                                               ; preds = %71
  %93 = load i16*, i16** %7, align 8
  %94 = load i64, i64* %13, align 8
  %95 = getelementptr inbounds i16, i16* %93, i64 %94
  store i16 -2, i16* %95, align 2
  br label %96

96:                                               ; preds = %92, %79, %58, %46
  %97 = load i64, i64* %13, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %13, align 8
  br label %36

99:                                               ; preds = %36
  %100 = load i64, i64* %8, align 8
  %101 = trunc i64 %100 to i32
  %102 = shl i32 1, %101
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %14, align 8
  %105 = sub i64 %103, %104
  store i64 %105, i64* %15, align 8
  %106 = load i64, i64* %15, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  store i64 0, i64* %6, align 8
  br label %304

109:                                              ; preds = %99
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* %15, align 8
  %112 = udiv i64 %110, %111
  %113 = load i64, i64* %17, align 8
  %114 = icmp ugt i64 %112, %113
  br i1 %114, label %115, label %164

115:                                              ; preds = %109
  %116 = load i64, i64* %10, align 8
  %117 = mul i64 %116, 3
  %118 = load i64, i64* %15, align 8
  %119 = mul i64 %118, 2
  %120 = udiv i64 %117, %119
  store i64 %120, i64* %17, align 8
  store i64 0, i64* %13, align 8
  br label %121

121:                                              ; preds = %154, %115
  %122 = load i64, i64* %13, align 8
  %123 = load i64, i64* %11, align 8
  %124 = icmp ule i64 %122, %123
  br i1 %124, label %125, label %157

125:                                              ; preds = %121
  %126 = load i16*, i16** %7, align 8
  %127 = load i64, i64* %13, align 8
  %128 = getelementptr inbounds i16, i16* %126, i64 %127
  %129 = load i16, i16* %128, align 2
  %130 = sext i16 %129 to i32
  %131 = icmp eq i32 %130, -2
  br i1 %131, label %132, label %153

132:                                              ; preds = %125
  %133 = load i32*, i32** %9, align 8
  %134 = load i64, i64* %13, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = zext i32 %136 to i64
  %138 = load i64, i64* %17, align 8
  %139 = icmp ule i64 %137, %138
  br i1 %139, label %140, label %153

140:                                              ; preds = %132
  %141 = load i16*, i16** %7, align 8
  %142 = load i64, i64* %13, align 8
  %143 = getelementptr inbounds i16, i16* %141, i64 %142
  store i16 1, i16* %143, align 2
  %144 = load i64, i64* %14, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %14, align 8
  %146 = load i32*, i32** %9, align 8
  %147 = load i64, i64* %13, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = zext i32 %149 to i64
  %151 = load i64, i64* %10, align 8
  %152 = sub i64 %151, %150
  store i64 %152, i64* %10, align 8
  br label %154

153:                                              ; preds = %132, %125
  br label %154

154:                                              ; preds = %153, %140
  %155 = load i64, i64* %13, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %13, align 8
  br label %121

157:                                              ; preds = %121
  %158 = load i64, i64* %8, align 8
  %159 = trunc i64 %158 to i32
  %160 = shl i32 1, %159
  %161 = sext i32 %160 to i64
  %162 = load i64, i64* %14, align 8
  %163 = sub i64 %161, %162
  store i64 %163, i64* %15, align 8
  br label %164

164:                                              ; preds = %157, %109
  %165 = load i64, i64* %14, align 8
  %166 = load i64, i64* %11, align 8
  %167 = add i64 %166, 1
  %168 = icmp eq i64 %165, %167
  br i1 %168, label %169, label %204

169:                                              ; preds = %164
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %13, align 8
  br label %170

170:                                              ; preds = %190, %169
  %171 = load i64, i64* %13, align 8
  %172 = load i64, i64* %11, align 8
  %173 = icmp ule i64 %171, %172
  br i1 %173, label %174, label %193

174:                                              ; preds = %170
  %175 = load i32*, i32** %9, align 8
  %176 = load i64, i64* %13, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = zext i32 %178 to i64
  %180 = load i64, i64* %19, align 8
  %181 = icmp ugt i64 %179, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %174
  %183 = load i64, i64* %13, align 8
  store i64 %183, i64* %18, align 8
  %184 = load i32*, i32** %9, align 8
  %185 = load i64, i64* %13, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %19, align 8
  br label %189

189:                                              ; preds = %182, %174
  br label %190

190:                                              ; preds = %189
  %191 = load i64, i64* %13, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %13, align 8
  br label %170

193:                                              ; preds = %170
  %194 = load i64, i64* %15, align 8
  %195 = trunc i64 %194 to i16
  %196 = sext i16 %195 to i32
  %197 = load i16*, i16** %7, align 8
  %198 = load i64, i64* %18, align 8
  %199 = getelementptr inbounds i16, i16* %197, i64 %198
  %200 = load i16, i16* %199, align 2
  %201 = sext i16 %200 to i32
  %202 = add nsw i32 %201, %196
  %203 = trunc i32 %202 to i16
  store i16 %203, i16* %199, align 2
  store i64 0, i64* %6, align 8
  br label %304

204:                                              ; preds = %164
  %205 = load i64, i64* %10, align 8
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %234

207:                                              ; preds = %204
  store i64 0, i64* %13, align 8
  br label %208

208:                                              ; preds = %227, %207
  %209 = load i64, i64* %15, align 8
  %210 = icmp ugt i64 %209, 0
  br i1 %210, label %211, label %233

211:                                              ; preds = %208
  %212 = load i16*, i16** %7, align 8
  %213 = load i64, i64* %13, align 8
  %214 = getelementptr inbounds i16, i16* %212, i64 %213
  %215 = load i16, i16* %214, align 2
  %216 = sext i16 %215 to i32
  %217 = icmp sgt i32 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %211
  %219 = load i64, i64* %15, align 8
  %220 = add i64 %219, -1
  store i64 %220, i64* %15, align 8
  %221 = load i16*, i16** %7, align 8
  %222 = load i64, i64* %13, align 8
  %223 = getelementptr inbounds i16, i16* %221, i64 %222
  %224 = load i16, i16* %223, align 2
  %225 = add i16 %224, 1
  store i16 %225, i16* %223, align 2
  br label %226

226:                                              ; preds = %218, %211
  br label %227

227:                                              ; preds = %226
  %228 = load i64, i64* %13, align 8
  %229 = add i64 %228, 1
  %230 = load i64, i64* %11, align 8
  %231 = add i64 %230, 1
  %232 = urem i64 %229, %231
  store i64 %232, i64* %13, align 8
  br label %208

233:                                              ; preds = %208
  store i64 0, i64* %6, align 8
  br label %304

234:                                              ; preds = %204
  %235 = load i64, i64* %8, align 8
  %236 = sub i64 62, %235
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %20, align 4
  %238 = load i32, i32* %20, align 4
  %239 = sub nsw i32 %238, 1
  %240 = zext i32 %239 to i64
  %241 = shl i64 1, %240
  %242 = sub i64 %241, 1
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %21, align 4
  %244 = load i32, i32* %20, align 4
  %245 = shl i32 1, %244
  %246 = sext i32 %245 to i64
  %247 = load i64, i64* %15, align 8
  %248 = mul i64 %246, %247
  %249 = load i32, i32* %21, align 4
  %250 = sext i32 %249 to i64
  %251 = add i64 %248, %250
  %252 = load i64, i64* %10, align 8
  %253 = udiv i64 %251, %252
  %254 = trunc i64 %253 to i32
  store i32 %254, i32* %22, align 4
  %255 = load i32, i32* %21, align 4
  store i32 %255, i32* %23, align 4
  store i64 0, i64* %13, align 8
  br label %256

256:                                              ; preds = %300, %234
  %257 = load i64, i64* %13, align 8
  %258 = load i64, i64* %11, align 8
  %259 = icmp ule i64 %257, %258
  br i1 %259, label %260, label %303

260:                                              ; preds = %256
  %261 = load i16*, i16** %7, align 8
  %262 = load i64, i64* %13, align 8
  %263 = getelementptr inbounds i16, i16* %261, i64 %262
  %264 = load i16, i16* %263, align 2
  %265 = sext i16 %264 to i32
  %266 = icmp eq i32 %265, -2
  br i1 %266, label %267, label %299

267:                                              ; preds = %260
  %268 = load i32, i32* %23, align 4
  %269 = load i32*, i32** %9, align 8
  %270 = load i64, i64* %13, align 8
  %271 = getelementptr inbounds i32, i32* %269, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %22, align 4
  %274 = mul i32 %272, %273
  %275 = add i32 %268, %274
  store i32 %275, i32* %24, align 4
  %276 = load i32, i32* %23, align 4
  %277 = load i32, i32* %20, align 4
  %278 = ashr i32 %276, %277
  %279 = sext i32 %278 to i64
  store i64 %279, i64* %25, align 8
  %280 = load i32, i32* %24, align 4
  %281 = load i32, i32* %20, align 4
  %282 = ashr i32 %280, %281
  %283 = sext i32 %282 to i64
  store i64 %283, i64* %26, align 8
  %284 = load i64, i64* %26, align 8
  %285 = load i64, i64* %25, align 8
  %286 = sub i64 %284, %285
  store i64 %286, i64* %27, align 8
  %287 = load i64, i64* %27, align 8
  %288 = icmp ult i64 %287, 1
  br i1 %288, label %289, label %292

289:                                              ; preds = %267
  %290 = load i32, i32* @GENERIC, align 4
  %291 = call i64 @ERROR(i32 %290)
  store i64 %291, i64* %6, align 8
  br label %304

292:                                              ; preds = %267
  %293 = load i64, i64* %27, align 8
  %294 = trunc i64 %293 to i16
  %295 = load i16*, i16** %7, align 8
  %296 = load i64, i64* %13, align 8
  %297 = getelementptr inbounds i16, i16* %295, i64 %296
  store i16 %294, i16* %297, align 2
  %298 = load i32, i32* %24, align 4
  store i32 %298, i32* %23, align 4
  br label %299

299:                                              ; preds = %292, %260
  br label %300

300:                                              ; preds = %299
  %301 = load i64, i64* %13, align 8
  %302 = add i64 %301, 1
  store i64 %302, i64* %13, align 8
  br label %256

303:                                              ; preds = %256
  store i64 0, i64* %6, align 8
  br label %304

304:                                              ; preds = %303, %289, %233, %193, %108
  %305 = load i64, i64* %6, align 8
  ret i64 %305
}

declare dso_local i64 @ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
