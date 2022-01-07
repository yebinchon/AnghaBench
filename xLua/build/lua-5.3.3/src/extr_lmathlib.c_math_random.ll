; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lmathlib.c_math_random.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lmathlib.c_math_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L_RANDMAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"wrong number of arguments\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"interval is empty\00", align 1
@LUA_MAXINTEGER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"interval too large\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @math_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_random(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  %7 = call i64 (...) @l_rand()
  %8 = sitofp i64 %7 to double
  %9 = load i64, i64* @L_RANDMAX, align 8
  %10 = sitofp i64 %9 to double
  %11 = fadd double %10, 1.000000e+00
  %12 = fdiv double 1.000000e+00, %11
  %13 = fmul double %8, %12
  store double %13, double* %6, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @lua_gettop(i32* %14)
  switch i32 %15, label %29 [
    i32 0, label %16
    i32 1, label %21
    i32 2, label %24
  ]

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = load double, double* %6, align 8
  %19 = fptosi double %18 to i32
  %20 = call i32 @lua_pushnumber(i32* %17, i32 %19)
  store i32 1, i32* %2, align 4
  br label %65

21:                                               ; preds = %1
  store i64 1, i64* %4, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @luaL_checkinteger(i32* %22, i32 1)
  store i64 %23, i64* %5, align 8
  br label %32

24:                                               ; preds = %1
  %25 = load i32*, i32** %3, align 8
  %26 = call i64 @luaL_checkinteger(i32* %25, i32 1)
  store i64 %26, i64* %4, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @luaL_checkinteger(i32* %27, i32 2)
  store i64 %28, i64* %5, align 8
  br label %32

29:                                               ; preds = %1
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @luaL_error(i32* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 %31, i32* %2, align 4
  br label %65

32:                                               ; preds = %24, %21
  %33 = load i32*, i32** %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp sle i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @luaL_argcheck(i32* %33, i32 %37, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32*, i32** %3, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp sge i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %32
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @LUA_MAXINTEGER, align 8
  %45 = load i64, i64* %4, align 8
  %46 = add nsw i64 %44, %45
  %47 = icmp sle i64 %43, %46
  br label %48

48:                                               ; preds = %42, %32
  %49 = phi i1 [ true, %32 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @luaL_argcheck(i32* %39, i32 %50, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %4, align 8
  %54 = sub nsw i64 %52, %53
  %55 = sitofp i64 %54 to double
  %56 = fadd double %55, 1.000000e+00
  %57 = load double, double* %6, align 8
  %58 = fmul double %57, %56
  store double %58, double* %6, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = load double, double* %6, align 8
  %61 = fptosi double %60 to i64
  %62 = load i64, i64* %4, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @lua_pushinteger(i32* %59, i64 %63)
  store i32 1, i32* %2, align 4
  br label %65

65:                                               ; preds = %48, %29, %16
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @l_rand(...) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i64 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
