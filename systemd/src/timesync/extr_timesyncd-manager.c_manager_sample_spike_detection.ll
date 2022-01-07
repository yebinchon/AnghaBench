; ModuleID = '/home/carl/AnghaBench/systemd/src/timesync/extr_timesyncd-manager.c_manager_sample_spike_detection.c'
source_filename = "/home/carl/AnghaBench/systemd/src/timesync/extr_timesyncd-manager.c_manager_sample_spike_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, double, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { double, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, double, double)* @manager_sample_spike_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_sample_spike_detection(%struct.TYPE_5__* %0, double %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = call i32 @assert(%struct.TYPE_5__* %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %194

25:                                               ; preds = %3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = add i32 %29, 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = call i32 @ELEMENTSOF(%struct.TYPE_6__* %33)
  %35 = urem i32 %30, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load double, double* %6, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store double %39, double* %46, align 8
  %47 = load double, double* %7, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store double %47, double* %54, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load double, double* %56, align 8
  store double %57, double* %12, align 8
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %97, %25
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = call i32 @ELEMENTSOF(%struct.TYPE_6__* %63)
  %65 = icmp ult i32 %60, %64
  br i1 %65, label %66, label %100

66:                                               ; preds = %59
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load double, double* %73, align 8
  %75 = fcmp ogt double %74, 0.000000e+00
  br i1 %75, label %76, label %96

76:                                               ; preds = %66
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load double, double* %83, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load double, double* %91, align 8
  %93 = fcmp olt double %84, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %76
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %94, %76, %66
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %8, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %59

100:                                              ; preds = %59
  store double 0.000000e+00, double* %13, align 8
  store i32 0, i32* %8, align 4
  br label %101

101:                                              ; preds = %130, %100
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = call i32 @ELEMENTSOF(%struct.TYPE_6__* %105)
  %107 = icmp ult i32 %102, %106
  br i1 %107, label %108, label %133

108:                                              ; preds = %101
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load double, double* %115, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load double, double* %123, align 8
  %125 = fsub double %116, %124
  %126 = call i64 @pow(double %125, i32 2)
  %127 = sitofp i64 %126 to double
  %128 = load double, double* %13, align 8
  %129 = fadd double %128, %127
  store double %129, double* %13, align 8
  br label %130

130:                                              ; preds = %108
  %131 = load i32, i32* %8, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %101

133:                                              ; preds = %101
  %134 = load double, double* %13, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = call i32 @ELEMENTSOF(%struct.TYPE_6__* %137)
  %139 = sub nsw i32 %138, 1
  %140 = sitofp i32 %139 to double
  %141 = fdiv double %134, %140
  %142 = call double @sqrt(double %141) #3
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 2
  store double %142, double* %144, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %133
  store i32 0, i32* %4, align 4
  br label %194

150:                                              ; preds = %133
  %151 = load double, double* %6, align 8
  %152 = call i32 @fabs(double %151)
  %153 = sitofp i32 %152 to double
  %154 = load double, double* %7, align 8
  %155 = fcmp ogt double %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  store i32 0, i32* %4, align 4
  br label %194

157:                                              ; preds = %150
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp slt i32 %160, 4
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  store i32 0, i32* %4, align 4
  br label %194

163:                                              ; preds = %157
  %164 = load double, double* %6, align 8
  %165 = call i32 @fabs(double %164)
  %166 = sitofp i32 %165 to double
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 3
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load double, double* %173, align 8
  %175 = fcmp ogt double %166, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %163
  store i32 1, i32* %4, align 4
  br label %194

177:                                              ; preds = %163
  %178 = load double, double* %6, align 8
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 3
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load double, double* %185, align 8
  %187 = fsub double %178, %186
  %188 = call i32 @fabs(double %187)
  %189 = sitofp i32 %188 to double
  %190 = load double, double* %12, align 8
  %191 = fmul double 3.000000e+00, %190
  %192 = fcmp ogt double %189, %191
  %193 = zext i1 %192 to i32
  store i32 %193, i32* %4, align 4
  br label %194

194:                                              ; preds = %177, %176, %162, %156, %149, %24
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @ELEMENTSOF(%struct.TYPE_6__*) #1

declare dso_local i64 @pow(double, i32) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

declare dso_local i32 @fabs(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
