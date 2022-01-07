; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_sprintf.c_test_e.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_sprintf.c_test_e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%e\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"-3.720662e-103\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"3.333333e-001\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"3.354223e+001\00", align 1
@NAN = common dso_local global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"1.#QNAN0e+000\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%.9e\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"1.#QNAN0000e+000\00", align 1
@INFINITY = common dso_local global double 0.000000e+00, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"1.#INF00e+000\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"-1.#INF00e+000\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_e() #0 {
  %1 = alloca [128 x i8], align 16
  %2 = alloca x86_fp80, align 16
  store x86_fp80 0xK3FFDAAAAAAAAAAAAA800, x86_fp80* %2, align 16
  %3 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %4 = load x86_fp80, x86_fp80* %2, align 16
  %5 = fptrunc x86_fp80 %4 to double
  %6 = call i32 @sprintf(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double %5)
  %7 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %8 = call i32 @ok_str(i8* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store x86_fp80 0xK3FFDAAAAAAAAAAAAA800, x86_fp80* %2, align 16
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %10 = load x86_fp80, x86_fp80* %2, align 16
  %11 = fptrunc x86_fp80 %10 to double
  %12 = call i32 @sprintf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double %11)
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %14 = call i32 @ok_str(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %16 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double 0x4040C567CAEA747E)
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %18 = call i32 @ok_str(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %20 = load double, double* @NAN, align 8
  %21 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double %20)
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %23 = call i32 @ok_str(i8* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %25 = load double, double* @NAN, align 8
  %26 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), double %25)
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %28 = call i32 @ok_str(i8* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %30 = load double, double* @INFINITY, align 8
  %31 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double %30)
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %33 = call i32 @ok_str(i8* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %34 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %35 = load double, double* @INFINITY, align 8
  %36 = fneg double %35
  %37 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double %36)
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %39 = call i32 @ok_str(i8* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, double) #1

declare dso_local i32 @ok_str(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
