; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_atof.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_atof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"0.0\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"d = %lf\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"-1.0\00", align 1
@EBADF = common dso_local global double 0.000000e+00, align 8
@errno = common dso_local global double 0.000000e+00, align 8
@EINVAL = common dso_local global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"errno = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_atof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_atof() #0 {
  %1 = alloca double, align 8
  %2 = call double @atof(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store double %2, double* %1, align 8
  %3 = load double, double* %1, align 8
  %4 = call i32 @almost_equal(double %3, double 0.000000e+00)
  %5 = load double, double* %1, align 8
  %6 = call i32 @ok(i32 %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), double %5)
  %7 = call double @atof(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store double %7, double* %1, align 8
  %8 = load double, double* %1, align 8
  %9 = call i32 @almost_equal(double %8, double 1.000000e+00)
  %10 = load double, double* %1, align 8
  %11 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), double %10)
  %12 = call double @atof(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store double %12, double* %1, align 8
  %13 = load double, double* %1, align 8
  %14 = call i32 @almost_equal(double %13, double -1.000000e+00)
  %15 = load double, double* %1, align 8
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), double %15)
  %17 = load double, double* @EBADF, align 8
  store double %17, double* @errno, align 8
  %18 = call double @atof(i8* null)
  store double %18, double* %1, align 8
  %19 = load double, double* %1, align 8
  %20 = call i32 @almost_equal(double %19, double 0.000000e+00)
  %21 = load double, double* %1, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), double %21)
  %23 = load double, double* @errno, align 8
  %24 = load double, double* @EINVAL, align 8
  %25 = fcmp oeq double %23, %24
  %26 = zext i1 %25 to i32
  %27 = load double, double* @errno, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), double %27)
  %29 = load double, double* @EBADF, align 8
  store double %29, double* @errno, align 8
  %30 = call double @p__atof_l(i32* null, i32* null)
  store double %30, double* %1, align 8
  %31 = load double, double* %1, align 8
  %32 = call i32 @almost_equal(double %31, double 0.000000e+00)
  %33 = load double, double* %1, align 8
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), double %33)
  %35 = load double, double* @errno, align 8
  %36 = load double, double* @EINVAL, align 8
  %37 = fcmp oeq double %35, %36
  %38 = zext i1 %37 to i32
  %39 = load double, double* @errno, align 8
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), double %39)
  ret void
}

declare dso_local double @atof(i8*) #1

declare dso_local i32 @ok(i32, i8*, double) #1

declare dso_local i32 @almost_equal(double, double) #1

declare dso_local double @p__atof_l(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
