; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_receiveany.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_receiveany.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i64, i64, i32, %struct.TYPE_19__*, i64, i64, %struct.TYPE_17__, i64 }
%struct.TYPE_17__ = type { i32* }

@.str = private unnamed_addr constant [57 x i8] c"expecting 2 arguments (including the object), but got %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"no request found\00", align 1
@LUA_TTABLE = common dso_local global i32 0, align 4
@SOCKET_CTX_INDEX = common dso_local global i32 0, align 4
@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"attempt to receive data on a closed socket: u:%p, c:%p, ft:%d eof:%d\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"bad request\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"bad max argument\00", align 1
@ngx_http_lua_socket_read_any = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [69 x i8] c"lua tcp socket calling receiveany() method to read at most %uz bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_socket_tcp_receiveany to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_socket_tcp_receiveany(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @lua_gettop(i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i32*, i8*, ...) @luaL_error(i32* %14, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %2, align 4
  br label %157

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call %struct.TYPE_19__* @ngx_http_lua_get_req(i32* %18)
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %6, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %21 = icmp eq %struct.TYPE_19__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 (i32*, i8*, ...) @luaL_error(i32* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %2, align 4
  br label %157

25:                                               ; preds = %17
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @LUA_TTABLE, align 4
  %28 = call i32 @luaL_checktype(i32* %26, i32 1, i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @SOCKET_CTX_INDEX, align 4
  %31 = call i32 @lua_rawgeti(i32* %29, i32 1, i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call %struct.TYPE_20__* @lua_touserdata(i32* %32, i32 -1)
  store %struct.TYPE_20__* %33, %struct.TYPE_20__** %8, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %35 = icmp eq %struct.TYPE_20__* %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %25
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %99

47:                                               ; preds = %42, %36, %25
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %49 = load i32, i32* @ngx_http_lua_module, align 4
  %50 = call %struct.TYPE_21__* @ngx_http_get_module_loc_conf(%struct.TYPE_19__* %48, i32 %49)
  store %struct.TYPE_21__* %50, %struct.TYPE_21__** %7, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %94

55:                                               ; preds = %47
  %56 = load i32, i32* @NGX_LOG_ERR, align 4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %64 = icmp ne %struct.TYPE_20__* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  br label %71

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %65
  %72 = phi i32* [ %69, %65 ], [ null, %70 ]
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %74 = icmp ne %struct.TYPE_20__* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  br label %81

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %75
  %82 = phi i32 [ %79, %75 ], [ 0, %80 ]
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %84 = icmp ne %struct.TYPE_20__* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  br label %91

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %85
  %92 = phi i32 [ %89, %85 ], [ 0, %90 ]
  %93 = call i32 @ngx_log_error(i32 %56, i32 %61, i32 0, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_20__* %62, i32* %72, i32 %82, i32 %92)
  br label %94

94:                                               ; preds = %91, %47
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @lua_pushnil(i32* %95)
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @lua_pushliteral(i32* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %157

99:                                               ; preds = %42
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %101, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %104 = icmp ne %struct.TYPE_19__* %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 (i32*, i8*, ...) @luaL_error(i32* %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32 %107, i32* %2, align 4
  br label %157

108:                                              ; preds = %99
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @ngx_http_lua_socket_check_busy_connecting(%struct.TYPE_19__* %109, %struct.TYPE_20__* %110, i32* %111)
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @ngx_http_lua_socket_check_busy_reading(%struct.TYPE_19__* %113, %struct.TYPE_20__* %114, i32* %115)
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 @lua_isnumber(i32* %117, i32 2)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %108
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @luaL_argerror(i32* %121, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store i32 %122, i32* %2, align 4
  br label %157

123:                                              ; preds = %108
  %124 = load i32*, i32** %3, align 8
  %125 = call i64 @lua_tointeger(i32* %124, i32 2)
  store i64 %125, i64* %5, align 8
  %126 = load i64, i64* %5, align 8
  %127 = icmp sle i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32*, i32** %3, align 8
  %130 = call i32 @luaL_argerror(i32* %129, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store i32 %130, i32* %2, align 4
  br label %157

131:                                              ; preds = %123
  %132 = load i32, i32* @ngx_http_lua_socket_read_any, align 4
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load i64, i64* %5, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 1
  store i64 %140, i64* %142, align 8
  %143 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @ngx_log_debug1(i32 %143, i32 %148, i32 0, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0), i64 %151)
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %155 = load i32*, i32** %3, align 8
  %156 = call i32 @ngx_http_lua_socket_tcp_receive_helper(%struct.TYPE_19__* %153, %struct.TYPE_20__* %154, i32* %155)
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %131, %128, %120, %105, %94, %22, %13
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_19__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local %struct.TYPE_20__* @lua_touserdata(i32*, i32) #1

declare dso_local %struct.TYPE_21__* @ngx_http_get_module_loc_conf(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_20__*, i32*, i32, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @ngx_http_lua_socket_check_busy_connecting(%struct.TYPE_19__*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @ngx_http_lua_socket_check_busy_reading(%struct.TYPE_19__*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @lua_isnumber(i32*, i32) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i64 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @ngx_http_lua_socket_tcp_receive_helper(%struct.TYPE_19__*, %struct.TYPE_20__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
