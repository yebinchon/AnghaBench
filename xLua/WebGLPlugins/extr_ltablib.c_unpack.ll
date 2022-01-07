; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_ltablib.c_unpack.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_ltablib.c_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@luaL_checkinteger = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"too many results to unpack\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @luaL_optinteger(i32* %7, i32 2, i32 1)
  store i64 %8, i64* %5, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @luaL_checkinteger, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @luaL_len(i32* %11, i32 1)
  %13 = call i64 @luaL_opt(i32* %9, i32 %10, i32 3, i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

18:                                               ; preds = %1
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = sub nsw i64 %19, %20
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @INT_MAX, align 8
  %24 = trunc i64 %23 to i32
  %25 = zext i32 %24 to i64
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %18
  %28 = load i32*, i32** %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %4, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @lua_checkstack(i32* %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27, %18
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @luaL_error(i32* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %36, i32* %2, align 4
  br label %55

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %46, %37
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i32*, i32** %3, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @lua_geti(i32* %43, i32 1, i64 %44)
  br label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %5, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %5, align 8
  br label %38

49:                                               ; preds = %38
  %50 = load i32*, i32** %3, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @lua_geti(i32* %50, i32 1, i64 %51)
  %53 = load i64, i64* %4, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %49, %34, %17
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i64 @luaL_opt(i32*, i32, i32, i32) #1

declare dso_local i32 @luaL_len(i32*, i32) #1

declare dso_local i32 @lua_checkstack(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_geti(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
