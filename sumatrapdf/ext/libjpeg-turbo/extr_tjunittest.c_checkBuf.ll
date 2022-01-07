; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_tjunittest.c_checkBuf.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_tjunittest.c_checkBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@tjRedOffset = common dso_local global i32* null, align 8
@tjGreenOffset = common dso_local global i32* null, align 8
@tjBlueOffset = common dso_local global i32* null, align 8
@alphaOffset = common dso_local global i32* null, align 8
@tjPixelSize = common dso_local global i32* null, align 8
@TJFLAG_BOTTOMUP = common dso_local global i32 0, align 4
@TJSAMP_GRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%.3d/%.3d/%.3d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkBuf(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = alloca i8, align 1
  %29 = alloca i8, align 1
  %30 = bitcast %struct.TYPE_3__* %8 to i64*
  store i64 %5, i64* %30, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %31 = load i32*, i32** @tjRedOffset, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %15, align 4
  %36 = load i32*, i32** @tjGreenOffset, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %16, align 4
  %41 = load i32*, i32** @tjBlueOffset, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %17, align 4
  %46 = load i32*, i32** @alphaOffset, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %18, align 4
  %51 = load i32*, i32** @tjPixelSize, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %19, align 4
  store i32 1, i32* %23, align 4
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 16, %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %58, %60
  store i32 %61, i32* %24, align 4
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 8, %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %64, %66
  store i32 %67, i32* %25, align 4
  store i32 0, i32* %21, align 4
  br label %68

68:                                               ; preds = %220, %7
  %69 = load i32, i32* %21, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %223

72:                                               ; preds = %68
  store i32 0, i32* %22, align 4
  br label %73

73:                                               ; preds = %216, %72
  %74 = load i32, i32* %22, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %219

77:                                               ; preds = %73
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %21, align 4
  %85 = sub nsw i32 %83, %84
  %86 = sub nsw i32 %85, 1
  %87 = load i32, i32* %10, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load i32, i32* %22, align 4
  %90 = add nsw i32 %88, %89
  store i32 %90, i32* %20, align 4
  br label %97

91:                                               ; preds = %77
  %92 = load i32, i32* %21, align 4
  %93 = load i32, i32* %10, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* %22, align 4
  %96 = add nsw i32 %94, %95
  store i32 %96, i32* %20, align 4
  br label %97

97:                                               ; preds = %91, %82
  %98 = load i8*, i8** %9, align 8
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* %19, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %98, i64 %104
  %106 = load i8, i8* %105, align 1
  store i8 %106, i8* %26, align 1
  %107 = load i8*, i8** %9, align 8
  %108 = load i32, i32* %20, align 4
  %109 = load i32, i32* %19, align 4
  %110 = mul nsw i32 %108, %109
  %111 = load i32, i32* %16, align 4
  %112 = add nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %107, i64 %113
  %115 = load i8, i8* %114, align 1
  store i8 %115, i8* %27, align 1
  %116 = load i8*, i8** %9, align 8
  %117 = load i32, i32* %20, align 4
  %118 = load i32, i32* %19, align 4
  %119 = mul nsw i32 %117, %118
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %116, i64 %122
  %124 = load i8, i8* %123, align 1
  store i8 %124, i8* %28, align 1
  %125 = load i32, i32* %18, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %97
  %128 = load i8*, i8** %9, align 8
  %129 = load i32, i32* %20, align 4
  %130 = load i32, i32* %19, align 4
  %131 = mul nsw i32 %129, %130
  %132 = load i32, i32* %18, align 4
  %133 = add nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %128, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  br label %139

138:                                              ; preds = %97
  br label %139

139:                                              ; preds = %138, %127
  %140 = phi i32 [ %137, %127 ], [ 255, %138 ]
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %29, align 1
  %142 = load i32, i32* %21, align 4
  %143 = load i32, i32* %25, align 4
  %144 = sdiv i32 %142, %143
  %145 = load i32, i32* %22, align 4
  %146 = load i32, i32* %25, align 4
  %147 = sdiv i32 %145, %146
  %148 = add nsw i32 %144, %147
  %149 = srem i32 %148, 2
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %170

151:                                              ; preds = %139
  %152 = load i32, i32* %21, align 4
  %153 = load i32, i32* %24, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = load i8, i8* %26, align 1
  %157 = call i32 @checkval255(i8 zeroext %156)
  %158 = load i8, i8* %27, align 1
  %159 = call i32 @checkval255(i8 zeroext %158)
  %160 = load i8, i8* %28, align 1
  %161 = call i32 @checkval255(i8 zeroext %160)
  br label %169

162:                                              ; preds = %151
  %163 = load i8, i8* %26, align 1
  %164 = call i32 @checkval0(i8 zeroext %163)
  %165 = load i8, i8* %27, align 1
  %166 = call i32 @checkval0(i8 zeroext %165)
  %167 = load i8, i8* %28, align 1
  %168 = call i32 @checkval0(i8 zeroext %167)
  br label %169

169:                                              ; preds = %162, %155
  br label %213

170:                                              ; preds = %139
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* @TJSAMP_GRAY, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %193

174:                                              ; preds = %170
  %175 = load i32, i32* %21, align 4
  %176 = load i32, i32* %24, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %174
  %179 = load i8, i8* %26, align 1
  %180 = call i32 @checkval(i8 zeroext %179, i32 76)
  %181 = load i8, i8* %27, align 1
  %182 = call i32 @checkval(i8 zeroext %181, i32 76)
  %183 = load i8, i8* %28, align 1
  %184 = call i32 @checkval(i8 zeroext %183, i32 76)
  br label %192

185:                                              ; preds = %174
  %186 = load i8, i8* %26, align 1
  %187 = call i32 @checkval(i8 zeroext %186, i32 226)
  %188 = load i8, i8* %27, align 1
  %189 = call i32 @checkval(i8 zeroext %188, i32 226)
  %190 = load i8, i8* %28, align 1
  %191 = call i32 @checkval(i8 zeroext %190, i32 226)
  br label %192

192:                                              ; preds = %185, %178
  br label %212

193:                                              ; preds = %170
  %194 = load i32, i32* %21, align 4
  %195 = load i32, i32* %24, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %193
  %198 = load i8, i8* %26, align 1
  %199 = call i32 @checkval255(i8 zeroext %198)
  %200 = load i8, i8* %27, align 1
  %201 = call i32 @checkval0(i8 zeroext %200)
  %202 = load i8, i8* %28, align 1
  %203 = call i32 @checkval0(i8 zeroext %202)
  br label %211

204:                                              ; preds = %193
  %205 = load i8, i8* %26, align 1
  %206 = call i32 @checkval255(i8 zeroext %205)
  %207 = load i8, i8* %27, align 1
  %208 = call i32 @checkval255(i8 zeroext %207)
  %209 = load i8, i8* %28, align 1
  %210 = call i32 @checkval0(i8 zeroext %209)
  br label %211

211:                                              ; preds = %204, %197
  br label %212

212:                                              ; preds = %211, %192
  br label %213

213:                                              ; preds = %212, %169
  %214 = load i8, i8* %29, align 1
  %215 = call i32 @checkval255(i8 zeroext %214)
  br label %216

216:                                              ; preds = %213
  %217 = load i32, i32* %22, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %22, align 4
  br label %73

219:                                              ; preds = %73
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %21, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %21, align 4
  br label %68

223:                                              ; preds = %68
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %23, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %290

227:                                              ; preds = %224
  store i32 0, i32* %21, align 4
  br label %228

228:                                              ; preds = %286, %227
  %229 = load i32, i32* %21, align 4
  %230 = load i32, i32* %11, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %289

232:                                              ; preds = %228
  store i32 0, i32* %22, align 4
  br label %233

233:                                              ; preds = %281, %232
  %234 = load i32, i32* %22, align 4
  %235 = load i32, i32* %10, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %284

237:                                              ; preds = %233
  %238 = load i8*, i8** %9, align 8
  %239 = load i32, i32* %21, align 4
  %240 = load i32, i32* %10, align 4
  %241 = mul nsw i32 %239, %240
  %242 = load i32, i32* %22, align 4
  %243 = add nsw i32 %241, %242
  %244 = load i32, i32* %19, align 4
  %245 = mul nsw i32 %243, %244
  %246 = load i32, i32* %15, align 4
  %247 = add nsw i32 %245, %246
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %238, i64 %248
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i32
  %252 = load i8*, i8** %9, align 8
  %253 = load i32, i32* %21, align 4
  %254 = load i32, i32* %10, align 4
  %255 = mul nsw i32 %253, %254
  %256 = load i32, i32* %22, align 4
  %257 = add nsw i32 %255, %256
  %258 = load i32, i32* %19, align 4
  %259 = mul nsw i32 %257, %258
  %260 = load i32, i32* %16, align 4
  %261 = add nsw i32 %259, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %252, i64 %262
  %264 = load i8, i8* %263, align 1
  %265 = zext i8 %264 to i32
  %266 = load i8*, i8** %9, align 8
  %267 = load i32, i32* %21, align 4
  %268 = load i32, i32* %10, align 4
  %269 = mul nsw i32 %267, %268
  %270 = load i32, i32* %22, align 4
  %271 = add nsw i32 %269, %270
  %272 = load i32, i32* %19, align 4
  %273 = mul nsw i32 %271, %272
  %274 = load i32, i32* %17, align 4
  %275 = add nsw i32 %273, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8, i8* %266, i64 %276
  %278 = load i8, i8* %277, align 1
  %279 = zext i8 %278 to i32
  %280 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %251, i32 %265, i32 %279)
  br label %281

281:                                              ; preds = %237
  %282 = load i32, i32* %22, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %22, align 4
  br label %233

284:                                              ; preds = %233
  %285 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %286

286:                                              ; preds = %284
  %287 = load i32, i32* %21, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %21, align 4
  br label %228

289:                                              ; preds = %228
  br label %290

290:                                              ; preds = %289, %224
  %291 = load i32, i32* %23, align 4
  ret i32 %291
}

declare dso_local i32 @checkval255(i8 zeroext) #1

declare dso_local i32 @checkval0(i8 zeroext) #1

declare dso_local i32 @checkval(i8 zeroext, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
