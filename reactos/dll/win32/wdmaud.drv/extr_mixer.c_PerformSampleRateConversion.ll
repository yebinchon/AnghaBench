; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wdmaud.drv/extr_mixer.c_PerformSampleRateConversion.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wdmaud.drv/extr_mixer.c_PerformSampleRateConversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double*, double*, i32, i32, double, i32 }

@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@SRC_SINC_FASTEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"src_process failed with %x\0A\00", align 1
@ERROR_INVALID_DATA = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4

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
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_3__, align 8
  %21 = alloca double*, align 8
  %22 = alloca i32, align 4
  %23 = alloca double*, align 8
  %24 = alloca double*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  store double* %0, double** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store double** %6, double*** %16, align 8
  store i32* %7, i32** %17, align 8
  %29 = load i32, i32* %14, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %37, label %31

31:                                               ; preds = %8
  %32 = load i32, i32* %14, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %14, align 4
  %36 = icmp eq i32 %35, 4
  br label %37

37:                                               ; preds = %34, %31, %8
  %38 = phi i1 [ true, %31 ], [ true, %8 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %15, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sdiv i32 %41, %44
  store i32 %45, i32* %25, align 4
  %46 = call i32 (...) @GetProcessHeap()
  %47 = load i32, i32* %25, align 4
  %48 = load i32, i32* %15, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call double* @HeapAlloc(i32 %46, i32 0, i32 %52)
  store double* %53, double** %23, align 8
  %54 = load double*, double** %23, align 8
  %55 = icmp ne double* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %37
  %57 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %57, i32* %9, align 4
  br label %277

58:                                               ; preds = %37
  %59 = load i32, i32* %25, align 4
  %60 = load i32, i32* %13, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* %12, align 4
  %63 = sdiv i32 %62, 2
  %64 = add nsw i32 %61, %63
  %65 = load i32, i32* %12, align 4
  %66 = sdiv i32 %64, %65
  %67 = add nsw i32 %66, 2
  store i32 %67, i32* %26, align 4
  %68 = call i32 (...) @GetProcessHeap()
  %69 = load i32, i32* %26, align 4
  %70 = load i32, i32* %15, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = trunc i64 %73 to i32
  %75 = call double* @HeapAlloc(i32 %68, i32 0, i32 %74)
  store double* %75, double** %24, align 8
  %76 = load double*, double** %24, align 8
  %77 = icmp ne double* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %58
  %79 = call i32 (...) @GetProcessHeap()
  %80 = load double*, double** %23, align 8
  %81 = call i32 @HeapFree(i32 %79, i32 0, double* %80)
  %82 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %82, i32* %9, align 4
  br label %277

83:                                               ; preds = %58
  %84 = call i32 (...) @GetProcessHeap()
  %85 = load i32, i32* %26, align 4
  %86 = load i32, i32* %15, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* %14, align 4
  %89 = mul nsw i32 %87, %88
  %90 = call double* @HeapAlloc(i32 %84, i32 0, i32 %89)
  store double* %90, double** %21, align 8
  %91 = load double*, double** %21, align 8
  %92 = icmp ne double* %91, null
  br i1 %92, label %101, label %93

93:                                               ; preds = %83
  %94 = call i32 (...) @GetProcessHeap()
  %95 = load double*, double** %23, align 8
  %96 = call i32 @HeapFree(i32 %94, i32 0, double* %95)
  %97 = call i32 (...) @GetProcessHeap()
  %98 = load double*, double** %24, align 8
  %99 = call i32 @HeapFree(i32 %97, i32 0, double* %98)
  %100 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %100, i32* %9, align 4
  br label %277

101:                                              ; preds = %83
  %102 = load i32, i32* @SRC_SINC_FASTEST, align 4
  %103 = load i32, i32* %15, align 4
  %104 = call i32* @src_new(i32 %102, i32 %103, i32* %22)
  store i32* %104, i32** %19, align 8
  %105 = load i32*, i32** %19, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %118, label %107

107:                                              ; preds = %101
  %108 = call i32 (...) @GetProcessHeap()
  %109 = load double*, double** %23, align 8
  %110 = call i32 @HeapFree(i32 %108, i32 0, double* %109)
  %111 = call i32 (...) @GetProcessHeap()
  %112 = load double*, double** %24, align 8
  %113 = call i32 @HeapFree(i32 %111, i32 0, double* %112)
  %114 = call i32 (...) @GetProcessHeap()
  %115 = load double*, double** %21, align 8
  %116 = call i32 @HeapFree(i32 %114, i32 0, double* %115)
  %117 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %117, i32* %9, align 4
  br label %277

118:                                              ; preds = %101
  %119 = load i32, i32* %14, align 4
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %145

121:                                              ; preds = %118
  store i32 0, i32* %18, align 4
  br label %122

122:                                              ; preds = %141, %121
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* %25, align 4
  %125 = load i32, i32* %15, align 4
  %126 = mul nsw i32 %124, %125
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %144

128:                                              ; preds = %122
  %129 = load double*, double** %10, align 8
  %130 = load i32, i32* %18, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds double, double* %129, i64 %131
  %133 = load double, double* %132, align 8
  %134 = fdiv double %133, 1.280000e+02
  %135 = fptrunc double %134 to float
  %136 = fpext float %135 to double
  %137 = load double*, double** %23, align 8
  %138 = load i32, i32* %18, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds double, double* %137, i64 %139
  store double %136, double* %140, align 8
  br label %141

141:                                              ; preds = %128
  %142 = load i32, i32* %18, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %18, align 4
  br label %122

144:                                              ; preds = %122
  br label %169

145:                                              ; preds = %118
  %146 = load i32, i32* %14, align 4
  %147 = icmp eq i32 %146, 2
  br i1 %147, label %148, label %156

148:                                              ; preds = %145
  %149 = load double*, double** %10, align 8
  %150 = bitcast double* %149 to i16*
  %151 = load double*, double** %23, align 8
  %152 = load i32, i32* %25, align 4
  %153 = load i32, i32* %15, align 4
  %154 = mul nsw i32 %152, %153
  %155 = call i32 @src_short_to_float_array(i16* %150, double* %151, i32 %154)
  br label %168

156:                                              ; preds = %145
  %157 = load i32, i32* %14, align 4
  %158 = icmp eq i32 %157, 4
  br i1 %158, label %159, label %167

159:                                              ; preds = %156
  %160 = load double*, double** %10, align 8
  %161 = bitcast double* %160 to i32*
  %162 = load double*, double** %23, align 8
  %163 = load i32, i32* %25, align 4
  %164 = load i32, i32* %15, align 4
  %165 = mul nsw i32 %163, %164
  %166 = call i32 @src_int_to_float_array(i32* %161, double* %162, i32 %165)
  br label %167

167:                                              ; preds = %159, %156
  br label %168

168:                                              ; preds = %167, %148
  br label %169

169:                                              ; preds = %168, %144
  %170 = load double*, double** %23, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store double* %170, double** %171, align 8
  %172 = load double*, double** %24, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store double* %172, double** %173, align 8
  %174 = load i32, i32* %25, align 4
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  store i32 %174, i32* %175, align 8
  %176 = load i32, i32* %26, align 4
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  store i32 %176, i32* %177, align 4
  %178 = load i32, i32* %13, align 4
  %179 = sitofp i32 %178 to double
  %180 = load i32, i32* %12, align 4
  %181 = sitofp i32 %180 to double
  %182 = fdiv double %179, %181
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  store double %182, double* %183, align 8
  %184 = load i32*, i32** %19, align 8
  %185 = call i32 @src_process(i32* %184, %struct.TYPE_3__* %20)
  store i32 %185, i32* %22, align 4
  %186 = load i32, i32* %22, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %201

188:                                              ; preds = %169
  %189 = load i32, i32* %22, align 4
  %190 = call i32 @DPRINT1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %189)
  %191 = call i32 (...) @GetProcessHeap()
  %192 = load double*, double** %23, align 8
  %193 = call i32 @HeapFree(i32 %191, i32 0, double* %192)
  %194 = call i32 (...) @GetProcessHeap()
  %195 = load double*, double** %24, align 8
  %196 = call i32 @HeapFree(i32 %194, i32 0, double* %195)
  %197 = call i32 (...) @GetProcessHeap()
  %198 = load double*, double** %21, align 8
  %199 = call i32 @HeapFree(i32 %197, i32 0, double* %198)
  %200 = load i32, i32* @ERROR_INVALID_DATA, align 4
  store i32 %200, i32* %9, align 4
  br label %277

