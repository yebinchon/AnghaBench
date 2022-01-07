; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/t/data/fake-shm-module/extr_ngx_http_lua_fake_shm_module.c_ngx_http_lua_fake_shm_get_info.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/t/data/fake-shm-module/extr_ngx_http_lua_fake_shm_module.c_ngx_http_lua_fake_shm_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"expecting exactly one arguments, but only seen %d\00", align 1
@LUA_TTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"bad \22zone\22 argument\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_fake_shm_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_fake_shm_get_info(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__**, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @lua_gettop(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (i32*, i8*, ...) @luaL_error(i32* %13, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 %15, i32* %2, align 4
  br label %67

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @LUA_TTABLE, align 4
  %19 = call i32 @luaL_checktype(i32* %17, i32 1, i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_rawgeti(i32* %20, i32 1, i32 1)
  %22 = load i32*, i32** %3, align 8
  %23 = call %struct.TYPE_8__** @lua_touserdata(i32* %22, i32 -1)
  store %struct.TYPE_8__** %23, %struct.TYPE_8__*** %6, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @lua_pop(i32* %24, i32 1)
  %26 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %27 = icmp eq %struct.TYPE_8__** %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 (i32*, i8*, ...) @luaL_error(i32* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %2, align 4
  br label %67

31:                                               ; preds = %16
  %32 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %5, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %7, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @lua_pushlstring(i32* %38, i8* %44, i32 %49)
  %51 = load i32*, i32** %3, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @lua_pushnumber(i32* %51, i32 %55)
  %57 = load i32*, i32** %3, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @lua_pushboolean(i32* %57, i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @lua_pushboolean(i32* %62, i32 %65)
  store i32 4, i32* %2, align 4
  br label %67

67:                                               ; preds = %31, %28, %12
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local %struct.TYPE_8__** @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
