; ModuleID = '/home/carl/AnghaBench/reactos/drivers/wdm/audio/filters/kmixer/extr_pin.c_PerformSampleRateConversion.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/wdm/audio/filters/kmixer/extr_pin.c_PerformSampleRateConversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double*, double*, i32, i32, double, i32 }

@.str = private unnamed_addr constant [92 x i8] c"PerformSampleRateConversion OldRate %u NewRate %u BytesPerSample %u NumChannels %u Irql %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"KeSaveFloatingPointState failed with %x\0A\00", align 1
@NonPagedPool = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@SRC_SINC_FASTEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"src_new failed with %x\0A\00", align 1
@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"src_process failed with %x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PerformSampleRateConversion(double* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, double** %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_3__, align 8
  %23 = alloca double*, align 8
  %24 = alloca i32, align 4
  %25 = alloca double*, align 8
  %26 = alloca double*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32*, align 8
  store double* %0, double** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store double** %6, double*** %16, align 8
  store i32* %7, i32** %17, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %15, align 4
  %35 = call i32 (...) @KeGetCurrentIrql()
  %36 = call i32 @DPRINT(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %14, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %45, label %39

39:                                               ; preds = %8
  %40 = load i32, i32* %14, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %14, align 4
  %44 = icmp eq i32 %43, 4
  br label %45

45:                                               ; preds = %42, %39, %8
  %46 = phi i1 [ true, %39 ], [ true, %8 ], [ %44, %42 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  %49 = call i32 @KeSaveFloatingPointState(i32* %18)
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %19, align 4
  %51 = call i32 @NT_SUCCESS(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %19, align 4
  %55 = call i32 @DPRINT1(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %19, align 4
  store i32 %56, i32* %9, align 4
  br label %291

57:                                               ; preds = %45
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %15, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sdiv i32 %58, %61
  store i32 %62, i32* %27, align 4
  %63 = load i32, i32* @NonPagedPool, align 4
  %64 = load i32, i32* %27, align 4
  %65 = load i32, i32* %15, align 4
  %66 = mul nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call double* @ExAllocatePool(i32 %63, i32 %69)
  store double* %70, double** %25, align 8
  %71 = load double*, double** %25, align 8
  %72 = icmp ne double* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %57
  %74 = call i32 @KeRestoreFloatingPointState(i32* %18)
  %75 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %75, i32* %9, align 4
  br label %291

76:                                               ; preds = %57
  %77 = load i32, i32* %27, align 4
  %78 = load i32, i32* %13, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* %12, align 4
  %81 = sdiv i32 %80, 2
  %82 = add nsw i32 %79, %81
  %83 = load i32, i32* %12, align 4
  %84 = sdiv i32 %82, %83
  %85 = add nsw i32 %84, 2
  store i32 %85, i32* %28, align 4
  %86 = load i32, i32* @NonPagedPool, align 4
  %87 = load i32, i32* %28, align 4
  %88 = load i32, i32* %15, align 4
  %89 = mul nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = call double* @ExAllocatePool(i32 %86, i32 %92)
  store double* %93, double** %26, align 8
  %94 = load double*, double** %26, align 8
  %95 = icmp ne double* %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %76
  %97 = load double*, double** %25, align 8
  %98 = call i32 @ExFreePool(double* %97)
  %99 = call i32 @KeRestoreFloatingPointState(i32* %18)
  %100 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %100, i32* %9, align 4
  br label %291

101:                                              ; preds = %76
  %102 = load i32, i32* @NonPagedPool, align 4
  %103 = load i32, i32* %28, align 4
  %104 = load i32, i32* %15, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load i32, i32* %14, align 4
  %107 = mul nsw i32 %105, %106
  %108 = call double* @ExAllocatePool(i32 %102, i32 %107)
  store double* %108, double** %23, align 8
  %109 = load double*, double** %23, align 8
  %110 = icmp ne double* %109, null
  br i1 %110, label %118, label %111

111:                                              ; preds = %101
  %112 = load double*, double** %25, align 8
  %113 = call i32 @ExFreePool(double* %112)
  %114 = load double*, double** %26, align 8
  %115 = call i32 @ExFreePool(double* %114)
  %116 = call i32 @KeRestoreFloatingPointState(i32* %18)
  %117 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %117, i32* %9, align 4
  br label %291

118:                                              ; preds = %101
  %119 = load i32, i32* @SRC_SINC_FASTEST, align 4
  %120 = load i32, i32* %15, align 4
  %121 = call i32* @src_new(i32 %119, i32 %120, i32* %24)
  store i32* %121, i32** %21, align 8
  %122 = load i32*, i32** %21, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %135, label %124

124:                                              ; preds = %118
  %125 = load i32, i32* %24, align 4
  %126 = call i32 @DPRINT1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = call i32 @KeRestoreFloatingPointState(i32* %18)
  %128 = load double*, double** %25, align 8
  %129 = call i32 @ExFreePool(double* %128)
  %130 = load double*, double** %26, align 8
  %131 = call i32 @ExFreePool(double* %130)
  %132 = load double*, double** %23, align 8
  %133 = call i32 @ExFreePool(double* %132)
  %134 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %134, i32* %9, align 4
  br label %291

135:                                              ; preds = %118
  %136 = load i32, i32* %14, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %162

138:                                              ; preds = %135
  store i32 0, i32* %20, align 4
  br label %139

139:                                              ; preds = %158, %138
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* %27, align 4
  %142 = load i32, i32* %15, align 4
  %143 = mul nsw i32 %141, %142
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %161

145:                                              ; preds = %139
  %146 = load double*, double** %10, align 8
  %147 = load i32, i32* %20, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds double, double* %146, i64 %148
  %150 = load double, double* %149, align 8
  %151 = fdiv double %150, 1.280000e+02
  %152 = fptrunc double %151 to float
  %153 = fpext float %152 to double
  %154 = load double*, double** %25, align 8
  %155 = load i32, i32* %20, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds double, double* %154, i64 %156
  store double %153, double* %157, align 8
  br label %158

158:                                              ; preds = %145
  %159 = load i32, i32* %20, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %20, align 4
  br label %139

161:                                              ; preds = %139
  br label %186

162:                                              ; preds = %135
  %163 = load i32, i32* %14, align 4
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %165, label %173

165:                                              ; preds = %162
  %166 = load double*, double** %10, align 8
  %167 = bitcast double* %166 to i16*
  %168 = load double*, double** %25, align 8
  %169 = load i32, i32* %27, align 4
  %170 = load i32, i32* %15, align 4
  %171 = mul nsw i32 %169, %170
  %172 = call i32 @src_short_to_float_array(i16* %167, double* %168, i32 %171)
  br label %185

173:                                              ; preds = %162
  %174 = load i32, i32* %14, align 4
  %175 = icmp eq i32 %174, 4
  br i1 %175, label %176, label %184

176:                                              ; preds = %173
  %177 = load double*, double** %10, align 8
  %178 = bitcast double* %177 to i32*
  %179 = load double*, double** %25, align 8
  %180 = load i32, i32* %27, align 4
  %181 = load i32, i32* %15, align 4
  %182 = mul nsw i32 %180, %181
  %183 = call i32 @src_int_to_float_array(i32* %178, double* %179, i32 %182)
  br label %184

184:                                              ; preds = %176, %173
  br label %185

185:                                              ; preds = %184, %165
  br label %186

186:                                              ; preds = %185, %161
  %187 = load double*, double** %25, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store double* %187, double** %188, align 8
  %189 = load double*, double** %26, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store double* %189, double** %190, align 8
  %191 = load i32, i32* %27, align 4
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  store i32 %191, i32* %192, align 8
  %193 = load i32, i32* %28, align 4
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  store i32 %193, i32* %194, align 4
  %195 = load i32, i32* %13, align 4
  %196 = sitofp i32 %195 to double
  %197 = load i32, i32* %12, align 4
  %198 = sitofp i32 %197 to double
  %199 = fdiv double %196, %198
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  store double %199, double* %200, align 8
  %201 = load i32*, i32** %21, align 8
  %202 = call i32 @src_process(i32* %201, %struct.TYPE_3__* %22)
  store i32 %202, i32* %24, align 4
  %203 = load i32, i32* %24, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %186
  %206 = load i32, i32* %24, align 4
  %207 = call i32 @DPRINT1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %206)
  %208 = call i32 @KeRestoreFloatingPointState(i32* %18)
  %209 = load double*, double** %25, align 8
  %210 = call i32 @ExFreePool(double* %209)
  %211 = load double*, double** %26, align 8
  %212 = call i32 @ExFreePool(double* %211)
  %213 = load double*, double** %23, align 8
  %214 = call i32 @ExFreePool(double* %213)
  %215 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %215, i32* %9, align 4
  br label %291

216:                                              ; preds = %186
  %217 = load i32, i32* %14, align 4
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %219, label %244

219:                                              ; preds = %216
  store i32 0, i32* %20, align 4
  br label %220

220:                                              ; preds = %240, %219
  %221 = load i32, i32* %20, align 4
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 5
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %15, align 4
  %225 = mul nsw i32 %223, %224
  %226 = icmp slt i32 %221, %225
  br i1 %226, label %227, label %243

227:                                              ; preds = %220
  %228 = load double*, double** %26, align 8
  %229 = load i32, i32* %20, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds double, double* %228, i64 %230
  %232 = load double, double* %231, align 8
  %233 = call i32 @lrintf(double %232)
  %234 = ashr i32 %233, 24
  %235 = sitofp i32 %234 to double
  %236 = load double*, double** %23, align 8
  %237 = load i32, i32* %20, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds double, double* %236, i64 %238
  store double %235, double* %239, align 8
  br label %240

240:                                              ; preds = %227
  %241 = load i32, i32* %20, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %20, align 4
  br label %220

243:                                              ; preds = %220
  br label %273

244:                                              ; preds = %216
  %245 = load i32, i32* %14, align 4
  %246 = icmp eq i32 %245, 2
  br i1 %246, label %247, label %258

247:                                              ; preds = %244
  %248 = load double*, double** %23, align 8
  %249 = ptrtoint double* %248 to i64
  store i64 %249, i64* %29, align 8
  %250 = load double*, double** %26, align 8
  %251 = load i64, i64* %29, align 8
  %252 = inttoptr i64 %251 to i16*
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 5
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* %15, align 4
  %256 = mul nsw i32 %254, %255
  %257 = call i32 @src_float_to_short_array(double* %250, i16* %252, i32 %256)
  br label %272

258:                                              ; preds = %244
  %259 = load i32, i32* %14, align 4
  %260 = icmp eq i32 %259, 4
  br i1 %260, label %261, label %271

261:                                              ; preds = %258
  %262 = load double*, double** %23, align 8
  %263 = bitcast double* %262 to i32*
  store i32* %263, i32** %30, align 8
  %264 = load double*, double** %26, align 8
  %265 = load i32*, i32** %30, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 5
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* %15, align 4
  %269 = mul nsw i32 %267, %268
  %270 = call i32 @src_float_to_int_array(double* %264, i32* %265, i32 %269)
  br label %271

271:                                              ; preds = %261, %258
  br label %272

272:                                              ; preds = %271, %247
  br label %273

273:                                              ; preds = %272, %243
  %274 = load double*, double** %23, align 8
  %275 = load double**, double*** %16, align 8
  store double* %274, double** %275, align 8
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 5
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* %14, align 4
  %279 = mul nsw i32 %277, %278
  %280 = load i32, i32* %15, align 4
  %281 = mul nsw i32 %279, %280
  %282 = load i32*, i32** %17, align 8
  store i32 %281, i32* %282, align 4
  %283 = load double*, double** %25, align 8
  %284 = call i32 @ExFreePool(double* %283)
  %285 = load double*, double** %26, align 8
  %286 = call i32 @ExFreePool(double* %285)
  %287 = load i32*, i32** %21, align 8
  %288 = call i32 @src_delete(i32* %287)
  %289 = call i32 @KeRestoreFloatingPointState(i32* %18)
  %290 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %290, i32* %9, align 4
  br label %291

291:                                              ; preds = %273, %205, %124, %111, %96, %73, %53
  %292 = load i32, i32* %9, align 4
  ret i32 %292
}

declare dso_local i32 @DPRINT(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @KeGetCurrentIrql(...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @KeSaveFloatingPointState(i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @DPRINT1(i8*, i32) #1

declare dso_local double* @ExAllocatePool(i32, i32) #1

declare dso_local i32 @KeRestoreFloatingPointState(i32*) #1

declare dso_local i32 @ExFreePool(double*) #1

declare dso_local i32* @src_new(i32, i32, i32*) #1

declare dso_local i32 @src_short_to_float_array(i16*, double*, i32) #1

declare dso_local i32 @src_int_to_float_array(i32*, double*, i32) #1

declare dso_local i32 @src_process(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @lrintf(double) #1

declare dso_local i32 @src_float_to_short_array(double*, i16*, i32) #1

declare dso_local i32 @src_float_to_int_array(double*, i32*, i32) #1

declare dso_local i32 @src_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
