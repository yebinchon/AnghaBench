; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_histogram_enc.c_HistogramCombineEntropyBin.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_histogram_enc.c_HistogramCombineEntropyBin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_16__** }
%struct.TYPE_16__ = type { double, i64 }
%struct.anon = type { i32, i64 }

@BIN_SIZE = common dso_local global i32 0, align 4
@VP8L_NON_TRIVIAL_SYM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32*, i64*, i64*, %struct.TYPE_16__*, i64*, i32, double, i32)* @HistogramCombineEntropyBin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HistogramCombineEntropyBin(%struct.TYPE_15__* %0, i32* %1, i64* %2, i64* %3, %struct.TYPE_16__* %4, i64* %5, i32 %6, double %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_16__**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i64* %2, i64** %12, align 8
  store i64* %3, i64** %13, align 8
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %14, align 8
  store i64* %5, i64** %15, align 8
  store i32 %6, i32* %16, align 4
  store double %7, double* %17, align 8
  store i32 %8, i32* %18, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %31, align 8
  store %struct.TYPE_16__** %32, %struct.TYPE_16__*** %19, align 8
  %33 = load i32, i32* @BIN_SIZE, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %21, align 8
  %36 = alloca %struct.anon, i64 %34, align 16
  store i64 %34, i64* %22, align 8
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* @BIN_SIZE, align 4
  %39 = icmp sle i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  store i32 0, i32* %20, align 4
  br label %42

42:                                               ; preds = %55, %9
  %43 = load i32, i32* %20, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i32, i32* %20, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %36, i64 %48
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %49, i32 0, i32 0
  store i32 -1, i32* %50, align 16
  %51 = load i32, i32* %20, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %36, i64 %52
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %20, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %20, align 4
  br label %42

58:                                               ; preds = %42
  store i32 0, i32* %20, align 4
  br label %59

59:                                               ; preds = %71, %58
  %60 = load i32, i32* %20, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i32, i32* %20, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64*, i64** %13, align 8
  %68 = load i32, i32* %20, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  store i64 %66, i64* %70, align 8
  br label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %20, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %20, align 4
  br label %59

74:                                               ; preds = %59
  store i32 0, i32* %20, align 4
  br label %75

75:                                               ; preds = %246, %74
  %76 = load i32, i32* %20, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %249

81:                                               ; preds = %75
  %82 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %19, align 8
  %83 = load i32, i32* %20, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %82, i64 %84
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = icmp eq %struct.TYPE_16__* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %246

89:                                               ; preds = %81
  %90 = load i64*, i64** %15, align 8
  %91 = load i32, i32* %20, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %23, align 4
  %96 = load i32, i32* %23, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.anon, %struct.anon* %36, i64 %97
  %99 = getelementptr inbounds %struct.anon, %struct.anon* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 16
  store i32 %100, i32* %24, align 4
  %101 = load i32, i32* %24, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %109

103:                                              ; preds = %89
  %104 = load i32, i32* %20, align 4
  %105 = load i32, i32* %23, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.anon, %struct.anon* %36, i64 %106
  %108 = getelementptr inbounds %struct.anon, %struct.anon* %107, i32 0, i32 0
  store i32 %104, i32* %108, align 16
  br label %245

109:                                              ; preds = %89
  %110 = load i32, i32* %18, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %145

112:                                              ; preds = %109
  %113 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %19, align 8
  %114 = load i32, i32* %20, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %113, i64 %115
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %19, align 8
  %119 = load i32, i32* %24, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %118, i64 %120
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %19, align 8
  %124 = load i32, i32* %24, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %123, i64 %125
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  %128 = call i32 @HistogramAdd(%struct.TYPE_16__* %117, %struct.TYPE_16__* %122, %struct.TYPE_16__* %127)
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %130 = load i32, i32* %20, align 4
  %131 = load i32*, i32** %11, align 8
  %132 = call i32 @HistogramSetRemoveHistogram(%struct.TYPE_15__* %129, i32 %130, i32* %131)
  %133 = load i64*, i64** %12, align 8
  %134 = load i32, i32* %24, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load i64*, i64** %13, align 8
  %139 = load i64*, i64** %12, align 8
  %140 = load i32, i32* %20, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds i64, i64* %138, i64 %143
  store i64 %137, i64* %144, align 8
  br label %244

145:                                              ; preds = %109
  %146 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %19, align 8
  %147 = load i32, i32* %20, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %146, i64 %148
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load double, double* %151, align 8
  store double %152, double* %25, align 8
  %153 = load double, double* %25, align 8
  %154 = fneg double %153
  %155 = load double, double* %17, align 8
  %156 = fmul double %154, %155
  store double %156, double* %26, align 8
  %157 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %19, align 8
  %158 = load i32, i32* %24, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %157, i64 %159
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %160, align 8
  %162 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %19, align 8
  %163 = load i32, i32* %20, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %162, i64 %164
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %165, align 8
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %168 = load double, double* %26, align 8
  %169 = call double @HistogramAddEval(%struct.TYPE_16__* %161, %struct.TYPE_16__* %166, %struct.TYPE_16__* %167, double %168)
  store double %169, double* %27, align 8
  %170 = load double, double* %27, align 8
  %171 = load double, double* %26, align 8
  %172 = fcmp olt double %170, %171
  br i1 %172, label %173, label %243

173:                                              ; preds = %145
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @VP8L_NON_TRIVIAL_SYM, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %201, label %179

179:                                              ; preds = %173
  %180 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %19, align 8
  %181 = load i32, i32* %20, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %180, i64 %182
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @VP8L_NON_TRIVIAL_SYM, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %199

189:                                              ; preds = %179
  %190 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %19, align 8
  %191 = load i32, i32* %24, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %190, i64 %192
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @VP8L_NON_TRIVIAL_SYM, align 8
  %198 = icmp eq i64 %196, %197
  br label %199

199:                                              ; preds = %189, %179
  %200 = phi i1 [ false, %179 ], [ %198, %189 ]
  br label %201

201:                                              ; preds = %199, %173
  %202 = phi i1 [ true, %173 ], [ %200, %199 ]
  %203 = zext i1 %202 to i32
  store i32 %203, i32* %28, align 4
  store i32 32, i32* %29, align 4
  %204 = load i32, i32* %28, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %213, label %206

206:                                              ; preds = %201
  %207 = load i32, i32* %23, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.anon, %struct.anon* %36, i64 %208
  %210 = getelementptr inbounds %struct.anon, %struct.anon* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp uge i64 %211, 32
  br i1 %212, label %213, label %235

213:                                              ; preds = %206, %201
  %214 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %19, align 8
  %215 = load i32, i32* %24, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %214, i64 %216
  %218 = call i32 @HistogramSwap(%struct.TYPE_16__** %14, %struct.TYPE_16__** %217)
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %220 = load i32, i32* %20, align 4
  %221 = load i32*, i32** %11, align 8
  %222 = call i32 @HistogramSetRemoveHistogram(%struct.TYPE_15__* %219, i32 %220, i32* %221)
  %223 = load i64*, i64** %12, align 8
  %224 = load i32, i32* %24, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %223, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = load i64*, i64** %13, align 8
  %229 = load i64*, i64** %12, align 8
  %230 = load i32, i32* %20, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i64, i64* %229, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds i64, i64* %228, i64 %233
  store i64 %227, i64* %234, align 8
  br label %242

235:                                              ; preds = %206
  %236 = load i32, i32* %23, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.anon, %struct.anon* %36, i64 %237
  %239 = getelementptr inbounds %struct.anon, %struct.anon* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = add i64 %240, 1
  store i64 %241, i64* %239, align 8
  br label %242

242:                                              ; preds = %235, %213
  br label %243

243:                                              ; preds = %242, %145
  br label %244

244:                                              ; preds = %243, %112
  br label %245

245:                                              ; preds = %244, %103
  br label %246

246:                                              ; preds = %245, %88
  %247 = load i32, i32* %20, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %20, align 4
  br label %75

249:                                              ; preds = %75
  %250 = load i32, i32* %18, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %278

252:                                              ; preds = %249
  store i32 0, i32* %20, align 4
  br label %253

253:                                              ; preds = %274, %252
  %254 = load i32, i32* %20, align 4
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp slt i32 %254, %257
  br i1 %258, label %259, label %277

259:                                              ; preds = %253
  %260 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %19, align 8
  %261 = load i32, i32* %20, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %260, i64 %262
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %263, align 8
  %265 = icmp eq %struct.TYPE_16__* %264, null
  br i1 %265, label %266, label %267

266:                                              ; preds = %259
  br label %274

267:                                              ; preds = %259
  %268 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %19, align 8
  %269 = load i32, i32* %20, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %268, i64 %270
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %271, align 8
  %273 = call i32 @UpdateHistogramCost(%struct.TYPE_16__* %272)
  br label %274

274:                                              ; preds = %267, %266
  %275 = load i32, i32* %20, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %20, align 4
  br label %253

277:                                              ; preds = %253
  br label %278

278:                                              ; preds = %277, %249
  %279 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %279)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @HistogramAdd(%struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*) #2

declare dso_local i32 @HistogramSetRemoveHistogram(%struct.TYPE_15__*, i32, i32*) #2

declare dso_local double @HistogramAddEval(%struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, double) #2

declare dso_local i32 @HistogramSwap(%struct.TYPE_16__**, %struct.TYPE_16__**) #2

declare dso_local i32 @UpdateHistogramCost(%struct.TYPE_16__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
