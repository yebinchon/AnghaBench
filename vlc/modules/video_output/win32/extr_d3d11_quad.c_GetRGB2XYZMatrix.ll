; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_quad.c_GetRGB2XYZMatrix.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_quad.c_GetRGB2XYZMatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cie1931_primaries = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { double, double }
%struct.TYPE_7__ = type { double, double }
%struct.TYPE_6__ = type { double, double }
%struct.TYPE_5__ = type { double, double }

@BLUE = common dso_local global i64 0, align 8
@GREEN = common dso_local global i64 0, align 8
@RED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cie1931_primaries*, double*)* @GetRGB2XYZMatrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetRGB2XYZMatrix(%struct.cie1931_primaries* %0, double* %1) #0 {
  %3 = alloca %struct.cie1931_primaries*, align 8
  %4 = alloca double*, align 8
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  %8 = alloca [3 x double], align 16
  %9 = alloca [3 x double], align 16
  %10 = alloca [9 x double], align 16
  store %struct.cie1931_primaries* %0, %struct.cie1931_primaries** %3, align 8
  store double* %1, double** %4, align 8
  %11 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** %3, align 8
  %12 = getelementptr inbounds %struct.cie1931_primaries, %struct.cie1931_primaries* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** %3, align 8
  %16 = getelementptr inbounds %struct.cie1931_primaries, %struct.cie1931_primaries* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load double, double* %17, align 8
  %19 = fdiv double %14, %18
  %20 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0
  store double %19, double* %20, align 16
  %21 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 1
  store double 1.000000e+00, double* %21, align 8
  %22 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** %3, align 8
  %23 = getelementptr inbounds %struct.cie1931_primaries, %struct.cie1931_primaries* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load double, double* %24, align 8
  %26 = fsub double 1.000000e+00, %25
  %27 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** %3, align 8
  %28 = getelementptr inbounds %struct.cie1931_primaries, %struct.cie1931_primaries* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load double, double* %29, align 8
  %31 = fsub double %26, %30
  %32 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** %3, align 8
  %33 = getelementptr inbounds %struct.cie1931_primaries, %struct.cie1931_primaries* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load double, double* %34, align 8
  %36 = fdiv double %31, %35
  %37 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 2
  store double %36, double* %37, align 16
  %38 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** %3, align 8
  %39 = getelementptr inbounds %struct.cie1931_primaries, %struct.cie1931_primaries* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** %3, align 8
  %43 = getelementptr inbounds %struct.cie1931_primaries, %struct.cie1931_primaries* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load double, double* %44, align 8
  %46 = fdiv double %41, %45
  %47 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  store double %46, double* %47, align 16
  %48 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 1
  store double 1.000000e+00, double* %48, align 8
  %49 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** %3, align 8
  %50 = getelementptr inbounds %struct.cie1931_primaries, %struct.cie1931_primaries* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load double, double* %51, align 8
  %53 = fsub double 1.000000e+00, %52
  %54 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** %3, align 8
  %55 = getelementptr inbounds %struct.cie1931_primaries, %struct.cie1931_primaries* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load double, double* %56, align 8
  %58 = fsub double %53, %57
  %59 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** %3, align 8
  %60 = getelementptr inbounds %struct.cie1931_primaries, %struct.cie1931_primaries* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load double, double* %61, align 8
  %63 = fdiv double %58, %62
  %64 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 2
  store double %63, double* %64, align 16
  %65 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** %3, align 8
  %66 = getelementptr inbounds %struct.cie1931_primaries, %struct.cie1931_primaries* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load double, double* %67, align 8
  %69 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** %3, align 8
  %70 = getelementptr inbounds %struct.cie1931_primaries, %struct.cie1931_primaries* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load double, double* %71, align 8
  %73 = fdiv double %68, %72
  %74 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0
  store double %73, double* %74, align 16
  %75 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 1
  store double 1.000000e+00, double* %75, align 8
  %76 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** %3, align 8
  %77 = getelementptr inbounds %struct.cie1931_primaries, %struct.cie1931_primaries* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load double, double* %78, align 8
  %80 = fsub double 1.000000e+00, %79
  %81 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** %3, align 8
  %82 = getelementptr inbounds %struct.cie1931_primaries, %struct.cie1931_primaries* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load double, double* %83, align 8
  %85 = fsub double %80, %84
  %86 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** %3, align 8
  %87 = getelementptr inbounds %struct.cie1931_primaries, %struct.cie1931_primaries* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load double, double* %88, align 8
  %90 = fdiv double %85, %89
  %91 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 2
  store double %90, double* %91, align 16
  %92 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0
  %93 = load double, double* %92, align 16
  %94 = getelementptr inbounds [9 x double], [9 x double]* %10, i64 0, i64 0
  store double %93, double* %94, align 16
  %95 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 1
  %96 = load double, double* %95, align 8
  %97 = getelementptr inbounds [9 x double], [9 x double]* %10, i64 0, i64 1
  store double %96, double* %97, align 8
  %98 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 2
  %99 = load double, double* %98, align 16
  %100 = getelementptr inbounds [9 x double], [9 x double]* %10, i64 0, i64 2
  store double %99, double* %100, align 16
  %101 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  %102 = load double, double* %101, align 16
  %103 = getelementptr inbounds [9 x double], [9 x double]* %10, i64 0, i64 3
  store double %102, double* %103, align 8
  %104 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 1
  %105 = load double, double* %104, align 8
  %106 = getelementptr inbounds [9 x double], [9 x double]* %10, i64 0, i64 4
  store double %105, double* %106, align 16
  %107 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 2
  %108 = load double, double* %107, align 16
  %109 = getelementptr inbounds [9 x double], [9 x double]* %10, i64 0, i64 5
  store double %108, double* %109, align 8
  %110 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0
  %111 = load double, double* %110, align 16
  %112 = getelementptr inbounds [9 x double], [9 x double]* %10, i64 0, i64 6
  store double %111, double* %112, align 16
  %113 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 1
  %114 = load double, double* %113, align 8
  %115 = getelementptr inbounds [9 x double], [9 x double]* %10, i64 0, i64 7
  store double %114, double* %115, align 8
  %116 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 2
  %117 = load double, double* %116, align 16
  %118 = getelementptr inbounds [9 x double], [9 x double]* %10, i64 0, i64 8
  store double %117, double* %118, align 16
  %119 = getelementptr inbounds [9 x double], [9 x double]* %10, i64 0, i64 0
  %120 = call i32 @Float3x3Inverse(double* %119)
  %121 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** %3, align 8
  %122 = getelementptr inbounds %struct.cie1931_primaries, %struct.cie1931_primaries* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load double, double* %123, align 8
  %125 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** %3, align 8
  %126 = getelementptr inbounds %struct.cie1931_primaries, %struct.cie1931_primaries* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load double, double* %127, align 8
  %129 = fdiv double %124, %128
  %130 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 0
  store double %129, double* %130, align 16
  %131 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 1
  store double 1.000000e+00, double* %131, align 8
  %132 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** %3, align 8
  %133 = getelementptr inbounds %struct.cie1931_primaries, %struct.cie1931_primaries* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load double, double* %134, align 8
  %136 = fsub double 1.000000e+00, %135
  %137 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** %3, align 8
  %138 = getelementptr inbounds %struct.cie1931_primaries, %struct.cie1931_primaries* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load double, double* %139, align 8
  %141 = fsub double %136, %140
  %142 = load %struct.cie1931_primaries*, %struct.cie1931_primaries** %3, align 8
  %143 = getelementptr inbounds %struct.cie1931_primaries, %struct.cie1931_primaries* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load double, double* %144, align 8
  %146 = fdiv double %141, %145
  %147 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 2
  store double %146, double* %147, align 16
  %148 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 0
  %149 = getelementptr inbounds [9 x double], [9 x double]* %10, i64 0, i64 0
  %150 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  %151 = call i32 @Float3Multiply(double* %148, double* %149, double* %150)
  %152 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  %153 = load double, double* %152, align 16
  %154 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0
  %155 = load double, double* %154, align 16
  %156 = fmul double %153, %155
  %157 = load double*, double** %4, align 8
  %158 = getelementptr inbounds double, double* %157, i64 0
  store double %156, double* %158, align 8
  %159 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1
  %160 = load double, double* %159, align 8
  %161 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  %162 = load double, double* %161, align 16
  %163 = fmul double %160, %162
  %164 = load double*, double** %4, align 8
  %165 = getelementptr inbounds double, double* %164, i64 1
  store double %163, double* %165, align 8
  %166 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 2
  %167 = load double, double* %166, align 16
  %168 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0
  %169 = load double, double* %168, align 16
  %170 = fmul double %167, %169
  %171 = load double*, double** %4, align 8
  %172 = getelementptr inbounds double, double* %171, i64 2
  store double %170, double* %172, align 8
  %173 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  %174 = load double, double* %173, align 16
  %175 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 1
  %176 = load double, double* %175, align 8
  %177 = fmul double %174, %176
  %178 = load double*, double** %4, align 8
  %179 = getelementptr inbounds double, double* %178, i64 3
  store double %177, double* %179, align 8
  %180 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1
  %181 = load double, double* %180, align 8
  %182 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 1
  %183 = load double, double* %182, align 8
  %184 = fmul double %181, %183
  %185 = load double*, double** %4, align 8
  %186 = getelementptr inbounds double, double* %185, i64 4
  store double %184, double* %186, align 8
  %187 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 2
  %188 = load double, double* %187, align 16
  %189 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 1
  %190 = load double, double* %189, align 8
  %191 = fmul double %188, %190
  %192 = load double*, double** %4, align 8
  %193 = getelementptr inbounds double, double* %192, i64 5
  store double %191, double* %193, align 8
  %194 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  %195 = load double, double* %194, align 16
  %196 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 2
  %197 = load double, double* %196, align 16
  %198 = fmul double %195, %197
  %199 = load double*, double** %4, align 8
  %200 = getelementptr inbounds double, double* %199, i64 6
  store double %198, double* %200, align 8
  %201 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1
  %202 = load double, double* %201, align 8
  %203 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 2
  %204 = load double, double* %203, align 16
  %205 = fmul double %202, %204
  %206 = load double*, double** %4, align 8
  %207 = getelementptr inbounds double, double* %206, i64 7
  store double %205, double* %207, align 8
  %208 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 2
  %209 = load double, double* %208, align 16
  %210 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 2
  %211 = load double, double* %210, align 16
  %212 = fmul double %209, %211
  %213 = load double*, double** %4, align 8
  %214 = getelementptr inbounds double, double* %213, i64 8
  store double %212, double* %214, align 8
  ret void
}

declare dso_local i32 @Float3x3Inverse(double*) #1

declare dso_local i32 @Float3Multiply(double*, double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
