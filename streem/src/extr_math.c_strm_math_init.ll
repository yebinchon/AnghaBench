; ModuleID = '/home/carl/AnghaBench/streem/src/extr_math.c_strm_math_init.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_math.c_strm_math_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"PI\00", align 1
@M_PI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@M_E = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@math_sqrt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@math_sin = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@math_cos = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@math_tan = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@math_pow = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"round\00", align 1
@math_round = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"ceil\00", align 1
@math_ceil = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"floor\00", align 1
@math_floor = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@math_trunc = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"int\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strm_math_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @M_PI, align 4
  %5 = call i32 @strm_float_value(i32 %4)
  %6 = call i32 @strm_var_def(i32* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @M_E, align 4
  %9 = call i32 @strm_float_value(i32 %8)
  %10 = call i32 @strm_var_def(i32* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @math_sqrt, align 4
  %13 = call i32 @strm_cfunc_value(i32 %12)
  %14 = call i32 @strm_var_def(i32* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @math_sin, align 4
  %17 = call i32 @strm_cfunc_value(i32 %16)
  %18 = call i32 @strm_var_def(i32* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @math_cos, align 4
  %21 = call i32 @strm_cfunc_value(i32 %20)
  %22 = call i32 @strm_var_def(i32* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @math_tan, align 4
  %25 = call i32 @strm_cfunc_value(i32 %24)
  %26 = call i32 @strm_var_def(i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @math_pow, align 4
  %29 = call i32 @strm_cfunc_value(i32 %28)
  %30 = call i32 @strm_var_def(i32* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @math_round, align 4
  %33 = call i32 @strm_cfunc_value(i32 %32)
  %34 = call i32 @strm_var_def(i32* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @math_ceil, align 4
  %37 = call i32 @strm_cfunc_value(i32 %36)
  %38 = call i32 @strm_var_def(i32* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* @math_floor, align 4
  %41 = call i32 @strm_cfunc_value(i32 %40)
  %42 = call i32 @strm_var_def(i32* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* @math_trunc, align 4
  %45 = call i32 @strm_cfunc_value(i32 %44)
  %46 = call i32 @strm_var_def(i32* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* @math_trunc, align 4
  %49 = call i32 @strm_cfunc_value(i32 %48)
  %50 = call i32 @strm_var_def(i32* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %49)
  ret void
}

declare dso_local i32 @strm_var_def(i32*, i8*, i32) #1

declare dso_local i32 @strm_float_value(i32) #1

declare dso_local i32 @strm_cfunc_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
