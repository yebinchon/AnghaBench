; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_perflib.c_make_report.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_perflib.c_make_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ROOT_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@LUA_TLIGHTUSERDATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"used_in\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @make_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_report(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @lua_newtable(i32* %8)
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @lua_pushnil(i32* %10)
  br label %12

12:                                               ; preds = %101, %23, %2
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @ROOT_TABLE, align 4
  %15 = call i64 @lua_next(i32* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %114

17:                                               ; preds = %12
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @lua_getfield(i32* %18, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @lua_isnil(i32* %20, i32 -1)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @lua_pop(i32* %24, i32 2)
  br label %12

26:                                               ; preds = %17
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @lua_pop(i32* %27, i32 1)
  br label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @lua_newtable(i32* %30)
  store i32 0, i32* %5, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @lua_pushnil(i32* %32)
  br label %34

34:                                               ; preds = %49, %29
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @lua_next(i32* %35, i32 -2)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i64, i64* @LUA_TLIGHTUSERDATA, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i64 @lua_type(i32* %40, i32 -2)
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32*, i32** %4, align 8
  %45 = call i64 @lua_tointeger(i32* %44, i32 -1)
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @lua_pop(i32* %50, i32 1)
  br label %34

52:                                               ; preds = %34
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @lua_pushnumber(i32* %53, i32 %54)
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @lua_setfield(i32* %56, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32*, i32** %3, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @lua_touserdata(i32* %59, i32 -2)
  %61 = call i32 @lua_pushfstring(i32* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @lua_setfield(i32* %62, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @lua_getfield(i32* %64, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %66 = load i32*, i32** %3, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @lua_tostring(i32* %67, i32 -1)
  %69 = call i32 @lua_pushstring(i32* %66, i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @lua_pop(i32* %70, i32 1)
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @lua_setfield(i32* %72, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @lua_getfield(i32* %74, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32*, i32** %3, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @lua_tonumber(i32* %77, i32 -1)
  %79 = call i32 @lua_pushnumber(i32* %76, i32 %78)
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @lua_pop(i32* %80, i32 1)
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @lua_setfield(i32* %82, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @lua_getfield(i32* %84, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @luaL_buffinit(i32* %86, i32* %7)
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @lua_pushnil(i32* %88)
  br label %90

90:                                               ; preds = %94, %52
  %91 = load i32*, i32** %4, align 8
  %92 = call i64 @lua_next(i32* %91, i32 -2)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @lua_pop(i32* %95, i32 1)
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @lua_tostring(i32* %97, i32 -1)
  %99 = call i32 @luaL_addstring(i32* %7, i32 %98)
  %100 = call i32 @luaL_addchar(i32* %7, i8 signext 59)
  br label %90

101:                                              ; preds = %90
  %102 = call i32 @luaL_pushresult(i32* %7)
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @lua_pop(i32* %103, i32 1)
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @lua_setfield(i32* %105, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  %109 = load i32*, i32** %3, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @lua_rawseti(i32* %109, i32 -2, i32 %110)
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 @lua_pop(i32* %112, i32 1)
  br label %12

114:                                              ; preds = %12
  ret void
}

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i64 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i32) #1

declare dso_local i32 @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @luaL_addstring(i32*, i32) #1

declare dso_local i32 @luaL_addchar(i32*, i8 signext) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
