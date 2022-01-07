; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_ds3d.c_wave_generate_la.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_ds3d.c_wave_generate_la.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, i32, i32, i32 }

@PI = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wave_generate_la(%struct.TYPE_3__* %0, double %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca double, align 8
  %14 = alloca i8, align 1
  %15 = alloca i16, align 2
  %16 = alloca i32, align 4
  %17 = alloca float*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store double %1, double* %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %19 = load double, double* %6, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load double, double* %21, align 8
  %23 = fmul double %19, %22
  %24 = fptosi double %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %25, %28
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  %31 = call i32 (...) @GetProcessHeap()
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @HeapAlloc(i32 %31, i32 0, i32 %33)
  store i8* %34, i8** %11, align 8
  store i8* %34, i8** %12, align 8
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %260, %4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %263

39:                                               ; preds = %35
  %40 = load double, double* @PI, align 8
  %41 = fmul double 8.800000e+02, %40
  %42 = load i32, i32* %9, align 4
  %43 = sitofp i32 %42 to double
  %44 = fmul double %41, %43
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load double, double* %46, align 8
  %48 = fdiv double %44, %47
  %49 = call double @sin(double %48) #3
  store double %49, double* %13, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 8
  br i1 %53, label %54, label %71

54:                                               ; preds = %39
  %55 = load double, double* %13, align 8
  %56 = fadd double %55, 1.000000e+00
  %57 = fmul double 1.275000e+02, %56
  %58 = fptoui double %57 to i8
  store i8 %58, i8* %14, align 1
  %59 = load i8, i8* %14, align 1
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %12, align 8
  store i8 %59, i8* %60, align 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %70

66:                                               ; preds = %54
  %67 = load i8, i8* %14, align 1
  %68 = load i8*, i8** %12, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %12, align 8
  store i8 %67, i8* %68, align 1
  br label %70

70:                                               ; preds = %66, %54
  br label %259

71:                                               ; preds = %39
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 16
  br i1 %75, label %76, label %115

76:                                               ; preds = %71
  %77 = load double, double* %13, align 8
  %78 = fmul double 3.276750e+04, %77
  %79 = fsub double %78, 5.000000e-01
  %80 = fptosi double %79 to i16
  store i16 %80, i16* %15, align 2
  %81 = load i16, i16* %15, align 2
  %82 = sext i16 %81 to i32
  %83 = and i32 %82, 255
  %84 = trunc i32 %83 to i8
  %85 = load i8*, i8** %12, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  store i8 %84, i8* %86, align 1
  %87 = load i16, i16* %15, align 2
  %88 = sext i16 %87 to i32
  %89 = ashr i32 %88, 8
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %12, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  store i8 %90, i8* %92, align 1
  %93 = load i8*, i8** %12, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  store i8* %94, i8** %12, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %114

99:                                               ; preds = %76
  %100 = load i16, i16* %15, align 2
  %101 = sext i16 %100 to i32
  %102 = and i32 %101, 255
  %103 = trunc i32 %102 to i8
  %104 = load i8*, i8** %12, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  store i8 %103, i8* %105, align 1
  %106 = load i16, i16* %15, align 2
  %107 = sext i16 %106 to i32
  %108 = ashr i32 %107, 8
  %109 = trunc i32 %108 to i8
  %110 = load i8*, i8** %12, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  store i8 %109, i8* %111, align 1
  %112 = load i8*, i8** %12, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 2
  store i8* %113, i8** %12, align 8
  br label %114

114:                                              ; preds = %99, %76
  br label %258

115:                                              ; preds = %71
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 24
  br i1 %119, label %120, label %167

120:                                              ; preds = %115
  %121 = load double, double* %13, align 8
  %122 = fmul double 0x415FFFFFE0000000, %121
  %123 = fsub double %122, 5.000000e-01
  %124 = fptosi double %123 to i32
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %16, align 4
  %126 = and i32 %125, 255
  %127 = trunc i32 %126 to i8
  %128 = load i8*, i8** %12, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  store i8 %127, i8* %129, align 1
  %130 = load i32, i32* %16, align 4
  %131 = ashr i32 %130, 8
  %132 = and i32 %131, 255
  %133 = trunc i32 %132 to i8
  %134 = load i8*, i8** %12, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  store i8 %133, i8* %135, align 1
  %136 = load i32, i32* %16, align 4
  %137 = ashr i32 %136, 16
  %138 = trunc i32 %137 to i8
  %139 = load i8*, i8** %12, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 2
  store i8 %138, i8* %140, align 1
  %141 = load i8*, i8** %12, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 3
  store i8* %142, i8** %12, align 8
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %147, label %166

147:                                              ; preds = %120
  %148 = load i32, i32* %16, align 4
  %149 = and i32 %148, 255
  %150 = trunc i32 %149 to i8
  %151 = load i8*, i8** %12, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 0
  store i8 %150, i8* %152, align 1
  %153 = load i32, i32* %16, align 4
  %154 = ashr i32 %153, 8
  %155 = and i32 %154, 255
  %156 = trunc i32 %155 to i8
  %157 = load i8*, i8** %12, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  store i8 %156, i8* %158, align 1
  %159 = load i32, i32* %16, align 4
  %160 = ashr i32 %159, 16
  %161 = trunc i32 %160 to i8
  %162 = load i8*, i8** %12, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 2
  store i8 %161, i8* %163, align 1
  %164 = load i8*, i8** %12, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 3
  store i8* %165, i8** %12, align 8
  br label %166

166:                                              ; preds = %147, %120
  br label %257

167:                                              ; preds = %115
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %170, 32
  br i1 %171, label %172, label %256

172:                                              ; preds = %167
  %173 = load i64, i64* %8, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %196

175:                                              ; preds = %172
  %176 = load i8*, i8** %12, align 8
  %177 = bitcast i8* %176 to float*
  store float* %177, float** %17, align 8
  %178 = load double, double* %13, align 8
  %179 = fptrunc double %178 to float
  %180 = load float*, float** %17, align 8
  store float %179, float* %180, align 4
  %181 = load float*, float** %17, align 8
  %182 = getelementptr inbounds float, float* %181, i32 1
  store float* %182, float** %17, align 8
  %183 = load i8*, i8** %12, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 4
  store i8* %184, i8** %12, align 8
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, 2
  br i1 %188, label %189, label %195

189:                                              ; preds = %175
  %190 = load double, double* %13, align 8
  %191 = fptrunc double %190 to float
  %192 = load float*, float** %17, align 8
  store float %191, float* %192, align 4
  %193 = load i8*, i8** %12, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 4
  store i8* %194, i8** %12, align 8
  br label %195

195:                                              ; preds = %189, %175
  br label %255

196:                                              ; preds = %172
  %197 = load double, double* %13, align 8
  %198 = fmul double 0x41DFFFFFFFE00000, %197
  %199 = fsub double %198, 5.000000e-01
  %200 = fptosi double %199 to i32
  store i32 %200, i32* %18, align 4
  %201 = load i32, i32* %18, align 4
  %202 = and i32 %201, 255
  %203 = trunc i32 %202 to i8
  %204 = load i8*, i8** %12, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 0
  store i8 %203, i8* %205, align 1
  %206 = load i32, i32* %18, align 4
  %207 = ashr i32 %206, 8
  %208 = and i32 %207, 255
  %209 = trunc i32 %208 to i8
  %210 = load i8*, i8** %12, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 1
  store i8 %209, i8* %211, align 1
  %212 = load i32, i32* %18, align 4
  %213 = ashr i32 %212, 16
  %214 = and i32 %213, 255
  %215 = trunc i32 %214 to i8
  %216 = load i8*, i8** %12, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 2
  store i8 %215, i8* %217, align 1
  %218 = load i32, i32* %18, align 4
  %219 = ashr i32 %218, 24
  %220 = trunc i32 %219 to i8
  %221 = load i8*, i8** %12, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 3
  store i8 %220, i8* %222, align 1
  %223 = load i8*, i8** %12, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 4
  store i8* %224, i8** %12, align 8
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = icmp eq i32 %227, 2
  br i1 %228, label %229, label %254

229:                                              ; preds = %196
  %230 = load i32, i32* %18, align 4
  %231 = and i32 %230, 255
  %232 = trunc i32 %231 to i8
  %233 = load i8*, i8** %12, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 0
  store i8 %232, i8* %234, align 1
  %235 = load i32, i32* %18, align 4
  %236 = ashr i32 %235, 8
  %237 = and i32 %236, 255
  %238 = trunc i32 %237 to i8
  %239 = load i8*, i8** %12, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 1
  store i8 %238, i8* %240, align 1
  %241 = load i32, i32* %18, align 4
  %242 = ashr i32 %241, 16
  %243 = and i32 %242, 255
  %244 = trunc i32 %243 to i8
  %245 = load i8*, i8** %12, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 2
  store i8 %244, i8* %246, align 1
  %247 = load i32, i32* %18, align 4
  %248 = ashr i32 %247, 24
  %249 = trunc i32 %248 to i8
  %250 = load i8*, i8** %12, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 3
  store i8 %249, i8* %251, align 1
  %252 = load i8*, i8** %12, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 4
  store i8* %253, i8** %12, align 8
  br label %254

254:                                              ; preds = %229, %196
  br label %255

255:                                              ; preds = %254, %195
  br label %256

256:                                              ; preds = %255, %167
  br label %257

257:                                              ; preds = %256, %166
  br label %258

258:                                              ; preds = %257, %114
  br label %259

259:                                              ; preds = %258, %70
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %9, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %9, align 4
  br label %35

263:                                              ; preds = %35
  %264 = load i8*, i8** %11, align 8
  ret i8* %264
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
