; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_perflib.c_snapshot.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_perflib.c_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_GLOBALSINDEX = common dso_local global i32 0, align 4
@RT_GLOBAL = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@RT_REGISTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"[REGISTRY Level 1]\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"used_in\00", align 1
@LUA_RIDX_GLOBALS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snapshot(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %6 = call i32* (...) @luaL_newstate()
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @lua_newtable(i32* %7)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @LUA_GLOBALSINDEX, align 4
  %11 = call i32 @lua_pushvalue(i32* %9, i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @RT_GLOBAL, align 4
  %15 = call i32 @mark_root_table(i32* %12, i32* %13, i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @lua_pop(i32* %16, i32 1)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %20 = call i32 @lua_pushvalue(i32* %18, i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i8* @lua_topointer(i32* %21, i32 -1)
  store i8* %22, i8** %5, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @RT_REGISTRY, align 4
  %26 = call i32 @mark_root_table(i32* %23, i32* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @lua_pop(i32* %27, i32 1)
  %29 = load i32*, i32** %2, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @make_report(i32* %29, i32* %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @lua_newtable(i32* %32)
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @lua_pushstring(i32* %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @lua_setfield(i32* %36, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* @RT_REGISTRY, align 4
  %40 = call i32 @lua_pushnumber(i32* %38, i32 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @lua_setfield(i32* %41, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @lua_pushnumber(i32* %43, i32 %44)
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @lua_setfield(i32* %46, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32*, i32** %2, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @lua_pushfstring(i32* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @lua_setfield(i32* %51, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @lua_pushstring(i32* %53, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @lua_setfield(i32* %55, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %57 = load i32*, i32** %2, align 8
  %58 = load i32*, i32** %2, align 8
  %59 = call i64 @lua_objlen(i32* %58, i32 -2)
  %60 = add nsw i64 %59, 1
  %61 = call i32 @lua_rawseti(i32* %57, i32 -2, i64 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @lua_close(i32* %62)
  ret i32 1
}

declare dso_local i32* @luaL_newstate(...) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @mark_root_table(i32*, i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i8* @lua_topointer(i32*, i32) #1

declare dso_local i32 @make_report(i32*, i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i8*) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i64) #1

declare dso_local i64 @lua_objlen(i32*, i32) #1

declare dso_local i32 @lua_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
