; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscam02.c_CAT02toXYZ.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscam02.c_CAT02toXYZ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double*, double* }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ double*, double* } (double*, double*)* @CAT02toXYZ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { double*, double* } @CAT02toXYZ(double* %0, double* %1) #0 {
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = bitcast %struct.TYPE_4__* %4 to { double*, double* }*
  %6 = getelementptr inbounds { double*, double* }, { double*, double* }* %5, i32 0, i32 0
  store double* %0, double** %6, align 8
  %7 = getelementptr inbounds { double*, double* }, { double*, double* }* %5, i32 0, i32 1
  store double* %1, double** %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %9 = load double*, double** %8, align 8
  %10 = getelementptr inbounds double, double* %9, i64 0
  %11 = load double, double* %10, align 8
  %12 = fmul double %11, 0x3FF189B951C5C572
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %14 = load double*, double** %13, align 8
  %15 = getelementptr inbounds double, double* %14, i64 1
  %16 = load double, double* %15, align 8
  %17 = fmul double %16, -2.788690e-01
  %18 = fadd double %12, %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %20 = load double*, double** %19, align 8
  %21 = getelementptr inbounds double, double* %20, i64 2
  %22 = load double, double* %21, align 8
  %23 = fmul double %22, 1.827450e-01
  %24 = fadd double %18, %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %26 = load double*, double** %25, align 8
  %27 = getelementptr inbounds double, double* %26, i64 0
  store double %24, double* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %29 = load double*, double** %28, align 8
  %30 = getelementptr inbounds double, double* %29, i64 0
  %31 = load double, double* %30, align 8
  %32 = fmul double %31, 4.543690e-01
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %34 = load double*, double** %33, align 8
  %35 = getelementptr inbounds double, double* %34, i64 1
  %36 = load double, double* %35, align 8
  %37 = fmul double %36, 4.735330e-01
  %38 = fadd double %32, %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %40 = load double*, double** %39, align 8
  %41 = getelementptr inbounds double, double* %40, i64 2
  %42 = load double, double* %41, align 8
  %43 = fmul double %42, 7.209800e-02
  %44 = fadd double %38, %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %46 = load double*, double** %45, align 8
  %47 = getelementptr inbounds double, double* %46, i64 1
  store double %44, double* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %49 = load double*, double** %48, align 8
  %50 = getelementptr inbounds double, double* %49, i64 0
  %51 = load double, double* %50, align 8
  %52 = fmul double %51, 0xBF83B7D84901D191
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %54 = load double*, double** %53, align 8
  %55 = getelementptr inbounds double, double* %54, i64 1
  %56 = load double, double* %55, align 8
  %57 = fmul double %56, -5.698000e-03
  %58 = fadd double %52, %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %60 = load double*, double** %59, align 8
  %61 = getelementptr inbounds double, double* %60, i64 2
  %62 = load double, double* %61, align 8
  %63 = fmul double %62, 0x3FF03EC679CC74B8
  %64 = fadd double %58, %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %66 = load double*, double** %65, align 8
  %67 = getelementptr inbounds double, double* %66, i64 2
  store double %64, double* %67, align 8
  %68 = bitcast %struct.TYPE_4__* %3 to i8*
  %69 = bitcast %struct.TYPE_4__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 16, i1 false)
  %70 = bitcast %struct.TYPE_4__* %3 to { double*, double* }*
  %71 = load { double*, double* }, { double*, double* }* %70, align 8
  ret { double*, double* } %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
