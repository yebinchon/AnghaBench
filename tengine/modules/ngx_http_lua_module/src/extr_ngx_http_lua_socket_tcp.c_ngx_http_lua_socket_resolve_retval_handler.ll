; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_resolve_retval_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_resolve_retval_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i32, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_38__ = type { i32, i32, i32, %struct.TYPE_40__*, i32, i8*, i8*, %struct.TYPE_30__, i8*, i32*, %struct.TYPE_36__*, %struct.TYPE_35__ }
%struct.TYPE_40__ = type { %struct.TYPE_38__*, i32 }
%struct.TYPE_30__ = type { i32*, i32** }
%struct.TYPE_36__ = type { i32, i32, i64 }
%struct.TYPE_35__ = type { %struct.TYPE_29__*, i32, i32*, i32, i64 }
%struct.TYPE_29__ = type { %struct.TYPE_31__*, %struct.TYPE_32__*, i64, i32, %struct.TYPE_33__*, i32, %struct.TYPE_38__* }
%struct.TYPE_31__ = type { i32, i8* }
%struct.TYPE_32__ = type { i32, i8* }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_39__ = type { i64, %struct.TYPE_40__* }
%struct.TYPE_41__ = type { i32, %struct.TYPE_38__* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"lua tcp socket resolve retval handler\00", align 1
@NGX_HTTP_LUA_SOCKET_FT_RESOLVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"resolver not working\00", align 1
@ngx_http_lua_socket_tcp_get_peer = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_socket_errno = common dso_local global i8* null, align 8
@NGX_HTTP_LUA_SOCKET_FT_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@ngx_http_lua_socket_tcp_cleanup = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"lua tcp socket connect: %i\00", align 1
@NGX_BUSY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"no live connection\00", align 1
@NGX_DECLINED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"socket errno: %d\00", align 1
@ngx_http_lua_socket_tcp_handler = common dso_local global i8* null, align 8
@ngx_http_lua_socket_connected_handler = common dso_local global i8* null, align 8
@NGX_HTTP_LUA_SOCKET_FT_NOMEM = common dso_local global i32 0, align 4
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"setting data to %p\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [32 x i8] c"lua tcp socket connected: fd:%d\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"failed to handle write event\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"failed to handle read event\00", align 1
@ngx_http_lua_socket_dummy_handler = common dso_local global i8* null, align 8
@ngx_http_lua_coctx_cleanup = common dso_local global i32 0, align 4
@ngx_http_lua_socket_tcp_conn_retval_handler = common dso_local global i32 0, align 4
@ngx_http_lua_content_wev_handler = common dso_local global i32 0, align 4
@ngx_http_core_run_phases = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_37__*, %struct.TYPE_38__*, i32*)* @ngx_http_lua_socket_resolve_retval_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_socket_resolve_retval_handler(%struct.TYPE_37__* %0, %struct.TYPE_38__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_37__*, align 8
  %6 = alloca %struct.TYPE_38__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_39__*, align 8
  %9 = alloca %struct.TYPE_35__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_41__*, align 8
  %12 = alloca %struct.TYPE_36__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_40__*, align 8
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %5, align 8
  store %struct.TYPE_38__* %1, %struct.TYPE_38__** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %16 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ngx_log_debug0(i32 %15, i32 %20, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_RESOLVER, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 2, i32* %4, align 4
  br label %345

29:                                               ; preds = %3
  %30 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %30, i32 0, i32 11
  store %struct.TYPE_35__* %31, %struct.TYPE_35__** %9, align 8
  %32 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %32, i32 0, i32 10
  %34 = load %struct.TYPE_36__*, %struct.TYPE_36__** %33, align 8
  store %struct.TYPE_36__* %34, %struct.TYPE_36__** %12, align 8
  %35 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %29
  %40 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %43, i32 0, i32 4
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %52, i32 0, i32 2
  store i32* %51, i32** %53, align 8
  br label %59

54:                                               ; preds = %29
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @lua_pushnil(i32* %55)
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @lua_pushliteral(i32* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %4, align 4
  br label %345

59:                                               ; preds = %39
  %60 = load i32, i32* @ngx_http_lua_socket_tcp_get_peer, align 4
  %61 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %64 = call i64 @ngx_event_connect_peer(%struct.TYPE_35__* %63)
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* @NGX_ERROR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i8*, i8** @ngx_socket_errno, align 8
  %70 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %70, i32 0, i32 8
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %68, %59
  %73 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %73, i32 0, i32 9
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %103

77:                                               ; preds = %72
  %78 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %79 = call %struct.TYPE_41__* @ngx_http_lua_cleanup_add(%struct.TYPE_37__* %78, i32 0)
  store %struct.TYPE_41__* %79, %struct.TYPE_41__** %11, align 8
  %80 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %81 = icmp eq %struct.TYPE_41__* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_ERROR, align 4
  %84 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @lua_pushnil(i32* %88)
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @lua_pushliteral(i32* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 2, i32* %4, align 4
  br label %345

92:                                               ; preds = %77
  %93 = load i32, i32* @ngx_http_lua_socket_tcp_cleanup, align 4
  %94 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %97 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %97, i32 0, i32 1
  store %struct.TYPE_38__* %96, %struct.TYPE_38__** %98, align 8
  %99 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %101, i32 0, i32 9
  store i32* %100, i32** %102, align 8
  br label %103

103:                                              ; preds = %92, %72
  %104 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %105 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_34__*, %struct.TYPE_34__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i64, i64* %13, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @ngx_log_debug1(i32 %104, i32 %109, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = load i64, i64* %13, align 8
  %114 = load i64, i64* @NGX_ERROR, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %103
  %117 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %118 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @ngx_http_lua_socket_conn_error_retval_handler(%struct.TYPE_37__* %117, %struct.TYPE_38__* %118, i32* %119)
  store i32 %120, i32* %4, align 4
  br label %345

121:                                              ; preds = %103
  %122 = load i64, i64* %13, align 8
  %123 = load i64, i64* @NGX_BUSY, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %121
  %126 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_ERROR, align 4
  %127 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 @lua_pushnil(i32* %131)
  %133 = load i32*, i32** %7, align 8
  %134 = call i32 @lua_pushliteral(i32* %133, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32 2, i32* %4, align 4
  br label %345

135:                                              ; preds = %121
  %136 = load i64, i64* %13, align 8
  %137 = load i64, i64* @NGX_DECLINED, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %155

139:                                              ; preds = %135
  %140 = load i8*, i8** @ngx_socket_errno, align 8
  %141 = ptrtoint i8* %140 to i32
  %142 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_ERROR, align 4
  %144 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = load i8*, i8** @ngx_socket_errno, align 8
  %149 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %149, i32 0, i32 8
  store i8* %148, i8** %150, align 8
  %151 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %152 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = call i32 @ngx_http_lua_socket_conn_error_retval_handler(%struct.TYPE_37__* %151, %struct.TYPE_38__* %152, i32* %153)
  store i32 %154, i32* %4, align 4
  br label %345

155:                                              ; preds = %135
  %156 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %157, align 8
  store %struct.TYPE_29__* %158, %struct.TYPE_29__** %10, align 8
  %159 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %160 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i32 0, i32 6
  store %struct.TYPE_38__* %159, %struct.TYPE_38__** %161, align 8
  %162 = load i8*, i8** @ngx_http_lua_socket_tcp_handler, align 8
  %163 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_31__*, %struct.TYPE_31__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %165, i32 0, i32 1
  store i8* %162, i8** %166, align 8
  %167 = load i8*, i8** @ngx_http_lua_socket_tcp_handler, align 8
  %168 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_32__*, %struct.TYPE_32__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %170, i32 0, i32 1
  store i8* %167, i8** %171, align 8
  %172 = load i8*, i8** @ngx_http_lua_socket_connected_handler, align 8
  %173 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %173, i32 0, i32 5
  store i8* %172, i8** %174, align 8
  %175 = load i8*, i8** @ngx_http_lua_socket_connected_handler, align 8
  %176 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %176, i32 0, i32 6
  store i8* %175, i8** %177, align 8
  %178 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_34__*, %struct.TYPE_34__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 8
  %186 = and i32 %185, %182
  store i32 %186, i32* %184, align 8
  %187 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %187, i32 0, i32 4
  %189 = load %struct.TYPE_33__*, %struct.TYPE_33__** %188, align 8
  %190 = icmp eq %struct.TYPE_33__* %189, null
  br i1 %190, label %191, label %211

191:                                              ; preds = %155
  %192 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_34__*, %struct.TYPE_34__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call %struct.TYPE_33__* @ngx_create_pool(i32 128, i32 %196)
  %198 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %198, i32 0, i32 4
  store %struct.TYPE_33__* %197, %struct.TYPE_33__** %199, align 8
  %200 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %200, i32 0, i32 4
  %202 = load %struct.TYPE_33__*, %struct.TYPE_33__** %201, align 8
  %203 = icmp eq %struct.TYPE_33__* %202, null
  br i1 %203, label %204, label %210

204:                                              ; preds = %191
  %205 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %206 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %207 = load i32*, i32** %7, align 8
  %208 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_NOMEM, align 4
  %209 = call i32 @ngx_http_lua_socket_prepare_error_retvals(%struct.TYPE_37__* %205, %struct.TYPE_38__* %206, i32* %207, i32 %208)
  store i32 %209, i32* %4, align 4
  br label %345

210:                                              ; preds = %191
  br label %211

211:                                              ; preds = %210, %155
  %212 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_34__*, %struct.TYPE_34__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %217, i32 0, i32 3
  store i32 %216, i32* %218, align 8
  %219 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %222, i32 0, i32 4
  %224 = load %struct.TYPE_33__*, %struct.TYPE_33__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %224, i32 0, i32 0
  store i32 %221, i32* %225, align 4
  %226 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_32__*, %struct.TYPE_32__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %231, i32 0, i32 0
  store i32 %228, i32* %232, align 8
  %233 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_31__*, %struct.TYPE_31__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %238, i32 0, i32 0
  store i32 %235, i32* %239, align 8
  %240 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %241 = load i32, i32* @ngx_http_lua_module, align 4
  %242 = call %struct.TYPE_39__* @ngx_http_get_module_ctx(%struct.TYPE_37__* %240, i32 %241)
  store %struct.TYPE_39__* %242, %struct.TYPE_39__** %8, align 8
  %243 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_40__*, %struct.TYPE_40__** %244, align 8
  store %struct.TYPE_40__* %245, %struct.TYPE_40__** %14, align 8
  %246 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %247 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_38__* %246)
  %248 = load i64, i64* %13, align 8
  %249 = load i64, i64* @NGX_OK, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %303

251:                                              ; preds = %211
  %252 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %253 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_34__*, %struct.TYPE_34__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = trunc i64 %260 to i32
  %262 = call i32 @ngx_log_debug1(i32 %252, i32 %257, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %261)
  %263 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_31__*, %struct.TYPE_31__** %264, align 8
  %266 = call i64 @ngx_handle_write_event(%struct.TYPE_31__* %265, i32 0)
  %267 = load i64, i64* @NGX_OK, align 8
  %268 = icmp ne i64 %266, %267
  br i1 %268, label %269, label %278

269:                                              ; preds = %251
  %270 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %271 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %272 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_ERROR, align 4
  %273 = call i32 @ngx_http_lua_socket_handle_conn_error(%struct.TYPE_37__* %270, %struct.TYPE_38__* %271, i32 %272)
  %274 = load i32*, i32** %7, align 8
  %275 = call i32 @lua_pushnil(i32* %274)
  %276 = load i32*, i32** %7, align 8
  %277 = call i32 @lua_pushliteral(i32* %276, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  store i32 2, i32* %4, align 4
  br label %345

278:                                              ; preds = %251
  %279 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_32__*, %struct.TYPE_32__** %280, align 8
  %282 = call i64 @ngx_handle_read_event(%struct.TYPE_32__* %281, i32 0)
  %283 = load i64, i64* @NGX_OK, align 8
  %284 = icmp ne i64 %282, %283
  br i1 %284, label %285, label %294

285:                                              ; preds = %278
  %286 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %287 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %288 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_ERROR, align 4
  %289 = call i32 @ngx_http_lua_socket_handle_conn_error(%struct.TYPE_37__* %286, %struct.TYPE_38__* %287, i32 %288)
  %290 = load i32*, i32** %7, align 8
  %291 = call i32 @lua_pushnil(i32* %290)
  %292 = load i32*, i32** %7, align 8
  %293 = call i32 @lua_pushliteral(i32* %292, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  store i32 2, i32* %4, align 4
  br label %345

294:                                              ; preds = %278
  %295 = load i8*, i8** @ngx_http_lua_socket_dummy_handler, align 8
  %296 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %296, i32 0, i32 6
  store i8* %295, i8** %297, align 8
  %298 = load i8*, i8** @ngx_http_lua_socket_dummy_handler, align 8
  %299 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %299, i32 0, i32 5
  store i8* %298, i8** %300, align 8
  %301 = load i32*, i32** %7, align 8
  %302 = call i32 @lua_pushinteger(i32* %301, i32 1)
  store i32 1, i32* %4, align 4
  br label %345

303:                                              ; preds = %211
  %304 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %305 = call i32 @ngx_http_lua_cleanup_pending_operation(%struct.TYPE_40__* %304)
  %306 = load i32, i32* @ngx_http_lua_coctx_cleanup, align 4
  %307 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %308 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %307, i32 0, i32 1
  store i32 %306, i32* %308, align 8
  %309 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %310 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %311 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %310, i32 0, i32 0
  store %struct.TYPE_38__* %309, %struct.TYPE_38__** %311, align 8
  %312 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %313 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %312, i32 0, i32 0
  %314 = load %struct.TYPE_31__*, %struct.TYPE_31__** %313, align 8
  %315 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @ngx_add_timer(%struct.TYPE_31__* %314, i32 %317)
  %319 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %319, i32 0, i32 1
  %321 = load %struct.TYPE_40__*, %struct.TYPE_40__** %320, align 8
  %322 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %322, i32 0, i32 3
  store %struct.TYPE_40__* %321, %struct.TYPE_40__** %323, align 8
  %324 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %324, i32 0, i32 1
  store i32 1, i32* %325, align 4
  %326 = load i32, i32* @ngx_http_lua_socket_tcp_conn_retval_handler, align 4
  %327 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %327, i32 0, i32 2
  store i32 %326, i32* %328, align 8
  %329 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %330 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_38__* %329)
  %331 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %339

335:                                              ; preds = %303
  %336 = load i32, i32* @ngx_http_lua_content_wev_handler, align 4
  %337 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %337, i32 0, i32 0
  store i32 %336, i32* %338, align 8
  br label %343

339:                                              ; preds = %303
  %340 = load i32, i32* @ngx_http_core_run_phases, align 4
  %341 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %341, i32 0, i32 0
  store i32 %340, i32* %342, align 8
  br label %343

343:                                              ; preds = %339, %335
  %344 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %344, i32* %4, align 4
  br label %345

345:                                              ; preds = %343, %294, %285, %269, %204, %139, %125, %116, %82, %54, %28
  %346 = load i32, i32* %4, align 4
  ret i32 %346
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i64 @ngx_event_connect_peer(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_41__* @ngx_http_lua_cleanup_add(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_http_lua_socket_conn_error_retval_handler(%struct.TYPE_37__*, %struct.TYPE_38__*, i32*) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local %struct.TYPE_33__* @ngx_create_pool(i32, i32) #1

declare dso_local i32 @ngx_http_lua_socket_prepare_error_retvals(%struct.TYPE_37__*, %struct.TYPE_38__*, i32*, i32) #1

declare dso_local %struct.TYPE_39__* @ngx_http_get_module_ctx(%struct.TYPE_37__*, i32) #1

declare dso_local i64 @ngx_handle_write_event(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @ngx_http_lua_socket_handle_conn_error(%struct.TYPE_37__*, %struct.TYPE_38__*, i32) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_cleanup_pending_operation(%struct.TYPE_40__*) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_31__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
