; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_misc.c_test_math_functions.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_misc.c_test_math_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@NAN = common dso_local global i32 0, align 4
@EDOM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"errno = %d\0A\00", align 1
@INFINITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"ret = %lf\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_math_functions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_math_functions() #0 {
  %1 = alloca double, align 8
  store i32 -559038737, i32* @errno, align 4
  %2 = load i32, i32* @NAN, align 4
  %3 = call double @p_atan(i32 %2)
  %4 = load i32, i32* @errno, align 4
  %5 = load i32, i32* @EDOM, align 4
  %6 = icmp eq i32 %4, %5
  %7 = zext i1 %6 to i32
  %8 = load i32, i32* @errno, align 4
  %9 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %8)
  store i32 -559038737, i32* @errno, align 4
  %10 = load i32, i32* @INFINITY, align 4
  %11 = call double @p_atan(i32 %10)
  store double %11, double* %1, align 8
  %12 = load double, double* %1, align 8
  %13 = call i32 @almost_equal(double %12, double 0x3FF921FB54442D18)
  %14 = load double, double* %1, align 8
  %15 = fptosi double %14 to i32
  %16 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @errno, align 4
  %18 = icmp eq i32 %17, -559038737
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 -559038737, i32* @errno, align 4
  %22 = load i32, i32* @INFINITY, align 4
  %23 = sub nsw i32 0, %22
  %24 = call double @p_atan(i32 %23)
  store double %24, double* %1, align 8
  %25 = load double, double* %1, align 8
  %26 = call i32 @almost_equal(double %25, double 0xBFF921FB54442D18)
  %27 = load double, double* %1, align 8
  %28 = fptosi double %27 to i32
  %29 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @errno, align 4
  %31 = icmp eq i32 %30, -559038737
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 -559038737, i32* @errno, align 4
  %35 = load i32, i32* @NAN, align 4
  %36 = call double @p_tanh(i32 %35)
  %37 = load i32, i32* @errno, align 4
  %38 = load i32, i32* @EDOM, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 -559038737, i32* @errno, align 4
  %43 = load i32, i32* @INFINITY, align 4
  %44 = call double @p_tanh(i32 %43)
  store double %44, double* %1, align 8
  %45 = load double, double* %1, align 8
  %46 = call i32 @almost_equal(double %45, double 1.000000e+00)
  %47 = load double, double* %1, align 8
  %48 = fptosi double %47 to i32
  %49 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @errno, align 4
  %51 = icmp eq i32 %50, -559038737
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* @errno, align 4
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %53)
  store i32 -559038737, i32* @errno, align 4
  %55 = load i32, i32* @NAN, align 4
  %56 = call i32 @p_exp(i32 %55)
  %57 = load i32, i32* @errno, align 4
  %58 = load i32, i32* @EDOM, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* @errno, align 4
  %62 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %61)
  store i32 -559038737, i32* @errno, align 4
  %63 = load i32, i32* @INFINITY, align 4
  %64 = call i32 @p_exp(i32 %63)
  %65 = load i32, i32* @errno, align 4
  %66 = icmp eq i32 %65, -559038737
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* @errno, align 4
  %69 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %68)
  ret void
}

declare dso_local double @p_atan(i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @almost_equal(double, double) #1

declare dso_local double @p_tanh(i32) #1

declare dso_local i32 @p_exp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
