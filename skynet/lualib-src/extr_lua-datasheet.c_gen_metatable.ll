; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-datasheet.c_gen_metatable.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-datasheet.c_gen_metatable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32* }

@.str = private unnamed_addr constant [3 x i8] c"kv\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@NODECACHE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@PROXYCACHE = common dso_local global i32 0, align 4
@TABLES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@lindex = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"__pairs\00", align 1
@lpairs = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"__len\00", align 1
@llen = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @gen_metatable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_metatable(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [4 x %struct.TYPE_3__], align 16
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @new_weak_table(i32* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %8 = load i32, i32* @NODECACHE, align 4
  %9 = call i32 @lua_setfield(i32* %6, i32 %7, i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @new_weak_table(i32* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %14 = load i32, i32* @PROXYCACHE, align 4
  %15 = call i32 @lua_setfield(i32* %12, i32 %13, i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @lua_newtable(i32* %16)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %20 = load i32, i32* @TABLES, align 4
  %21 = call i32 @lua_setfield(i32* %18, i32 %19, i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @lua_createtable(i32* %22, i32 0, i32 1)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @lua_createtable(i32* %24, i32 0, i32 2)
  %26 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %27, align 16
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %29 = load i32*, i32** @lindex, align 8
  store i32* %29, i32** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %31, align 16
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %33 = load i32*, i32** @lpairs, align 8
  store i32* %33, i32** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %35, align 16
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %37 = load i32*, i32** @llen, align 8
  store i32* %37, i32** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i8* null, i8** %39, align 16
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32* null, i32** %40, align 8
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @lua_pushvalue(i32* %41, i32 -1)
  %43 = load i32*, i32** %2, align 8
  %44 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %45 = call i32 @luaL_setfuncs(i32* %43, %struct.TYPE_3__* %44, i32 1)
  ret void
}

declare dso_local i32 @new_weak_table(i32*, i8*) #1

declare dso_local i32 @lua_setfield(i32*, i32, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @luaL_setfuncs(i32*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
