; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_base_open.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_base_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"_G\00", align 1
@base_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Lua 5.1\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"_VERSION\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ipairs\00", align 1
@luaB_ipairs = common dso_local global i32 0, align 4
@ipairsaux = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"pairs\00", align 1
@luaB_pairs = common dso_local global i32 0, align 4
@luaB_next = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"kv\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"__mode\00", align 1
@luaB_newproxy = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"newproxy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @base_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @base_open(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @lua_pushvalue(i32* %3, i32 -10002)
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @lua_setglobal(i32* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @base_funcs, align 4
  %9 = call i32 @luaL_register(i32* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @lua_pushliteral(i32* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @lua_setglobal(i32* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @luaB_ipairs, align 4
  %16 = load i32, i32* @ipairsaux, align 4
  %17 = call i32 @auxopen(i32* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @luaB_pairs, align 4
  %20 = load i32, i32* @luaB_next, align 4
  %21 = call i32 @auxopen(i32* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @lua_createtable(i32* %22, i32 0, i32 1)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @lua_pushvalue(i32* %24, i32 -1)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @lua_setmetatable(i32* %26, i32 -2)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @lua_pushliteral(i32* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @lua_setfield(i32* %30, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* @luaB_newproxy, align 4
  %34 = call i32 @lua_pushcclosure(i32* %32, i32 %33, i32 1)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @lua_setglobal(i32* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
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
