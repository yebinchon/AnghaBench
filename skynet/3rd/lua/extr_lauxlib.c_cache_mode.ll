; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_lauxlib.c_cache_mode.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_lauxlib.c_cache_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cache_mode.lst = internal global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"EXIST\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@cache_key = common dso_local global i32 0, align 4
@LUA_TNUMBER = common dso_local global i32 0, align 4
@CACHE_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @cache_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_mode(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @lua_isnoneornil(i32* %7, i32 1)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %13 = call i32 @lua_rawgetp(i32* %11, i32 %12, i32* @cache_key)
  store i32 %13, i32* %4, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @lua_tointeger(i32* %14, i32 -1)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @LUA_TNUMBER, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %10
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @CACHE_ON, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %19
  %27 = load i32, i32* @CACHE_ON, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %26, %22
  br label %31

29:                                               ; preds = %10
  %30 = load i32, i32* @CACHE_ON, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i8*], [4 x i8*]* @cache_mode.lst, i64 0, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @lua_pushstring(i32* %32, i8* %36)
  store i32 1, i32* %2, align 4
  br label %47

38:                                               ; preds = %1
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @luaL_checkoption(i32* %39, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @cache_mode.lst, i64 0, i64 0))
  store i32 %40, i32* %6, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @lua_pushinteger(i32* %41, i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %46 = call i32 @lua_rawsetp(i32* %44, i32 %45, i32* @cache_key)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %38, %31
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @lua_isnoneornil(i32*, i32) #1

declare dso_local i32 @lua_rawgetp(i32*, i32, i32*) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @luaL_checkoption(i32*, i32, i8*, i8**) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_rawsetp(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
