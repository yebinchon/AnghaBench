; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_receive_retval_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_receive_retval_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_19__ = type { i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"lua tcp socket receive return value handler\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@ngx_http_lua_rd_check_broken_connection = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"rev active: %d\00", align 1
@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_USE_LEVEL_EVENT = common dso_local global i32 0, align 4
@NGX_READ_EVENT = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"failed to add event\00", align 1
@ngx_http_block_reading = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_SOCKET_FT_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"u->bufs_in: %p\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_18__*, i32*)* @ngx_http_lua_socket_tcp_receive_retval_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_socket_tcp_receive_retval_handler(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ngx_log_debug0(i32 %13, i32 %18, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = load i32, i32* @ngx_http_lua_module, align 4
  %22 = call i32* @ngx_http_get_module_ctx(%struct.TYPE_17__* %20, i32 %21)
  store i32* %22, i32** %10, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %3
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %80

32:                                               ; preds = %27, %3
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = load i32, i32* @ngx_http_lua_module, align 4
  %35 = call %struct.TYPE_19__* @ngx_http_get_module_loc_conf(%struct.TYPE_17__* %33, i32 %34)
  store %struct.TYPE_19__* %35, %struct.TYPE_19__** %12, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %75

40:                                               ; preds = %32
  %41 = load i32, i32* @ngx_http_lua_rd_check_broken_connection, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %47, align 8
  store %struct.TYPE_20__* %48, %struct.TYPE_20__** %11, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @dd(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @ngx_event_flags, align 4
  %54 = load i32, i32* @NGX_USE_LEVEL_EVENT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %40
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %64 = load i32, i32* @NGX_READ_EVENT, align 4
  %65 = call i64 @ngx_add_event(%struct.TYPE_20__* %63, i32 %64, i32 0)
  %66 = load i64, i64* @NGX_OK, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @lua_pushnil(i32* %69)
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @lua_pushliteral(i32* %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 2, i32* %4, align 4
  br label %151

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %57, %40
  br label %79

75:                                               ; preds = %32
  %76 = load i32, i32* @ngx_http_block_reading, align 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %75, %74
  br label %80

80:                                               ; preds = %79, %27
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %136

85:                                               ; preds = %80
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_TIMEOUT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  br label %95

95:                                               ; preds = %92, %85
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @dd(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 %98)
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %95
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = call i64 @ngx_http_lua_socket_push_input_data(%struct.TYPE_17__* %105, i32* %106, %struct.TYPE_18__* %107, i32* %108)
  store i64 %109, i64* %9, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* @NGX_ERROR, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %104
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 @lua_pushnil(i32* %114)
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @lua_pushliteral(i32* %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 2, i32* %4, align 4
  br label %151

118:                                              ; preds = %104
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @ngx_http_lua_socket_read_error_retval_handler(%struct.TYPE_17__* %119, %struct.TYPE_18__* %120, i32* %121)
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @lua_pushvalue(i32* %123, i32 -3)
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @lua_remove(i32* %125, i32 -4)
  store i32 3, i32* %4, align 4
  br label %151

127:                                              ; preds = %95
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = call i32 @ngx_http_lua_socket_read_error_retval_handler(%struct.TYPE_17__* %128, %struct.TYPE_18__* %129, i32* %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32*, i32** %7, align 8
  %133 = call i32 @lua_pushliteral(i32* %132, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %4, align 4
  br label %151

136:                                              ; preds = %80
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %138 = load i32*, i32** %10, align 8
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %140 = load i32*, i32** %7, align 8
  %141 = call i64 @ngx_http_lua_socket_push_input_data(%struct.TYPE_17__* %137, i32* %138, %struct.TYPE_18__* %139, i32* %140)
  store i64 %141, i64* %9, align 8
  %142 = load i64, i64* %9, align 8
  %143 = load i64, i64* @NGX_ERROR, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %136
  %146 = load i32*, i32** %7, align 8
  %147 = call i32 @lua_pushnil(i32* %146)
  %148 = load i32*, i32** %7, align 8
  %149 = call i32 @lua_pushliteral(i32* %148, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 2, i32* %4, align 4
  br label %151

150:                                              ; preds = %136
  store i32 1, i32* %4, align 4
  br label %151

151:                                              ; preds = %150, %145, %127, %118, %113, %68
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32* @ngx_http_get_module_ctx(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_19__* @ngx_http_get_module_loc_conf(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @dd(i8*, i64) #1

declare dso_local i64 @ngx_add_event(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i64 @ngx_http_lua_socket_push_input_data(%struct.TYPE_17__*, i32*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @ngx_http_lua_socket_read_error_retval_handler(%struct.TYPE_17__*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