201:                                              ; preds = %169
  %202 = load i32, i32* %14, align 4
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %229

204:                                              ; preds = %201
  store i32 0, i32* %18, align 4
  br label %205

205:                                              ; preds = %225, %204
  %206 = load i32, i32* %18, align 4
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %15, align 4
  %210 = mul nsw i32 %208, %209
  %211 = icmp slt i32 %206, %210
  br i1 %211, label %212, label %228

212:                                              ; preds = %205
  %213 = load double*, double** %24, align 8
  %214 = load i32, i32* %18, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds double, double* %213, i64 %215
  %217 = load double, double* %216, align 8
  %218 = call i32 @lrintf(double %217)
  %219 = ashr i32 %218, 24
  %220 = sitofp i32 %219 to double
  %221 = load double*, double** %21, align 8
  %222 = load i32, i32* %18, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds double, double* %221, i64 %223
  store double %220, double* %224, align 8
  br label %225

225:                                              ; preds = %212
  %226 = load i32, i32* %18, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %18, align 4
  br label %205

228:                                              ; preds = %205
  br label %258

229:                                              ; preds = %201
  %230 = load i32, i32* %14, align 4
  %231 = icmp eq i32 %230, 2
  br i1 %231, label %232, label %243

232:                                              ; preds = %229
  %233 = load double*, double** %21, align 8
  %234 = ptrtoint double* %233 to i64
  store i64 %234, i64* %27, align 8
  %235 = load double*, double** %24, align 8
  %236 = load i64, i64* %27, align 8
  %237 = inttoptr i64 %236 to i16*
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 5
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* %15, align 4
  %241 = mul nsw i32 %239, %240
  %242 = call i32 @src_float_to_short_array(double* %235, i16* %237, i32 %241)
  br label %257

