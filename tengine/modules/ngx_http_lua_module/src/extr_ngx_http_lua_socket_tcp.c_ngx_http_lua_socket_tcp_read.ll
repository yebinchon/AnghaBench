; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_read.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i64, %struct.TYPE_32__*, %struct.TYPE_31__*, i32, i32, %struct.TYPE_29__* }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_34__ = type { i32, i64 (i32, i64)*, i32, i64, i32, i64, %struct.TYPE_28__, i64, i64, i32, %struct.TYPE_30__ }
%struct.TYPE_28__ = type { i64, i64, i64 }
%struct.TYPE_30__ = type { %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i64 (%struct.TYPE_37__*, i64, i64)*, %struct.TYPE_36__*, i32 }
%struct.TYPE_36__ = type { i64, i64, i64 }
%struct.TYPE_35__ = type { i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"lua tcp socket read data: wait:%d\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"lua tcp socket receive done: wait:%d, eof:%d, uri:\22%V?%V\22\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_HTTP_CLIENT_CLOSED_REQUEST = common dso_local global i64 0, align 8
@NGX_HTTP_LUA_SOCKET_FT_CLIENTABORT = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_SOCKET_FT_ERROR = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"input filter error: ft_type:%d wait:%d\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_HTTP_LUA_SOCKET_FT_NOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"request body rest is zero\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"lua request body exhausted\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"http client request body preread %O\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"lua tcp socket try to recv data %uz: \22%V?%V\22\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"read event ready: %d\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"lua tcp socket recv returned %d: \22%V?%V\22\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"socket recv busy\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"lua tcp socket closed\00", align 1
@ngx_socket_errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_33__*, %struct.TYPE_34__*)* @ngx_http_lua_socket_tcp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_lua_socket_tcp_read(%struct.TYPE_33__* %0, %struct.TYPE_34__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_37__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_36__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_35__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %4, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %5, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %15, i32 0, i32 10
  %17 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  store %struct.TYPE_37__* %18, %struct.TYPE_37__** %7, align 8
  %19 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  store %struct.TYPE_36__* %21, %struct.TYPE_36__** %9, align 8
  %22 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %23 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @ngx_log_debug1(i32 %22, i32 %25, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %31, i32 0, i32 6
  store %struct.TYPE_28__* %32, %struct.TYPE_28__** %8, align 8
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %574, %528, %404, %297, %253, %182, %2
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %36, %39
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %33
  %44 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %183

48:                                               ; preds = %43, %33
  %49 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %49, i32 0, i32 1
  %51 = load i64 (i32, i64)*, i64 (i32, i64)** %50, align 8
  %52 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i64 %51(i32 %54, i64 %55)
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @NGX_OK, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %148

60:                                               ; preds = %48
  %61 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %62 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_31__*, %struct.TYPE_31__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %76, i32 0, i32 3
  %78 = call i32 @ngx_log_debug4(i32 %61, i32 %66, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %73, i32* %75, i32* %77)
  %79 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %131

83:                                               ; preds = %60
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %131

91:                                               ; preds = %83
  %92 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_32__*, %struct.TYPE_32__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %131

98:                                               ; preds = %91
  %99 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %100 = load i32, i32* @ngx_http_lua_module, align 4
  %101 = call %struct.TYPE_35__* @ngx_http_get_module_loc_conf(%struct.TYPE_33__* %99, i32 %100)
  store %struct.TYPE_35__* %101, %struct.TYPE_35__** %14, align 8
  %102 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %130

106:                                              ; preds = %98
  %107 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %108 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %109 = call i64 @ngx_http_lua_check_broken_connection(%struct.TYPE_33__* %107, %struct.TYPE_36__* %108)
  store i64 %109, i64* %6, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* @NGX_OK, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %143

114:                                              ; preds = %106
  %115 = load i64, i64* %6, align 8
  %116 = load i64, i64* @NGX_HTTP_CLIENT_CLOSED_REQUEST, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %120 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %121 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_CLIENTABORT, align 4
  %122 = call i32 @ngx_http_lua_socket_handle_read_error(%struct.TYPE_33__* %119, %struct.TYPE_34__* %120, i32 %121)
  br label %128

123:                                              ; preds = %114
  %124 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %125 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %126 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_ERROR, align 4
  %127 = call i32 @ngx_http_lua_socket_handle_read_error(%struct.TYPE_33__* %124, %struct.TYPE_34__* %125, i32 %126)
  br label %128

128:                                              ; preds = %123, %118
  %129 = load i64, i64* @NGX_ERROR, align 8
  store i64 %129, i64* %3, align 8
  br label %608

130:                                              ; preds = %98
  br label %131

131:                                              ; preds = %130, %91, %83, %60
  %132 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %133 = call i64 @ngx_handle_read_event(%struct.TYPE_36__* %132, i32 0)
  %134 = load i64, i64* @NGX_OK, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %138 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %139 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_ERROR, align 4
  %140 = call i32 @ngx_http_lua_socket_handle_read_error(%struct.TYPE_33__* %137, %struct.TYPE_34__* %138, i32 %139)
  %141 = load i64, i64* @NGX_ERROR, align 8
  store i64 %141, i64* %3, align 8
  br label %608

142:                                              ; preds = %131
  br label %143

143:                                              ; preds = %142, %113
  %144 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %145 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %146 = call i32 @ngx_http_lua_socket_handle_read_success(%struct.TYPE_33__* %144, %struct.TYPE_34__* %145)
  %147 = load i64, i64* @NGX_OK, align 8
  store i64 %147, i64* %3, align 8
  br label %608

148:                                              ; preds = %48
  %149 = load i64, i64* %6, align 8
  %150 = load i64, i64* @NGX_ERROR, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %167

152:                                              ; preds = %148
  %153 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %153, i32 0, i32 8
  %155 = load i64, i64* %154, align 8
  %156 = trunc i64 %155 to i32
  %157 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %157, i32 0, i32 7
  %159 = load i64, i64* %158, align 8
  %160 = trunc i64 %159 to i32
  %161 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %156, i32 %160)
  %162 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %163 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %164 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_ERROR, align 4
  %165 = call i32 @ngx_http_lua_socket_handle_read_error(%struct.TYPE_33__* %162, %struct.TYPE_34__* %163, i32 %164)
  %166 = load i64, i64* @NGX_ERROR, align 8
  store i64 %166, i64* %3, align 8
  br label %608

167:                                              ; preds = %148
  %168 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %167
  %173 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_32__*, %struct.TYPE_32__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %172
  %180 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %180, i32 0, i32 0
  store i32 1, i32* %181, align 8
  br label %182

182:                                              ; preds = %179, %172, %167
  br label %33

183:                                              ; preds = %43
  %184 = load i32, i32* %12, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %183
  %187 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %186
  %192 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %192, i64* %6, align 8
  br label %575

193:                                              ; preds = %186, %183
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = sub i64 %196, %199
  store i64 %200, i64* %10, align 8
  %201 = load i64, i64* %10, align 8
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %226

203:                                              ; preds = %193
  %204 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %205 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %206 = call i64 @ngx_http_lua_socket_add_input_buffer(%struct.TYPE_33__* %204, %struct.TYPE_34__* %205)
  store i64 %206, i64* %6, align 8
  %207 = load i64, i64* %6, align 8
  %208 = load i64, i64* @NGX_ERROR, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %203
  %211 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %212 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %213 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_NOMEM, align 4
  %214 = call i32 @ngx_http_lua_socket_handle_read_error(%struct.TYPE_33__* %211, %struct.TYPE_34__* %212, i32 %213)
  %215 = load i64, i64* @NGX_ERROR, align 8
  store i64 %215, i64* %3, align 8
  br label %608

216:                                              ; preds = %203
  %217 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %217, i32 0, i32 6
  store %struct.TYPE_28__* %218, %struct.TYPE_28__** %8, align 8
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = sub i64 %221, %224
  store i64 %225, i64* %10, align 8
  br label %226

226:                                              ; preds = %216, %193
  %227 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %227, i32 0, i32 5
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %285

231:                                              ; preds = %226
  %232 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %232, i32 0, i32 5
  %234 = load %struct.TYPE_29__*, %struct.TYPE_29__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %237, i32 0, i32 5
  %239 = load %struct.TYPE_29__*, %struct.TYPE_29__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = sub nsw i32 %236, %241
  store i32 %242, i32* %13, align 4
  %243 = load i32, i32* %13, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %284

245:                                              ; preds = %231
  %246 = load i64, i64* %10, align 8
  %247 = trunc i64 %246 to i32
  %248 = load i32, i32* %13, align 4
  %249 = icmp sgt i32 %247, %248
  br i1 %249, label %250, label %253

250:                                              ; preds = %245
  %251 = load i32, i32* %13, align 4
  %252 = sext i32 %251 to i64
  store i64 %252, i64* %10, align 8
  br label %253

253:                                              ; preds = %250, %245
  %254 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %255 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %255, i32 0, i32 5
  %257 = load %struct.TYPE_29__*, %struct.TYPE_29__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load i64, i64* %10, align 8
  %261 = call i32 @ngx_http_lua_probe_req_socket_consume_preread(%struct.TYPE_33__* %254, i32 %259, i64 %260)
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %265, i32 0, i32 5
  %267 = load %struct.TYPE_29__*, %struct.TYPE_29__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load i64, i64* %10, align 8
  %271 = call i8* @ngx_copy(i64 %264, i32 %269, i64 %270)
  %272 = ptrtoint i8* %271 to i64
  %273 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %273, i32 0, i32 0
  store i64 %272, i64* %274, align 8
  %275 = load i64, i64* %10, align 8
  %276 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %276, i32 0, i32 5
  %278 = load %struct.TYPE_29__*, %struct.TYPE_29__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = add i64 %281, %275
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %279, align 4
  br label %33

284:                                              ; preds = %231
  br label %421

285:                                              ; preds = %226
  %286 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %286, i32 0, i32 3
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %420

290:                                              ; preds = %285
  %291 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %291, i32 0, i32 1
  %293 = load %struct.TYPE_32__*, %struct.TYPE_32__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %297, label %308

297:                                              ; preds = %290
  %298 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %299 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %299, i32 0, i32 0
  store i32 1, i32* %300, align 8
  %301 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %302 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %302, i32 0, i32 2
  %304 = load %struct.TYPE_31__*, %struct.TYPE_31__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @ngx_log_debug0(i32 %301, i32 %306, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %33

308:                                              ; preds = %290
  %309 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %309, i32 0, i32 5
  %311 = load %struct.TYPE_29__*, %struct.TYPE_29__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %314, i32 0, i32 5
  %316 = load %struct.TYPE_29__*, %struct.TYPE_29__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = sub nsw i32 %313, %318
  store i32 %319, i32* %13, align 4
  %320 = load i32, i32* %13, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %405

322:                                              ; preds = %308
  %323 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %324 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %324, i32 0, i32 2
  %326 = load %struct.TYPE_31__*, %struct.TYPE_31__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* %13, align 4
  %330 = call i32 @ngx_log_debug1(i32 %323, i32 %328, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %329)
  %331 = load i32, i32* %13, align 4
  %332 = sext i32 %331 to i64
  %333 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %333, i32 0, i32 1
  %335 = load %struct.TYPE_32__*, %struct.TYPE_32__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = icmp uge i64 %332, %337
  br i1 %338, label %339, label %346

339:                                              ; preds = %322
  %340 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %340, i32 0, i32 1
  %342 = load %struct.TYPE_32__*, %struct.TYPE_32__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = trunc i64 %344 to i32
  store i32 %345, i32* %13, align 4
  br label %346

346:                                              ; preds = %339, %322
  %347 = load i64, i64* %10, align 8
  %348 = trunc i64 %347 to i32
  %349 = load i32, i32* %13, align 4
  %350 = icmp sgt i32 %348, %349
  br i1 %350, label %351, label %354

351:                                              ; preds = %346
  %352 = load i32, i32* %13, align 4
  %353 = sext i32 %352 to i64
  store i64 %353, i64* %10, align 8
  br label %354

354:                                              ; preds = %351, %346
  %355 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %356 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %356, i32 0, i32 5
  %358 = load %struct.TYPE_29__*, %struct.TYPE_29__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = load i64, i64* %10, align 8
  %362 = call i32 @ngx_http_lua_probe_req_socket_consume_preread(%struct.TYPE_33__* %355, i32 %360, i64 %361)
  %363 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %364 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %366, i32 0, i32 5
  %368 = load %struct.TYPE_29__*, %struct.TYPE_29__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = load i64, i64* %10, align 8
  %372 = call i8* @ngx_copy(i64 %365, i32 %370, i64 %371)
  %373 = ptrtoint i8* %372 to i64
  %374 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %375 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %374, i32 0, i32 0
  store i64 %373, i64* %375, align 8
  %376 = load i64, i64* %10, align 8
  %377 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %377, i32 0, i32 5
  %379 = load %struct.TYPE_29__*, %struct.TYPE_29__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = sext i32 %381 to i64
  %383 = add i64 %382, %376
  %384 = trunc i64 %383 to i32
  store i32 %384, i32* %380, align 4
  %385 = load i64, i64* %10, align 8
  %386 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %387 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = add i64 %388, %385
  store i64 %389, i64* %387, align 8
  %390 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %391 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %390, i32 0, i32 1
  %392 = load %struct.TYPE_32__*, %struct.TYPE_32__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %404

396:                                              ; preds = %354
  %397 = load i64, i64* %10, align 8
  %398 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %399 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %398, i32 0, i32 1
  %400 = load %struct.TYPE_32__*, %struct.TYPE_32__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %400, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = sub i64 %402, %397
  store i64 %403, i64* %401, align 8
  br label %404

404:                                              ; preds = %396, %354
  br label %33

405:                                              ; preds = %308
  %406 = load i64, i64* %10, align 8
  %407 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %407, i32 0, i32 1
  %409 = load %struct.TYPE_32__*, %struct.TYPE_32__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %409, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = icmp ugt i64 %406, %411
  br i1 %412, label %413, label %419

413:                                              ; preds = %405
  %414 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %415 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %414, i32 0, i32 1
  %416 = load %struct.TYPE_32__*, %struct.TYPE_32__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  store i64 %418, i64* %10, align 8
  br label %419

419:                                              ; preds = %413, %405
  br label %420

420:                                              ; preds = %419, %285
  br label %421

421:                                              ; preds = %420, %284
  %422 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %423 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %422, i32 0, i32 1
  %424 = load i64, i64* %423, align 8
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %433

426:                                              ; preds = %421
  %427 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %428 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %427, i32 0, i32 2
  %429 = load i64, i64* %428, align 8
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %433, label %431

431:                                              ; preds = %426
  %432 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %432, i64* %6, align 8
  br label %575

433:                                              ; preds = %426, %421
  %434 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %435 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %436 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %435, i32 0, i32 2
  %437 = load %struct.TYPE_31__*, %struct.TYPE_31__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 4
  %440 = load i64, i64* %10, align 8
  %441 = trunc i64 %440 to i32
  %442 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %443 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %442, i32 0, i32 4
  %444 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %445 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %444, i32 0, i32 3
  %446 = call i32 @ngx_log_debug3(i32 %434, i32 %439, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %441, i32* %443, i32* %445)
  %447 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %448 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %447, i32 0, i32 0
  %449 = load i64 (%struct.TYPE_37__*, i64, i64)*, i64 (%struct.TYPE_37__*, i64, i64)** %448, align 8
  %450 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %451 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %452 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %451, i32 0, i32 0
  %453 = load i64, i64* %452, align 8
  %454 = load i64, i64* %10, align 8
  %455 = call i64 %449(%struct.TYPE_37__* %450, i64 %453, i64 %454)
  store i64 %455, i64* %11, align 8
  %456 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %457 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %456, i32 0, i32 1
  %458 = load %struct.TYPE_36__*, %struct.TYPE_36__** %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %458, i32 0, i32 2
  %460 = load i64, i64* %459, align 8
  %461 = trunc i64 %460 to i32
  %462 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %461)
  store i32 1, i32* %12, align 4
  %463 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %464 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %465 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %464, i32 0, i32 2
  %466 = load %struct.TYPE_31__*, %struct.TYPE_31__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 4
  %469 = load i64, i64* %11, align 8
  %470 = trunc i64 %469 to i32
  %471 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %472 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %471, i32 0, i32 4
  %473 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %474 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %473, i32 0, i32 3
  %475 = call i32 @ngx_log_debug3(i32 %463, i32 %468, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %470, i32* %472, i32* %474)
  %476 = load i64, i64* %11, align 8
  %477 = load i64, i64* @NGX_AGAIN, align 8
  %478 = icmp eq i64 %476, %477
  br i1 %478, label %479, label %482

479:                                              ; preds = %433
  %480 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %480, i64* %6, align 8
  %481 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  br label %575

482:                                              ; preds = %433
  %483 = load i64, i64* %11, align 8
  %484 = icmp eq i64 %483, 0
  br i1 %484, label %485, label %538

485:                                              ; preds = %482
  %486 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %487 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %486, i32 0, i32 5
  %488 = load i64, i64* %487, align 8
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %495, label %490

490:                                              ; preds = %485
  %491 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %492 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %491, i32 0, i32 3
  %493 = load i64, i64* %492, align 8
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %528

495:                                              ; preds = %490, %485
  %496 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %497 = load i32, i32* @ngx_http_lua_module, align 4
  %498 = call %struct.TYPE_35__* @ngx_http_get_module_loc_conf(%struct.TYPE_33__* %496, i32 %497)
  store %struct.TYPE_35__* %498, %struct.TYPE_35__** %14, align 8
  %499 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %500 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %499, i32 0, i32 0
  %501 = load i64, i64* %500, align 8
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %503, label %509

503:                                              ; preds = %495
  %504 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %505 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %506 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_CLIENTABORT, align 4
  %507 = call i32 @ngx_http_lua_socket_handle_read_error(%struct.TYPE_33__* %504, %struct.TYPE_34__* %505, i32 %506)
  %508 = load i64, i64* @NGX_ERROR, align 8
  store i64 %508, i64* %3, align 8
  br label %608

509:                                              ; preds = %495
  %510 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %511 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %510, i32 0, i32 3
  %512 = load i64, i64* %511, align 8
  %513 = icmp ne i64 %512, 0
  br i1 %513, label %514, label %527

514:                                              ; preds = %509
  %515 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %516 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %515, i32 0, i32 1
  %517 = load %struct.TYPE_32__*, %struct.TYPE_32__** %516, align 8
  %518 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %517, i32 0, i32 0
  %519 = load i64, i64* %518, align 8
  %520 = icmp ne i64 %519, 0
  br i1 %520, label %521, label %527

521:                                              ; preds = %514
  %522 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %523 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %524 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_CLIENTABORT, align 4
  %525 = call i32 @ngx_http_lua_socket_handle_read_error(%struct.TYPE_33__* %522, %struct.TYPE_34__* %523, i32 %524)
  %526 = load i64, i64* @NGX_ERROR, align 8
  store i64 %526, i64* %3, align 8
  br label %608

527:                                              ; preds = %514, %509
  br label %528

528:                                              ; preds = %527, %490
  %529 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %530 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %529, i32 0, i32 0
  store i32 1, i32* %530, align 8
  %531 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %532 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %533 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %532, i32 0, i32 2
  %534 = load %struct.TYPE_31__*, %struct.TYPE_31__** %533, align 8
  %535 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 4
  %537 = call i32 @ngx_log_debug0(i32 %531, i32 %536, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %33

538:                                              ; preds = %482
  %539 = load i64, i64* %11, align 8
  %540 = load i64, i64* @NGX_ERROR, align 8
  %541 = icmp eq i64 %539, %540
  br i1 %541, label %542, label %551

542:                                              ; preds = %538
  %543 = load i32, i32* @ngx_socket_errno, align 4
  %544 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %545 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %544, i32 0, i32 4
  store i32 %543, i32* %545, align 8
  %546 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %547 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %548 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_ERROR, align 4
  %549 = call i32 @ngx_http_lua_socket_handle_read_error(%struct.TYPE_33__* %546, %struct.TYPE_34__* %547, i32 %548)
  %550 = load i64, i64* @NGX_ERROR, align 8
  store i64 %550, i64* %3, align 8
  br label %608

551:                                              ; preds = %538
  %552 = load i64, i64* %11, align 8
  %553 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %554 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %553, i32 0, i32 0
  %555 = load i64, i64* %554, align 8
  %556 = add i64 %555, %552
  store i64 %556, i64* %554, align 8
  %557 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %558 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %557, i32 0, i32 3
  %559 = load i64, i64* %558, align 8
  %560 = icmp ne i64 %559, 0
  br i1 %560, label %561, label %574

561:                                              ; preds = %551
  %562 = load i64, i64* %11, align 8
  %563 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %564 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %563, i32 0, i32 0
  %565 = load i64, i64* %564, align 8
  %566 = add i64 %565, %562
  store i64 %566, i64* %564, align 8
  %567 = load i64, i64* %11, align 8
  %568 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %569 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %568, i32 0, i32 1
  %570 = load %struct.TYPE_32__*, %struct.TYPE_32__** %569, align 8
  %571 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %570, i32 0, i32 0
  %572 = load i64, i64* %571, align 8
  %573 = sub i64 %572, %567
  store i64 %573, i64* %571, align 8
  br label %574

574:                                              ; preds = %561, %551
  br label %33

575:                                              ; preds = %479, %431, %191
  %576 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %577 = call i64 @ngx_handle_read_event(%struct.TYPE_36__* %576, i32 0)
  %578 = load i64, i64* @NGX_OK, align 8
  %579 = icmp ne i64 %577, %578
  br i1 %579, label %580, label %586

580:                                              ; preds = %575
  %581 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %582 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %583 = load i32, i32* @NGX_HTTP_LUA_SOCKET_FT_ERROR, align 4
  %584 = call i32 @ngx_http_lua_socket_handle_read_error(%struct.TYPE_33__* %581, %struct.TYPE_34__* %582, i32 %583)
  %585 = load i64, i64* @NGX_ERROR, align 8
  store i64 %585, i64* %3, align 8
  br label %608

586:                                              ; preds = %575
  %587 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %588 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %587, i32 0, i32 1
  %589 = load i64, i64* %588, align 8
  %590 = icmp ne i64 %589, 0
  br i1 %590, label %591, label %597

591:                                              ; preds = %586
  %592 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %593 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %594 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %593, i32 0, i32 2
  %595 = load i32, i32* %594, align 8
  %596 = call i32 @ngx_add_timer(%struct.TYPE_36__* %592, i32 %595)
  br label %606

597:                                              ; preds = %586
  %598 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %599 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %598, i32 0, i32 0
  %600 = load i64, i64* %599, align 8
  %601 = icmp ne i64 %600, 0
  br i1 %601, label %602, label %605

602:                                              ; preds = %597
  %603 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %604 = call i32 @ngx_del_timer(%struct.TYPE_36__* %603)
  br label %605

605:                                              ; preds = %602, %597
  br label %606

606:                                              ; preds = %605, %591
  %607 = load i64, i64* %6, align 8
  store i64 %607, i64* %3, align 8
  br label %608

608:                                              ; preds = %606, %580, %542, %521, %503, %210, %152, %143, %136, %128
  %609 = load i64, i64* %3, align 8
  ret i64 %609
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_35__* @ngx_http_get_module_loc_conf(%struct.TYPE_33__*, i32) #1

declare dso_local i64 @ngx_http_lua_check_broken_connection(%struct.TYPE_33__*, %struct.TYPE_36__*) #1

declare dso_local i32 @ngx_http_lua_socket_handle_read_error(%struct.TYPE_33__*, %struct.TYPE_34__*, i32) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @ngx_http_lua_socket_handle_read_success(%struct.TYPE_33__*, %struct.TYPE_34__*) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local i64 @ngx_http_lua_socket_add_input_buffer(%struct.TYPE_33__*, %struct.TYPE_34__*) #1

declare dso_local i32 @ngx_http_lua_probe_req_socket_consume_preread(%struct.TYPE_33__*, i32, i64) #1

declare dso_local i8* @ngx_copy(i64, i32, i64) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_36__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
