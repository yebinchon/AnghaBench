; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_options.c_opt_set_linger.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_options.c_opt_set_linger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linger = type { i8*, i8* }

@LUA_TTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"boolean 'on' field expected\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"number 'timeout' field expected\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_LINGER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opt_set_linger(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.linger, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @lua_istable(i32* %6, i32 3)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @LUA_TTABLE, align 4
  %13 = call i32 @lua_typename(i32* %11, i32 %12)
  %14 = call i32 @auxiliar_typeerror(i32* %10, i32 3, i32 %13)
  br label %15

15:                                               ; preds = %9, %2
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @lua_pushstring(i32* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @lua_gettable(i32* %18, i32 3)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_isboolean(i32* %20, i32 -1)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @luaL_argerror(i32* %24, i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %15
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @lua_toboolean(i32* %27, i32 -1)
  %29 = inttoptr i64 %28 to i8*
  %30 = getelementptr inbounds %struct.linger, %struct.linger* %5, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @lua_pushstring(i32* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @lua_gettable(i32* %33, i32 3)
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @lua_isnumber(i32* %35, i32 -1)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %26
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @luaL_argerror(i32* %39, i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %26
  %42 = load i32*, i32** %3, align 8
  %43 = call i64 @lua_tonumber(i32* %42, i32 -1)
  %44 = inttoptr i64 %43 to i8*
  %45 = getelementptr inbounds %struct.linger, %struct.linger* %5, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @SOL_SOCKET, align 4
  %49 = load i32, i32* @SO_LINGER, align 4
  %50 = bitcast %struct.linger* %5 to i8*
  %51 = call i32 @opt_set(i32* %46, i32 %47, i32 %48, i32 %49, i8* %50, i32 16)
  ret i32 %51
}

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @auxiliar_typeerror(i32*, i32, i32) #1

declare dso_local i32 @lua_typename(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_gettable(i32*, i32) #1

declare dso_local i32 @lua_isboolean(i32*, i32) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i64 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @lua_isnumber(i32*, i32) #1

declare dso_local i64 @lua_tonumber(i32*, i32) #1

declare dso_local i32 @opt_set(i32*, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
