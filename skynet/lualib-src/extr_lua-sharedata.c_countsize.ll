; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_countsize.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_countsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TNUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Invalid key %f\00", align 1
@LUA_TSTRING = common dso_local global i32 0, align 4
@LUA_TTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid key type %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @countsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @countsize(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @lua_pushnil(i32* %8)
  br label %10

10:                                               ; preds = %59, %2
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @lua_next(i32* %11, i32 1)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %62

14:                                               ; preds = %10
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @lua_type(i32* %15, i32 -2)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @LUA_TNUMBER, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %14
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_isinteger(i32* %23, i32 -2)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load i32*, i32** %3, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @lua_tonumber(i32* %28, i32 -2)
  %30 = call i32 @luaL_error(i32* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @lua_tointeger(i32* %32, i32 -2)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %36, %31
  br label %59

44:                                               ; preds = %14
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @LUA_TSTRING, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @LUA_TTABLE, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32*, i32** %3, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @lua_typename(i32* %54, i32 %55)
  %57 = call i32 @luaL_error(i32* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %52, %48, %44
  br label %59

59:                                               ; preds = %58, %43
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @lua_pop(i32* %60, i32 1)
  br label %10

62:                                               ; preds = %10
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_isinteger(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @lua_typename(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
