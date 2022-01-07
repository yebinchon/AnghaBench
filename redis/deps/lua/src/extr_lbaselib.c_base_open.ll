; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lbaselib.c_base_open.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lbaselib.c_base_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_GLOBALSINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"_G\00", align 1
@base_funcs = common dso_local global i32 0, align 4
@LUA_VERSION = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"_VERSION\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ipairs\00", align 1
@luaB_ipairs = common dso_local global i32 0, align 4
@ipairsaux = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"pairs\00", align 1
@luaB_pairs = common dso_local global i32 0, align 4
@luaB_next = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"kv\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"__mode\00", align 1
@luaB_newproxy = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"newproxy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @base_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @base_open(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @LUA_GLOBALSINDEX, align 4
  %5 = call i32 @lua_pushvalue(i32* %3, i32 %4)
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @lua_setglobal(i32* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @base_funcs, align 4
  %10 = call i32 @luaL_register(i32* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = load i8*, i8** @LUA_VERSION, align 8
  %13 = call i32 @lua_pushliteral(i32* %11, i8* %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @lua_setglobal(i32* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @luaB_ipairs, align 4
  %18 = load i32, i32* @ipairsaux, align 4
  %19 = call i32 @auxopen(i32* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @luaB_pairs, align 4
  %22 = load i32, i32* @luaB_next, align 4
  %23 = call i32 @auxopen(i32* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @lua_createtable(i32* %24, i32 0, i32 1)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @lua_pushvalue(i32* %26, i32 -1)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @lua_setmetatable(i32* %28, i32 -2)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @lua_pushliteral(i32* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @lua_setfield(i32* %32, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* @luaB_newproxy, align 4
  %36 = call i32 @lua_pushcclosure(i32* %34, i32 %35, i32 1)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @lua_setglobal(i32* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_setglobal(i32*, i8*) #1

declare dso_local i32 @luaL_register(i32*, i8*, i32) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @auxopen(i32*, i8*, i32, i32) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushcclosure(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
