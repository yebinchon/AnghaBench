; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_headphone.c_ComputeChannelOperations.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_headphone.c_ComputeChannelOperations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i32, double, double, double, double)* @ComputeChannelOperations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ComputeChannelOperations(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, double %4, double %5, double %6, double %7) #0 {
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store double %4, double* %13, align 8
  store double %5, double* %14, align 8
  store double %6, double* %15, align 8
  store double %7, double* %16, align 8
  store double 3.400000e+02, double* %17, align 8
  %19 = load double, double* %15, align 8
  %20 = fsub double %19, 1.000000e-01
  %21 = load double, double* %17, align 8
  %22 = fdiv double %20, %21
  %23 = load i32, i32* %10, align 4
  %24 = uitofp i32 %23 to double
  %25 = fmul double %22, %24
  store double %25, double* %18, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %26, i32* %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load double, double* %13, align 8
  %42 = fsub double -1.000000e-01, %41
  %43 = load double, double* %13, align 8
  %44 = fsub double -1.000000e-01, %43
  %45 = fmul double %42, %44
  %46 = load double, double* %14, align 8
  %47 = fsub double 0.000000e+00, %46
  %48 = load double, double* %14, align 8
  %49 = fsub double 0.000000e+00, %48
  %50 = fmul double %47, %49
  %51 = fadd double %45, %50
  %52 = call double @sqrt(double %51) #2
  %53 = load double, double* %17, align 8
  %54 = fdiv double %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = uitofp i32 %55 to double
  %57 = fmul double %54, %56
  %58 = load double, double* %18, align 8
  %59 = fsub double %57, %58
  %60 = fptosi double %59 to i32
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  store i32 %60, i32* %67, align 8
  %68 = load double, double* %13, align 8
  %69 = fcmp olt double %68, 0.000000e+00
  br i1 %69, label %70, label %81

70:                                               ; preds = %8
  %71 = load double, double* %16, align 8
  %72 = fmul double %71, 1.100000e+00
  %73 = fdiv double %72, 2.000000e+00
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  store double %73, double* %80, align 8
  br label %106

81:                                               ; preds = %8
  %82 = load double, double* %13, align 8
  %83 = fcmp ogt double %82, 0.000000e+00
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load double, double* %16, align 8
  %86 = fmul double %85, 9.000000e-01
  %87 = fdiv double %86, 2.000000e+00
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  store double %87, double* %94, align 8
  br label %105

95:                                               ; preds = %81
  %96 = load double, double* %16, align 8
  %97 = fdiv double %96, 2.000000e+00
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  store double %97, double* %104, align 8
  br label %105

105:                                              ; preds = %95, %84
  br label %106

106:                                              ; preds = %105, %70
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = add i32 %111, 1
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i32 %107, i32* %115, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = add i32 %119, 1
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  store i32 1, i32* %123, align 4
  %124 = load double, double* %13, align 8
  %125 = fsub double 1.000000e-01, %124
  %126 = load double, double* %13, align 8
  %127 = fsub double 1.000000e-01, %126
  %128 = fmul double %125, %127
  %129 = load double, double* %14, align 8
  %130 = fsub double 0.000000e+00, %129
  %131 = load double, double* %14, align 8
  %132 = fsub double 0.000000e+00, %131
  %133 = fmul double %130, %132
  %134 = fadd double %128, %133
  %135 = call double @sqrt(double %134) #2
  %136 = load double, double* %17, align 8
  %137 = fdiv double %135, %136
  %138 = load i32, i32* %10, align 4
  %139 = uitofp i32 %138 to double
  %140 = fmul double %137, %139
  %141 = load double, double* %18, align 8
  %142 = fsub double %140, %141
  %143 = fptosi double %142 to i32
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = add i32 %147, 1
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  store i32 %143, i32* %151, align 8
  %152 = load double, double* %13, align 8
  %153 = fcmp olt double %152, 0.000000e+00
  br i1 %153, label %154, label %166

154:                                              ; preds = %106
  %155 = load double, double* %16, align 8
  %156 = fmul double %155, 9.000000e-01
  %157 = fdiv double %156, 2.000000e+00
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = add i32 %161, 1
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 3
  store double %157, double* %165, align 8
  br label %193

166:                                              ; preds = %106
  %167 = load double, double* %13, align 8
  %168 = fcmp ogt double %167, 0.000000e+00
  br i1 %168, label %169, label %181

169:                                              ; preds = %166
  %170 = load double, double* %16, align 8
  %171 = fmul double %170, 1.100000e+00
  %172 = fdiv double %171, 2.000000e+00
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = load i32, i32* %11, align 4
  %177 = add i32 %176, 1
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 3
  store double %172, double* %180, align 8
  br label %192

181:                                              ; preds = %166
  %182 = load double, double* %16, align 8
  %183 = fdiv double %182, 2.000000e+00
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = load i32, i32* %11, align 4
  %188 = add i32 %187, 1
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 3
  store double %183, double* %191, align 8
  br label %192

192:                                              ; preds = %181, %169
  br label %193

193:                                              ; preds = %192, %154
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
