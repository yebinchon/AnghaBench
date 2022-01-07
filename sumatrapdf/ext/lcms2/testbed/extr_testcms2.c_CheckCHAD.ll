; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckCHAD.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckCHAD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.CheckCHAD.CHAD = private unnamed_addr constant [9 x double] [double 0.000000e+00, double 1.000000e-01, double 2.000000e-01, double 3.000000e-01, double 4.000000e-01, double 5.000000e-01, double 6.000000e-01, double 0x3FE6666666666666, double 8.000000e-01], align 16
@.str = private unnamed_addr constant [5 x i8] c"CHAD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @CheckCHAD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckCHAD(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca [9 x double], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = bitcast [9 x double]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([9 x double]* @__const.CheckCHAD.CHAD to i8*), i64 72, i1 false)
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %50 [
    i32 1, label %13
    i32 2, label %19
  ]

13:                                               ; preds = %3
  %14 = call i32 (...) @DbgThread()
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = getelementptr inbounds [9 x double], [9 x double]* %9, i64 0, i64 0
  %18 = call i32 @cmsWriteTag(i32 %14, i32 %15, i32 %16, double* %17)
  store i32 %18, i32* %4, align 4
  br label %51

19:                                               ; preds = %3
  %20 = call i32 (...) @DbgThread()
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @cmsReadTag(i32 %20, i32 %21, i32 %22)
  %24 = inttoptr i64 %23 to double*
  store double* %24, double** %8, align 8
  %25 = load double*, double** %8, align 8
  %26 = icmp eq double* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %51

28:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %46, %28
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 9
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = load double*, double** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %33, i64 %35
  %37 = load double, double* %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [9 x double], [9 x double]* %9, i64 0, i64 %39
  %41 = load double, double* %40, align 8
  %42 = call i32 @IsGoodFixed15_16(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), double %37, double %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %51

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %29

49:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %51

50:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %49, %44, %27, %13
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cmsWriteTag(i32, i32, i32, double*) #2

declare dso_local i32 @DbgThread(...) #2

declare dso_local i64 @cmsReadTag(i32, i32, i32) #2

declare dso_local i32 @IsGoodFixed15_16(i8*, double, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
