; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_PrintPCSFloat.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_PrintPCSFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, double, double, double, double, double, i32, i32, i32 }

@Verbose = common dso_local global i32 0, align 4
@hTransXYZ = common dso_local global i64 0, align 8
@hTransLab = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"[PCS] Lab=(%.4f,%.4f,%.4f) XYZ=(%.4f,%.4f,%.4f)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @PrintPCSFloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PrintPCSFloat(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @Verbose, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %50

9:                                                ; preds = %2
  %10 = load i64, i64* @hTransXYZ, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %9
  %13 = load i64, i64* @hTransLab, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %12
  %16 = bitcast %struct.TYPE_4__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 64, i1 false)
  %17 = bitcast %struct.TYPE_4__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 64, i1 false)
  %18 = load i64, i64* @hTransXYZ, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = load i64, i64* @hTransXYZ, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @cmsDoTransform(i32 %21, i64 %22, i32* %23, %struct.TYPE_4__* %5, i32 1)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i64, i64* @hTransLab, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = load i64, i64* @hTransLab, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @cmsDoTransform(i32 %29, i64 %30, i32* %31, %struct.TYPE_4__* %6, i32 1)
  br label %33

33:                                               ; preds = %28, %25
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %35 = load double, double* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %37 = load double, double* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %39 = load double, double* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %41 = load double, double* %40, align 8
  %42 = fmul double %41, 1.000000e+02
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 4
  %44 = load double, double* %43, align 8
  %45 = fmul double %44, 1.000000e+02
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 5
  %47 = load double, double* %46, align 8
  %48 = fmul double %47, 1.000000e+02
  %49 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), double %35, double %37, double %39, double %42, double %45, double %48)
  br label %50

50:                                               ; preds = %33, %12, %9, %2
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cmsDoTransform(i32, i64, i32*, %struct.TYPE_4__*, i32) #2

declare dso_local i32 @printf(i8*, double, double, double, double, double, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
