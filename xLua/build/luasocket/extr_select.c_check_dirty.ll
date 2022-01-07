; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_select.c_check_dirty.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_select.c_check_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOCKET_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*)* @check_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_dirty(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @lua_isnil(i32* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %62

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %55, %18
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @lua_pushnumber(i32* %20, i32 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @lua_gettable(i32* %23, i32 %24)
  %26 = load i32*, i32** %6, align 8
  %27 = call i64 @lua_isnil(i32* %26, i32 -1)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @lua_pop(i32* %30, i32 1)
  br label %60

32:                                               ; preds = %19
  %33 = load i32*, i32** %6, align 8
  %34 = call i64 @getfd(i32* %33)
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @SOCKET_INVALID, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %32
  %39 = load i32*, i32** %6, align 8
  %40 = call i64 @dirty(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  %46 = call i32 @lua_pushnumber(i32* %43, i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @lua_pushvalue(i32* %47, i32 -2)
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @lua_settable(i32* %49, i32 %50)
  %52 = load i64, i64* %12, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @FD_CLR(i64 %52, i32* %53)
  br label %55

55:                                               ; preds = %42, %38, %32
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @lua_pop(i32* %56, i32 1)
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %19

60:                                               ; preds = %29
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %17
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_gettable(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @getfd(i32*) #1

declare dso_local i64 @dirty(i32*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

declare dso_local i32 @FD_CLR(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
