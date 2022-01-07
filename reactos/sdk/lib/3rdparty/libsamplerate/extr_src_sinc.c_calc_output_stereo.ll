; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libsamplerate/extr_src_sinc.c_calc_output_stereo.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libsamplerate/extr_src_sinc.c_calc_output_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, double*, double*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, double, float*)* @calc_output_stereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_output_stereo(%struct.TYPE_3__* %0, i32 %1, i32 %2, double %3, float* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca float*, align 8
  %11 = alloca double, align 8
  %12 = alloca [2 x double], align 16
  %13 = alloca [2 x double], align 16
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store double %3, double* %9, align 8
  store float* %4, float** %10, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @int_to_fp(i32 %22)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %15, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %18, align 4
  %32 = load i32, i32* %7, align 4
  %33 = mul nsw i32 %31, %32
  %34 = add nsw i32 %30, %33
  store i32 %34, i32* %15, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %18, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sub nsw i32 %37, %42
  store i32 %43, i32* %17, align 4
  %44 = getelementptr inbounds [2 x double], [2 x double]* %12, i64 0, i64 1
  store double 0.000000e+00, double* %44, align 8
  %45 = getelementptr inbounds [2 x double], [2 x double]* %12, i64 0, i64 0
  store double 0.000000e+00, double* %45, align 16
  br label %46

46:                                               ; preds = %107, %5
  %47 = load i32, i32* %15, align 4
  %48 = call double @fp_to_double(i32 %47)
  store double %48, double* %11, align 8
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @fp_to_int(i32 %49)
  store i32 %50, i32* %19, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load double*, double** %52, align 8
  %54 = load i32, i32* %19, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %53, i64 %55
  %57 = load double, double* %56, align 8
  %58 = load double, double* %11, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load double*, double** %60, align 8
  %62 = load i32, i32* %19, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, double* %61, i64 %64
  %66 = load double, double* %65, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load double*, double** %68, align 8
  %70 = load i32, i32* %19, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %69, i64 %71
  %73 = load double, double* %72, align 8
  %74 = fsub double %66, %73
  %75 = fmul double %58, %74
  %76 = fadd double %57, %75
  store double %76, double* %14, align 8
  %77 = load double, double* %14, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = load double*, double** %79, align 8
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds double, double* %80, i64 %82
  %84 = load double, double* %83, align 8
  %85 = fmul double %77, %84
  %86 = getelementptr inbounds [2 x double], [2 x double]* %12, i64 0, i64 0
  %87 = load double, double* %86, align 16
  %88 = fadd double %87, %85
  store double %88, double* %86, align 16
  %89 = load double, double* %14, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load double*, double** %91, align 8
  %93 = load i32, i32* %17, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %92, i64 %95
  %97 = load double, double* %96, align 8
  %98 = fmul double %89, %97
  %99 = getelementptr inbounds [2 x double], [2 x double]* %12, i64 0, i64 1
  %100 = load double, double* %99, align 8
  %101 = fadd double %100, %98
  store double %101, double* %99, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %15, align 4
  %104 = sub nsw i32 %103, %102
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %105, 2
  store i32 %106, i32* %17, align 4
  br label %107

107:                                              ; preds = %46
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @MAKE_INCREMENT_T(i32 0)
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %46, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %8, align 4
  %114 = sub nsw i32 %112, %113
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %15, align 4
  %117 = sub nsw i32 %115, %116
  %118 = load i32, i32* %7, align 4
  %119 = sdiv i32 %117, %118
  store i32 %119, i32* %18, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* %7, align 4
  %123 = mul nsw i32 %121, %122
  %124 = add nsw i32 %120, %123
  store i32 %124, i32* %15, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %18, align 4
  %132 = add nsw i32 1, %131
  %133 = mul nsw i32 %130, %132
  %134 = add nsw i32 %127, %133
  store i32 %134, i32* %17, align 4
  %135 = getelementptr inbounds [2 x double], [2 x double]* %13, i64 0, i64 1
  store double 0.000000e+00, double* %135, align 8
  %136 = getelementptr inbounds [2 x double], [2 x double]* %13, i64 0, i64 0
  store double 0.000000e+00, double* %136, align 16
  br label %137

137:                                              ; preds = %198, %111
  %138 = load i32, i32* %15, align 4
  %139 = call double @fp_to_double(i32 %138)
  store double %139, double* %11, align 8
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @fp_to_int(i32 %140)
  store i32 %141, i32* %19, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  %144 = load double*, double** %143, align 8
  %145 = load i32, i32* %19, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds double, double* %144, i64 %146
  %148 = load double, double* %147, align 8
  %149 = load double, double* %11, align 8
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 2
  %152 = load double*, double** %151, align 8
  %153 = load i32, i32* %19, align 4
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds double, double* %152, i64 %155
  %157 = load double, double* %156, align 8
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 2
  %160 = load double*, double** %159, align 8
  %161 = load i32, i32* %19, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds double, double* %160, i64 %162
  %164 = load double, double* %163, align 8
  %165 = fsub double %157, %164
  %166 = fmul double %149, %165
  %167 = fadd double %148, %166
  store double %167, double* %14, align 8
  %168 = load double, double* %14, align 8
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 3
  %171 = load double*, double** %170, align 8
  %172 = load i32, i32* %17, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds double, double* %171, i64 %173
  %175 = load double, double* %174, align 8
  %176 = fmul double %168, %175
  %177 = getelementptr inbounds [2 x double], [2 x double]* %13, i64 0, i64 0
  %178 = load double, double* %177, align 16
  %179 = fadd double %178, %176
  store double %179, double* %177, align 16
  %180 = load double, double* %14, align 8
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 3
  %183 = load double*, double** %182, align 8
  %184 = load i32, i32* %17, align 4
  %185 = add nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds double, double* %183, i64 %186
  %188 = load double, double* %187, align 8
  %189 = fmul double %180, %188
  %190 = getelementptr inbounds [2 x double], [2 x double]* %13, i64 0, i64 1
  %191 = load double, double* %190, align 8
  %192 = fadd double %191, %189
  store double %192, double* %190, align 8
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* %15, align 4
  %195 = sub nsw i32 %194, %193
  store i32 %195, i32* %15, align 4
  %196 = load i32, i32* %17, align 4
  %197 = sub nsw i32 %196, 2
  store i32 %197, i32* %17, align 4
  br label %198

198:                                              ; preds = %137
  %199 = load i32, i32* %15, align 4
  %200 = call i32 @MAKE_INCREMENT_T(i32 0)
  %201 = icmp sgt i32 %199, %200
  br i1 %201, label %137, label %202

202:                                              ; preds = %198
  %203 = load double, double* %9, align 8
  %204 = getelementptr inbounds [2 x double], [2 x double]* %12, i64 0, i64 0
  %205 = load double, double* %204, align 16
  %206 = getelementptr inbounds [2 x double], [2 x double]* %13, i64 0, i64 0
  %207 = load double, double* %206, align 16
  %208 = fadd double %205, %207
  %209 = fmul double %203, %208
  %210 = fptrunc double %209 to float
  %211 = load float*, float** %10, align 8
  %212 = getelementptr inbounds float, float* %211, i64 0
  store float %210, float* %212, align 4
  %213 = load double, double* %9, align 8
  %214 = getelementptr inbounds [2 x double], [2 x double]* %12, i64 0, i64 1
  %215 = load double, double* %214, align 8
  %216 = getelementptr inbounds [2 x double], [2 x double]* %13, i64 0, i64 1
  %217 = load double, double* %216, align 8
  %218 = fadd double %215, %217
  %219 = fmul double %213, %218
  %220 = fptrunc double %219 to float
  %221 = load float*, float** %10, align 8
  %222 = getelementptr inbounds float, float* %221, i64 1
  store float %220, float* %222, align 4
  ret void
}

declare dso_local i32 @int_to_fp(i32) #1

declare dso_local double @fp_to_double(i32) #1

declare dso_local i32 @fp_to_int(i32) #1

declare dso_local i32 @MAKE_INCREMENT_T(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
