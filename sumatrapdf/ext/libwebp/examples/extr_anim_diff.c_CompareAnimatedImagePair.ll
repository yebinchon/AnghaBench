; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_anim_diff.c_CompareAnimatedImagePair.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_anim_diff.c_CompareAnimatedImagePair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32* }

@.str = private unnamed_addr constant [22 x i8] c"Canvas width mismatch\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Canvas height mismatch\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Frame count mismatch\00", align 1
@ANIM_GIF = common dso_local global i64 0, align 8
@ANIM_WEBP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Loop count mismatch\00", align 1
@__const.CompareAnimatedImagePair.format = private unnamed_addr constant [29 x i8] c"Frame #%d, duration mismatch\00", align 16
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Frame #%d, psnr = %.2lf (min_psnr = %f)\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Frame #%d, max pixel diff: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_6__*, i32, double)* @CompareAnimatedImagePair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CompareAnimatedImagePair(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, i32 %2, double %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca [29 x i8], align 16
  %19 = alloca [37 x i8], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32 %2, i32* %8, align 4
  store double %3, double* %9, align 8
  store i32 1, i32* %10, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 1
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @CompareValues(i32 %27, i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %33, %4
  %37 = phi i1 [ false, %4 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %10, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @CompareValues(i32 %41, i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %47, %36
  %51 = phi i1 [ false, %36 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %10, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @CompareValues(i32 %55, i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %61, %50
  %65 = phi i1 [ false, %50 ], [ %63, %61 ]
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %252

70:                                               ; preds = %64
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %151

73:                                               ; preds = %70
  store i32 0, i32* %13, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ANIM_GIF, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %73
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 65536
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ANIM_WEBP, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 65535
  br i1 %94, label %117, label %95

95:                                               ; preds = %90, %84, %79, %73
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @ANIM_WEBP, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %95
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 65535
  br i1 %105, label %106, label %118

106:                                              ; preds = %101
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @ANIM_GIF, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 65536
  br i1 %116, label %117, label %118

117:                                              ; preds = %112, %90
  store i32 1, i32* %13, align 4
  br label %118

118:                                              ; preds = %117, %112, %106, %101, %95
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %118
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @CompareValues(i32 %124, i32 %127, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %121, %118
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br label %133

133:                                              ; preds = %130, %121
  %134 = phi i1 [ false, %121 ], [ %132, %130 ]
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %10, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i64 @CompareBackgroundColor(i32 %138, i32 %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %133
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br label %148

148:                                              ; preds = %145, %133
  %149 = phi i1 [ false, %133 ], [ %147, %145 ]
  %150 = zext i1 %149 to i32
  store i32 %150, i32* %10, align 4
  br label %151

151:                                              ; preds = %148, %70
  store i64 0, i64* %12, align 8
  br label %152

152:                                              ; preds = %247, %151
  %153 = load i64, i64* %12, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = icmp ult i64 %153, %157
  br i1 %158, label %159, label %250

159:                                              ; preds = %152
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 5
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = load i64, i64* %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  store i32* %166, i32** %14, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 5
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = load i64, i64* %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  store i32* %173, i32** %15, align 8
  %174 = load i32, i32* %11, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %212

176:                                              ; preds = %159
  %177 = bitcast [29 x i8]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %177, i8* align 16 getelementptr inbounds ([29 x i8], [29 x i8]* @__const.CompareAnimatedImagePair.format, i32 0, i32 0), i64 29, i1 false)
  %178 = load i32, i32* %10, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %176
  %181 = getelementptr inbounds [37 x i8], [37 x i8]* %19, i64 0, i64 0
  %182 = getelementptr inbounds [29 x i8], [29 x i8]* %18, i64 0, i64 0
  %183 = load i64, i64* %12, align 8
  %184 = call i64 @snprintf(i8* %181, i32 37, i8* %182, i64 %183)
  %185 = icmp sge i64 %184, 0
  br label %186

186:                                              ; preds = %180, %176
  %187 = phi i1 [ false, %176 ], [ %185, %180 ]
  %188 = zext i1 %187 to i32
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* %10, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %209

191:                                              ; preds = %186
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 5
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %193, align 8
  %195 = load i64, i64* %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 5
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %200, align 8
  %202 = load i64, i64* %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = getelementptr inbounds [37 x i8], [37 x i8]* %19, i64 0, i64 0
  %207 = call i64 @CompareValues(i32 %198, i32 %205, i8* %206)
  %208 = icmp ne i64 %207, 0
  br label %209

209:                                              ; preds = %191, %186
  %210 = phi i1 [ false, %186 ], [ %208, %191 ]
  %211 = zext i1 %210 to i32
  store i32 %211, i32* %10, align 4
  br label %212

212:                                              ; preds = %209, %159
  %213 = load i32*, i32** %14, align 8
  %214 = load i32*, i32** %15, align 8
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* %8, align 4
  %222 = call i32 @GetDiffAndPSNR(i32* %213, i32* %214, i32 %217, i32 %220, i32 %221, i32* %16, double* %17)
  %223 = load double, double* %9, align 8
  %224 = fcmp ogt double %223, 0.000000e+00
  br i1 %224, label %225, label %237

225:                                              ; preds = %212
  %226 = load double, double* %17, align 8
  %227 = load double, double* %9, align 8
  %228 = fcmp olt double %226, %227
  br i1 %228, label %229, label %236

229:                                              ; preds = %225
  %230 = load i32, i32* @stderr, align 4
  %231 = load i64, i64* %12, align 8
  %232 = load double, double* %17, align 8
  %233 = fptosi double %232 to i32
  %234 = load double, double* %9, align 8
  %235 = call i32 (i32, i8*, i64, i32, ...) @fprintf(i32 %230, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %231, i32 %233, double %234)
  store i32 0, i32* %10, align 4
  br label %236

236:                                              ; preds = %229, %225
  br label %246

237:                                              ; preds = %212
  %238 = load i32, i32* %16, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %237
  %241 = load i32, i32* @stderr, align 4
  %242 = load i64, i64* %12, align 8
  %243 = load i32, i32* %16, align 4
  %244 = call i32 (i32, i8*, i64, i32, ...) @fprintf(i32 %241, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %242, i32 %243)
  store i32 0, i32* %10, align 4
  br label %245

245:                                              ; preds = %240, %237
  br label %246

246:                                              ; preds = %245, %236
  br label %247

247:                                              ; preds = %246
  %248 = load i64, i64* %12, align 8
  %249 = add i64 %248, 1
  store i64 %249, i64* %12, align 8
  br label %152

250:                                              ; preds = %152
  %251 = load i32, i32* %10, align 4
  store i32 %251, i32* %5, align 4
  br label %252

252:                                              ; preds = %250, %69
  %253 = load i32, i32* %5, align 4
  ret i32 %253
}

declare dso_local i64 @CompareValues(i32, i32, i8*) #1

declare dso_local i64 @CompareBackgroundColor(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @GetDiffAndPSNR(i32*, i32*, i32, i32, i32, i32*, double*) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
