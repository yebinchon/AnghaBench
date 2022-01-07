; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_control.c_ngx_http_lua_on_abort.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_control.c_ngx_http_lua_on_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"no request found\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"no request ctx found\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"duplicate call\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"lua_check_client_abort is off\00", align 1
@coroutines_key = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"on_wait thread 1: %p\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"on_wait thread 2: %p\00", align 1
@NGX_HTTP_LUA_CO_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_on_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_on_abort(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @ngx_http_lua_get_req(i32* %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @luaL_error(i32* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %2, align 4
  br label %93

15:                                               ; preds = %1
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @ngx_http_lua_module, align 4
  %18 = call %struct.TYPE_10__* @ngx_http_get_module_ctx(i32* %16, i32 %17)
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %5, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = icmp eq %struct.TYPE_10__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @luaL_error(i32* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 %23, i32* %2, align 4
  br label %93

24:                                               ; preds = %15
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = call i32 @ngx_http_lua_check_fake_request2(i32* %25, i32* %26, %struct.TYPE_10__* %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = icmp ne %struct.TYPE_11__* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @lua_pushnil(i32* %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @lua_pushliteral(i32* %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %93

38:                                               ; preds = %24
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @ngx_http_lua_module, align 4
  %41 = call %struct.TYPE_9__* @ngx_http_get_module_loc_conf(i32* %39, i32 %40)
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %7, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %38
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @lua_pushnil(i32* %47)
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @lua_pushliteral(i32* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %93

51:                                               ; preds = %38
  %52 = load i32*, i32** %3, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = call i32 @ngx_http_lua_coroutine_create_helper(i32* %52, i32* %53, %struct.TYPE_10__* %54, %struct.TYPE_11__** %6)
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* @coroutines_key, align 4
  %58 = call i32 @ngx_http_lua_lightudata_mask(i32 %57)
  %59 = call i32 @lua_pushlightuserdata(i32* %56, i32 %58)
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %62 = call i32 @lua_rawget(i32* %60, i32 %61)
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @lua_pushvalue(i32* %63, i32 -2)
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @lua_tothread(i32* %65, i32 -1)
  %67 = call i32 @dd(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @luaL_ref(i32* %68, i32 -2)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @lua_pop(i32* %72, i32 1)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  store %struct.TYPE_11__* %76, %struct.TYPE_11__** %78, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dd(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @NGX_HTTP_LUA_CO_SUSPENDED, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @lua_pushinteger(i32* %91, i32 1)
  store i32 1, i32* %2, align 4
  br label %93

93:                                               ; preds = %51, %46, %33, %21, %12
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local %struct.TYPE_10__* @ngx_http_get_module_ctx(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_check_fake_request2(i32*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local %struct.TYPE_9__* @ngx_http_get_module_loc_conf(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_coroutine_create_helper(i32*, i32*, %struct.TYPE_10__*, %struct.TYPE_11__**) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_lightudata_mask(i32) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @dd(i8*, i32) #1

declare dso_local i32 @lua_tothread(i32*, i32) #1

declare dso_local i32 @luaL_ref(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
