; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_sprintf.c_test_f.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_sprintf.c_test_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"-0.000000\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%llf\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%Lf\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"0.333333\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"0.125000\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%3.7f\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"0.3333333\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%3.30f\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"0.333333333333333310000000000000\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%3.60f\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c"0.333333333333333310000000000000000000000000000000000000000000\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"%3.80f\00", align 1
@.str.14 = private unnamed_addr constant [83 x i8] c"0.33333333333333331000000000000000000000000000000000000000000000000000000000000000\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"0.000000\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"1.#QNAN0\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"%.9f\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"1.#QNAN0000\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"1.#INF00\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"-1.#INF00\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"-1.#IND00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_f() #0 {
  %1 = alloca [128 x i8], align 16
  %2 = alloca x86_fp80, align 16
  store x86_fp80 0xK3FFDAAAAAAAAAAAAA800, x86_fp80* %2, align 16
  %3 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %4 = load x86_fp80, x86_fp80* %2, align 16
  %5 = fptosi x86_fp80 %4 to i32
  %6 = call i32 @sprintf(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %8 = call i32 @ok_str(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %10 = load x86_fp80, x86_fp80* %2, align 16
  %11 = fptosi x86_fp80 %10 to i32
  %12 = call i32 @sprintf(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %11)
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %14 = call i32 @ok_str(i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %16 = load x86_fp80, x86_fp80* %2, align 16
  %17 = fptosi x86_fp80 %16 to i32
  %18 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %20 = call i32 @ok_str(i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %22 = load x86_fp80, x86_fp80* %2, align 16
  %23 = fptosi x86_fp80 %22 to i32
  %24 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %26 = call i32 @ok_str(i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %28 = load x86_fp80, x86_fp80* %2, align 16
  %29 = fptrunc x86_fp80 %28 to double
  %30 = fptosi double %29 to i32
  %31 = call i32 @sprintf(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %33 = call i32 @ok_str(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %34 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %35 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 0)
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %37 = call i32 @ok_str(i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %39 = load x86_fp80, x86_fp80* %2, align 16
  %40 = fptrunc x86_fp80 %39 to double
  %41 = fptosi double %40 to i32
  %42 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %41)
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %44 = call i32 @ok_str(i8* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %45 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %46 = load x86_fp80, x86_fp80* %2, align 16
  %47 = fptrunc x86_fp80 %46 to double
  %48 = fptosi double %47 to i32
  %49 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %48)
  %50 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %51 = call i32 @ok_str(i8* %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %52 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %53 = load x86_fp80, x86_fp80* %2, align 16
  %54 = fptrunc x86_fp80 %53 to double
  %55 = fptosi double %54 to i32
  %56 = call i32 @sprintf(i8* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %55)
  %57 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %58 = call i32 @ok_str(i8* %57, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i64 0, i64 0))
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %60 = load x86_fp80, x86_fp80* %2, align 16
  %61 = fptrunc x86_fp80 %60 to double
  %62 = fptosi double %61 to i32
  %63 = call i32 @sprintf(i8* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %62)
  %64 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %65 = call i32 @ok_str(i8* %64, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.14, i64 0, i64 0))
  store x86_fp80 0xK7FFF8000000000000000, x86_fp80* %2, align 16
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %67 = load x86_fp80, x86_fp80* %2, align 16
  %68 = fptosi x86_fp80 %67 to i32
  %69 = call i32 @sprintf(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %71 = call i32 @ok_str(i8* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %72 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %73 = call i32 @sprintf(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 0)
  %74 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %75 = call i32 @ok_str(i8* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %76 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %77 = call i32 @sprintf(i8* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 0)
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %79 = call i32 @ok_str(i8* %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %80 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %81 = call i32 @sprintf(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 0)
  %82 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %83 = call i32 @ok_str(i8* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %84 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %85 = call i32 @sprintf(i8* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 0)
  %86 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %87 = call i32 @ok_str(i8* %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  %88 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %89 = call i32 @sprintf(i8* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 0)
  %90 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %91 = call i32 @ok_str(i8* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @ok_str(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
