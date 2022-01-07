; ModuleID = '/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_iscdata.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_iscdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TUSERDATA = common dso_local global i32 0, align 4
@CDATA_MT_KEY = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@cdatamt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"internal error (could not load cdata mt): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @luaT_iscdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaT_iscdata(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @lua_type(i32* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 10
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %62

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @LUA_TUSERDATA, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %62

19:                                               ; preds = %14
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @lua_getmetatable(i32* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %62

25:                                               ; preds = %19
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @CDATA_MT_KEY, align 4
  %28 = call i32 @lua_pushlightuserdata(i32* %26, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %31 = call i32 @lua_rawget(i32* %29, i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @lua_isnil(i32* %32, i32 -1)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %25
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @lua_pop(i32* %36, i32 1)
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @cdatamt, align 4
  %40 = call i64 @luaL_dostring(i32* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i32*, i32** %4, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @lua_tostring(i32* %44, i32 -1)
  %46 = call i32 @luaL_error(i32* %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %42, %35
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @CDATA_MT_KEY, align 4
  %50 = call i32 @lua_pushlightuserdata(i32* %48, i32 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @lua_pushvalue(i32* %51, i32 -2)
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %55 = call i32 @lua_rawset(i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %47, %25
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @lua_rawequal(i32* %57, i32 -1, i32 -2)
  store i32 %58, i32* %7, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @lua_pop(i32* %59, i32 2)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %56, %24, %18, %13
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_getmetatable(i32*, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @luaL_dostring(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

declare dso_local i32 @lua_rawequal(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