243:                                              ; preds = %229
  %244 = load i32, i32* %14, align 4
  %245 = icmp eq i32 %244, 4
  br i1 %245, label %246, label %256

246:                                              ; preds = %243
  %247 = load double*, double** %21, align 8
  %248 = bitcast double* %247 to i32*
  store i32* %248, i32** %28, align 8
  %249 = load double*, double** %24, align 8
  %250 = load i32*, i32** %28, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 5
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* %15, align 4
  %254 = mul nsw i32 %252, %253
  %255 = call i32 @src_float_to_int_array(double* %249, i32* %250, i32 %254)
  br label %256

256:                                              ; preds = %246, %243
  br label %257

257:                                              ; preds = %256, %232
  br label %258

258:                                              ; preds = %257, %228
  %259 = load double*, double** %21, align 8
  %260 = load double**, double*** %16, align 8
  store double* %259, double** %260, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 5
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* %14, align 4
  %264 = mul nsw i32 %262, %263
  %265 = load i32, i32* %15, align 4
  %266 = mul nsw i32 %264, %265
  %267 = load i32*, i32** %17, align 8
  store i32 %266, i32* %267, align 4
  %268 = call i32 (...) @GetProcessHeap()
  %269 = load double*, double** %23, align 8
  %270 = call i32 @HeapFree(i32 %268, i32 0, double* %269)
  %271 = call i32 (...) @GetProcessHeap()
  %272 = load double*, double** %24, align 8
  %273 = call i32 @HeapFree(i32 %271, i32 0, double* %272)
  %274 = load i32*, i32** %19, align 8
  %275 = call i32 @src_delete(i32* %274)
  %276 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %276, i32* %9, align 4
  br label %277

277:                                              ; preds = %258, %188, %107, %93, %78, %56
  %278 = load i32, i32* %9, align 4
  ret i32 %278
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local double* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, double*) #1

declare dso_local i32* @src_new(i32, i32, i32*) #1

declare dso_local i32 @src_short_to_float_array(i16*, double*, i32) #1

declare dso_local i32 @src_int_to_float_array(i32*, double*, i32) #1

declare dso_local i32 @src_process(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @DPRINT1(i8*, i32) #1

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
