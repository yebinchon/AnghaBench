; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscam02.c_InverseCorrelates.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscam02.c_InverseCorrelates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { double, double, double, double, double, double, double* }
%struct.TYPE_8__ = type { double, double, double, double, double, double, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_8__*)* @InverseCorrelates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InverseCorrelates(%struct.TYPE_9__* noalias sret %0, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %4, align 8
  store double 0x3F91DF46A25CA311, double* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %15 = load double, double* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %17 = load double, double* %16, align 8
  %18 = fdiv double %17, 1.000000e+02
  %19 = call double @pow(double %18, double 5.000000e-01) #4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load double, double* %21, align 8
  %23 = call double @pow(double 2.900000e-01, double %22) #4
  %24 = fsub double 1.640000e+00, %23
  %25 = call double @pow(double %24, double 7.300000e-01) #4
  %26 = fmul double %19, %25
  %27 = fdiv double %15, %26
  %28 = call double @pow(double %27, double 0x3FF1C71C71C71C72) #4
  store double %28, double* %5, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load double, double* %30, align 8
  %32 = fmul double 0x408E0C4EC4EC4EC5, %31
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load double, double* %34, align 8
  %36 = fmul double %32, %35
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 2
  %38 = load double, double* %37, align 8
  %39 = load double, double* %13, align 8
  %40 = fmul double %38, %39
  %41 = fadd double %40, 2.000000e+00
  %42 = call double @cos(double %41) #4
  %43 = fadd double %42, 3.800000e+00
  %44 = fmul double %36, %43
  store double %44, double* %6, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load double, double* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %50 = load double, double* %49, align 8
  %51 = fdiv double %50, 1.000000e+02
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  %54 = load double, double* %53, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  %57 = load double, double* %56, align 8
  %58 = fmul double %54, %57
  %59 = fdiv double 1.000000e+00, %58
  %60 = call double @pow(double %51, double %59) #4
  %61 = fmul double %48, %60
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 3
  store double %61, double* %62, align 8
  %63 = load double, double* %6, align 8
  %64 = load double, double* %5, align 8
  %65 = fdiv double %63, %64
  store double %65, double* %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 3
  %67 = load double, double* %66, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 5
  %70 = load double, double* %69, align 8
  %71 = fdiv double %67, %70
  %72 = fadd double %71, 3.050000e-01
  store double %72, double* %8, align 8
  store double 1.050000e+00, double* %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 2
  %74 = load double, double* %73, align 8
  %75 = load double, double* %13, align 8
  %76 = fmul double %74, %75
  store double %76, double* %12, align 8
  %77 = load double, double* %12, align 8
  %78 = call double @sin(double %77) #4
  %79 = call i64 @fabs(double %78)
  %80 = load double, double* %12, align 8
  %81 = call double @cos(double %80) #4
  %82 = call i64 @fabs(double %81)
  %83 = icmp sge i64 %79, %82
  br i1 %83, label %84, label %120

84:                                               ; preds = %3
  %85 = load double, double* %7, align 8
  %86 = load double, double* %12, align 8
  %87 = call double @sin(double %86) #4
  %88 = fdiv double %85, %87
  store double %88, double* %10, align 8
  %89 = load double, double* %8, align 8
  %90 = load double, double* %9, align 8
  %91 = fadd double 2.000000e+00, %90
  %92 = fmul double %89, %91
  %93 = fmul double %92, 0x3FD4FBCDA3AC10C9
  %94 = load double, double* %10, align 8
  %95 = load double, double* %9, align 8
  %96 = fadd double 2.000000e+00, %95
  %97 = fmul double %96, 0x3FC4123F221F04ED
  %98 = load double, double* %12, align 8
  %99 = call double @cos(double %98) #4
  %100 = load double, double* %12, align 8
  %101 = call double @sin(double %100) #4
  %102 = fdiv double %99, %101
  %103 = fmul double %97, %102
  %104 = fadd double %94, %103
  %105 = fsub double %104, 0x3F93B4D2EE4D002F
  %106 = load double, double* %9, align 8
  %107 = fmul double %106, 0x4011F6259688D980
  %108 = fadd double %105, %107
  %109 = fdiv double %93, %108
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 4
  store double %109, double* %110, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 4
  %112 = load double, double* %111, align 8
  %113 = load double, double* %12, align 8
  %114 = call double @cos(double %113) #4
  %115 = load double, double* %12, align 8
  %116 = call double @sin(double %115) #4
  %117 = fdiv double %114, %116
  %118 = fmul double %112, %117
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 5
  store double %118, double* %119, align 8
  br label %156

120:                                              ; preds = %3
  %121 = load double, double* %7, align 8
  %122 = load double, double* %12, align 8
  %123 = call double @cos(double %122) #4
  %124 = fdiv double %121, %123
  store double %124, double* %11, align 8
  %125 = load double, double* %8, align 8
  %126 = load double, double* %9, align 8
  %127 = fadd double 2.000000e+00, %126
  %128 = fmul double %125, %127
  %129 = fmul double %128, 0x3FD4FBCDA3AC10C9
  %130 = load double, double* %11, align 8
  %131 = load double, double* %9, align 8
  %132 = fadd double 2.000000e+00, %131
  %133 = fmul double %132, 0x3FC4123F221F04ED
  %134 = fadd double %130, %133
  %135 = load double, double* %9, align 8
  %136 = fmul double %135, 0x4011F6259688D980
  %137 = fsub double 0x3F93B4D2EE4D002F, %136
  %138 = load double, double* %12, align 8
  %139 = call double @sin(double %138) #4
  %140 = load double, double* %12, align 8
  %141 = call double @cos(double %140) #4
  %142 = fdiv double %139, %141
  %143 = fmul double %137, %142
  %144 = fsub double %134, %143
  %145 = fdiv double %129, %144
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 5
  store double %145, double* %146, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 5
  %148 = load double, double* %147, align 8
  %149 = load double, double* %12, align 8
  %150 = call double @sin(double %149) #4
  %151 = load double, double* %12, align 8
  %152 = call double @cos(double %151) #4
  %153 = fdiv double %150, %152
  %154 = fmul double %148, %153
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 4
  store double %154, double* %155, align 8
  br label %156

156:                                              ; preds = %120, %84
  %157 = load double, double* %8, align 8
  %158 = fmul double 0x3FD4FBCDA3AC10C9, %157
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 5
  %160 = load double, double* %159, align 8
  %161 = fmul double 0x3FD492B3E95FCB73, %160
  %162 = fadd double %158, %161
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 4
  %164 = load double, double* %163, align 8
  %165 = fmul double 0x3FCA466E93115594, %164
  %166 = fadd double %162, %165
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 6
  %168 = load double*, double** %167, align 8
  %169 = getelementptr inbounds double, double* %168, i64 0
  store double %166, double* %169, align 8
  %170 = load double, double* %8, align 8
  %171 = fmul double 0x3FD4FBCDA3AC10C9, %170
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 5
  %173 = load double, double* %172, align 8
  %174 = fmul double 0x3FE4527985BF6830, %173
  %175 = fsub double %171, %174
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 4
  %177 = load double, double* %176, align 8
  %178 = fmul double 0x3FC7CFD43547B58E, %177
  %179 = fsub double %175, %178
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 6
  %181 = load double*, double** %180, align 8
  %182 = getelementptr inbounds double, double* %181, i64 1
  store double %179, double* %182, align 8
  %183 = load double, double* %8, align 8
  %184 = fmul double 0x3FD4FBCDA3AC10C9, %183
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 5
  %186 = load double, double* %185, align 8
  %187 = fmul double 0x3FC4123F221F04ED, %186
  %188 = fsub double %184, %187
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 4
  %190 = load double, double* %189, align 8
  %191 = fmul double 0x4011F6259688D980, %190
  %192 = fsub double %188, %191
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 6
  %194 = load double*, double** %193, align 8
  %195 = getelementptr inbounds double, double* %194, i64 2
  store double %192, double* %195, align 8
  %196 = bitcast %struct.TYPE_9__* %0 to i8*
  %197 = bitcast %struct.TYPE_9__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %196, i8* align 8 %197, i64 56, i1 false)
  ret void
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #1

declare dso_local i64 @fabs(double) #2

; Function Attrs: nounwind
declare dso_local double @sin(double) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
