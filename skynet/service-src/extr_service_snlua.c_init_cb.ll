; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_snlua.c_init_cb.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_snlua.c_init_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snlua = type { i64, %struct.skynet_context*, i32* }
%struct.skynet_context = type { i32 }

@LUA_GCSTOP = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"LUA_NOENV\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"skynet_context\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"skynet.codecache\00", align 1
@codecache = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"lua_path\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"./lualib/?.lua;./lualib/?/init.lua\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"LUA_PATH\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"lua_cpath\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"./luaclib/?.so\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"LUA_CPATH\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"luaservice\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"./service/?.lua\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"LUA_SERVICE\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"GETENV\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"preload\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"LUA_PRELOAD\00", align 1
@traceback = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"lualoader\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"./lualib/loader.lua\00", align 1
@LUA_OK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"Can't load %s : %s\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"lua loader error : %s\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"memlimit\00", align 1
@LUA_TNUMBER = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [27 x i8] c"Set memory limit to %.2f M\00", align 1
@LUA_GCRESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snlua*, %struct.skynet_context*, i8*, i64)* @init_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_cb(%struct.snlua* %0, %struct.skynet_context* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snlua*, align 8
  %7 = alloca %struct.skynet_context*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.snlua* %0, %struct.snlua** %6, align 8
  store %struct.skynet_context* %1, %struct.skynet_context** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.snlua*, %struct.snlua** %6, align 8
  %19 = getelementptr inbounds %struct.snlua, %struct.snlua* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %10, align 8
  %21 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %22 = load %struct.snlua*, %struct.snlua** %6, align 8
  %23 = getelementptr inbounds %struct.snlua, %struct.snlua* %22, i32 0, i32 1
  store %struct.skynet_context* %21, %struct.skynet_context** %23, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* @LUA_GCSTOP, align 4
  %26 = call i32 @lua_gc(i32* %24, i32 %25, i32 0)
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @lua_pushboolean(i32* %27, i32 1)
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %31 = call i32 @lua_setfield(i32* %29, i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @luaL_openlibs(i32* %32)
  %34 = load i32*, i32** %10, align 8
  %35 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %36 = call i32 @lua_pushlightuserdata(i32* %34, %struct.skynet_context* %35)
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %39 = call i32 @lua_setfield(i32* %37, i32 %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* @codecache, align 4
  %42 = call i32 @luaL_requiref(i32* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 0)
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @lua_pop(i32* %43, i32 1)
  %45 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %46 = call i8* @optstring(%struct.skynet_context* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  store i8* %46, i8** %11, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @lua_pushstring(i32* %47, i8* %48)
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @lua_setglobal(i32* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %52 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %53 = call i8* @optstring(%struct.skynet_context* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  store i8* %53, i8** %12, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = call i32 @lua_pushstring(i32* %54, i8* %55)
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @lua_setglobal(i32* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %59 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %60 = call i8* @optstring(%struct.skynet_context* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  store i8* %60, i8** %13, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = call i32 @lua_pushstring(i32* %61, i8* %62)
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @lua_setglobal(i32* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %66 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %67 = call i8* @skynet_command(%struct.skynet_context* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  store i8* %67, i8** %14, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = call i32 @lua_pushstring(i32* %68, i8* %69)
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @lua_setglobal(i32* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* @traceback, align 4
  %75 = call i32 @lua_pushcfunction(i32* %73, i32 %74)
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @lua_gettop(i32* %76)
  %78 = icmp eq i32 %77, 1
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %82 = call i8* @optstring(%struct.skynet_context* %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  store i8* %82, i8** %15, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = call i32 @luaL_loadfile(i32* %83, i8* %84)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* @LUA_OK, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %4
  %90 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = call float @lua_tostring(i32* %92, i32 -1)
  %94 = fpext float %93 to double
  %95 = call i32 (%struct.skynet_context*, i8*, ...) @skynet_error(%struct.skynet_context* %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i8* %91, double %94)
  %96 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %97 = call i32 @report_launcher_error(%struct.skynet_context* %96)
  store i32 1, i32* %5, align 4
  br label %147

98:                                               ; preds = %4
  %99 = load i32*, i32** %10, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @lua_pushlstring(i32* %99, i8* %100, i64 %101)
  %103 = load i32*, i32** %10, align 8
  %104 = call i32 @lua_pcall(i32* %103, i32 1, i32 0, i32 1)
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* @LUA_OK, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %98
  %109 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = call float @lua_tostring(i32* %110, i32 -1)
  %112 = fpext float %111 to double
  %113 = call i32 (%struct.skynet_context*, i8*, ...) @skynet_error(%struct.skynet_context* %109, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), double %112)
  %114 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %115 = call i32 @report_launcher_error(%struct.skynet_context* %114)
  store i32 1, i32* %5, align 4
  br label %147

116:                                              ; preds = %98
  %117 = load i32*, i32** %10, align 8
  %118 = call i32 @lua_settop(i32* %117, i32 0)
  %119 = load i32*, i32** %10, align 8
  %120 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %121 = call i64 @lua_getfield(i32* %119, i32 %120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %122 = load i64, i64* @LUA_TNUMBER, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %141

124:                                              ; preds = %116
  %125 = load i32*, i32** %10, align 8
  %126 = call i64 @lua_tointeger(i32* %125, i32 -1)
  store i64 %126, i64* %17, align 8
  %127 = load i64, i64* %17, align 8
  %128 = load %struct.snlua*, %struct.snlua** %6, align 8
  %129 = getelementptr inbounds %struct.snlua, %struct.snlua* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  %130 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %131 = load i64, i64* %17, align 8
  %132 = uitofp i64 %131 to float
  %133 = fdiv float %132, 0x4130000000000000
  %134 = fpext float %133 to double
  %135 = call i32 (%struct.skynet_context*, i8*, ...) @skynet_error(%struct.skynet_context* %130, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), double %134)
  %136 = load i32*, i32** %10, align 8
  %137 = call i32 @lua_pushnil(i32* %136)
  %138 = load i32*, i32** %10, align 8
  %139 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %140 = call i32 @lua_setfield(i32* %138, i32 %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  br label %141

141:                                              ; preds = %124, %116
  %142 = load i32*, i32** %10, align 8
  %143 = call i32 @lua_pop(i32* %142, i32 1)
  %144 = load i32*, i32** %10, align 8
  %145 = load i32, i32* @LUA_GCRESTART, align 4
  %146 = call i32 @lua_gc(i32* %144, i32 %145, i32 0)
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %141, %108, %89
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @lua_gc(i32*, i32, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @luaL_openlibs(i32*) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, %struct.skynet_context*) #1

declare dso_local i32 @luaL_requiref(i32*, i8*, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i8* @optstring(%struct.skynet_context*, i8*, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_setglobal(i32*, i8*) #1

declare dso_local i8* @skynet_command(%struct.skynet_context*, i8*, i8*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_loadfile(i32*, i8*) #1

declare dso_local i32 @skynet_error(%struct.skynet_context*, i8*, ...) #1

declare dso_local float @lua_tostring(i32*, i32) #1

declare dso_local i32 @report_launcher_error(%struct.skynet_context*) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

declare dso_local i32 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i64 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i64 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
