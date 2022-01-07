; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_receiveuntil.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_receiveuntil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32* }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"expecting 2 or 3 arguments (including the object), but got %d\00", align 1
@LUA_TTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"inclusive\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"bad \22inclusive\22 option value type: %s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"no request found\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"lua tcp socket calling receiveuntil() method\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"pattern is empty\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@pattern_udata_metatable_key = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"failed to compile pattern\00", align 1
@ngx_http_lua_socket_receiveuntil_iterator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_socket_tcp_receiveuntil to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_socket_tcp_receiveuntil(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @lua_gettop(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 3
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (i32*, i8*, ...) @luaL_error(i32* %19, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 %21, i32* %2, align 4
  br label %128

22:                                               ; preds = %15, %1
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @LUA_TTABLE, align 4
  %28 = call i32 @luaL_checktype(i32* %26, i32 3, i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_getfield(i32* %29, i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @lua_type(i32* %31, i32 -1)
  switch i32 %32, label %40 [
    i32 128, label %33
    i32 129, label %34
  ]

33:                                               ; preds = %25
  br label %45

34:                                               ; preds = %25
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @lua_toboolean(i32* %35, i32 -1)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 1, i32* %9, align 4
  br label %39

39:                                               ; preds = %38, %34
  br label %45

40:                                               ; preds = %25
  %41 = load i32*, i32** %3, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @luaL_typename(i32* %42, i32 -1)
  %44 = call i32 (i32*, i8*, ...) @luaL_error(i32* %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  store i32 %44, i32* %2, align 4
  br label %128

45:                                               ; preds = %39, %33
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @lua_pop(i32* %46, i32 2)
  br label %48

48:                                               ; preds = %45, %22
  %49 = load i32*, i32** %3, align 8
  %50 = call %struct.TYPE_11__* @ngx_http_lua_get_req(i32* %49)
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %4, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = icmp eq %struct.TYPE_11__* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 (i32*, i8*, ...) @luaL_error(i32* %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 %55, i32* %2, align 4
  br label %128

56:                                               ; preds = %48
  %57 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ngx_log_debug0(i32 %57, i32 %62, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* @LUA_TTABLE, align 4
  %66 = call i32 @luaL_checktype(i32* %64, i32 1, i32 %65)
  %67 = load i32*, i32** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %69 = call i64 @luaL_checklstring(i32* %67, i32 2, i64* %68)
  %70 = inttoptr i64 %69 to i32*
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  store i32* %70, i32** %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %56
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @lua_pushnil(i32* %76)
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @lua_pushliteral(i32* %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %128

80:                                               ; preds = %56
  store i64 4, i64* %8, align 8
  %81 = load i32*, i32** %3, align 8
  %82 = load i64, i64* %8, align 8
  %83 = call %struct.TYPE_12__* @lua_newuserdata(i32* %81, i64 %82)
  store %struct.TYPE_12__* %83, %struct.TYPE_12__** %10, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %85 = icmp eq %struct.TYPE_12__* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 (i32*, i8*, ...) @luaL_error(i32* %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 %88, i32* %2, align 4
  br label %128

89:                                               ; preds = %80
  %90 = load i32*, i32** %3, align 8
  %91 = load i32, i32* @pattern_udata_metatable_key, align 4
  %92 = call i32 @ngx_http_lua_lightudata_mask(i32 %91)
  %93 = call i32 @lua_pushlightuserdata(i32* %90, i32 %92)
  %94 = load i32*, i32** %3, align 8
  %95 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %96 = call i32 @lua_rawget(i32* %94, i32 %95)
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @lua_setmetatable(i32* %97, i32 -2)
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %100 = load i64, i64* %8, align 8
  %101 = call i32 @ngx_memzero(%struct.TYPE_12__* %99, i64 %100)
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @ngx_http_lua_socket_compile_pattern(i32* %106, i64 %108, %struct.TYPE_12__* %109, i32 %114)
  store i64 %115, i64* %7, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* @NGX_OK, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %89
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @lua_pushnil(i32* %120)
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 @lua_pushliteral(i32* %122, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %128

124:                                              ; preds = %89
  %125 = load i32*, i32** %3, align 8
  %126 = load i32, i32* @ngx_http_lua_socket_receiveuntil_iterator, align 4
  %127 = call i32 @lua_pushcclosure(i32* %125, i32 %126, i32 3)
  store i32 1, i32* %2, align 4
  br label %128

128:                                              ; preds = %124, %119, %86, %75, %53, %40, %18
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @luaL_typename(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local %struct.TYPE_12__* @lua_newuserdata(i32*, i64) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_lightudata_mask(i32) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @ngx_http_lua_socket_compile_pattern(i32*, i64, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @lua_pushcclosure(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
