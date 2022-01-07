; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_close.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32*, i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [56 x i8] c"expecting 1 argument (including the object) but seen %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"no request found\00", align 1
@LUA_TTABLE = common dso_local global i32 0, align 4
@SOCKET_CTX_INDEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"bad request\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"attempt to close a request socket\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_socket_tcp_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_socket_tcp_close(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @lua_gettop(i32* %6)
  %8 = icmp ne i32 %7, 1
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @lua_gettop(i32* %11)
  %13 = call i32 (i32*, i8*, ...) @luaL_error(i32* %10, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 %13, i32* %2, align 4
  br label %98

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i32* @ngx_http_lua_get_req(i32* %15)
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 (i32*, i8*, ...) @luaL_error(i32* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %2, align 4
  br label %98

22:                                               ; preds = %14
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @LUA_TTABLE, align 4
  %25 = call i32 @luaL_checktype(i32* %23, i32 1, i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @SOCKET_CTX_INDEX, align 4
  %28 = call i32 @lua_rawgeti(i32* %26, i32 1, i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call %struct.TYPE_9__* @lua_touserdata(i32* %29, i32 -1)
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %5, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @lua_pop(i32* %31, i32 1)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = icmp eq %struct.TYPE_9__* %33, null
  br i1 %34, label %51, label %35

35:                                               ; preds = %22
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %35
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46, %35, %22
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @lua_pushnil(i32* %52)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @lua_pushliteral(i32* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %98

56:                                               ; preds = %46, %41
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = icmp ne i32* %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 (i32*, i8*, ...) @luaL_error(i32* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 %64, i32* %2, align 4
  br label %98

65:                                               ; preds = %56
  %66 = load i32*, i32** %4, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @ngx_http_lua_socket_check_busy_connecting(i32* %66, %struct.TYPE_9__* %67, i32* %68)
  %70 = load i32*, i32** %4, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @ngx_http_lua_socket_check_busy_reading(i32* %70, %struct.TYPE_9__* %71, i32* %72)
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @ngx_http_lua_socket_check_busy_writing(i32* %74, %struct.TYPE_9__* %75, i32* %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %65
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82, %65
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @lua_pushnil(i32* %88)
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @lua_pushliteral(i32* %90, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %98

92:                                               ; preds = %82
  %93 = load i32*, i32** %4, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %95 = call i32 @ngx_http_lua_socket_tcp_finalize(i32* %93, %struct.TYPE_9__* %94)
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @lua_pushinteger(i32* %96, i32 1)
  store i32 1, i32* %2, align 4
  br label %98

98:                                               ; preds = %92, %87, %62, %51, %19, %9
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @ngx_http_lua_socket_check_busy_connecting(i32*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @ngx_http_lua_socket_check_busy_reading(i32*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @ngx_http_lua_socket_check_busy_writing(i32*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @ngx_http_lua_socket_tcp_finalize(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
