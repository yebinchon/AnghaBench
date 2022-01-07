; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_accessby.c_ngx_http_lua_access_by_chunk.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_accessby.c_ngx_http_lua_access_by_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64, %struct.TYPE_34__*, i32, i32 }
%struct.TYPE_34__ = type { i32, %struct.TYPE_33__*, i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_31__ = type { i32, i32, i32, i32*, %struct.TYPE_28__*, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, i32, i32* }
%struct.TYPE_32__ = type { i32, %struct.TYPE_31__* }
%struct.TYPE_30__ = type { i64 }

@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"lua: failed to create new coroutine to handle request\00", align 1
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ctx = %p\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_lua_request_cleanup_handler = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_ACCESS = common dso_local global i32 0, align 4
@ngx_http_lua_rd_check_broken_connection = common dso_local global i32 0, align 4
@NGX_READ_EVENT = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_block_reading = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"returned %d\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"header already sent\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"eof not yet sent\00", align 1
@NGX_HTTP_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_29__*)* @ngx_http_lua_access_by_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_lua_access_by_chunk(i32* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca %struct.TYPE_34__*, align 8
  %12 = alloca %struct.TYPE_31__*, align 8
  %13 = alloca %struct.TYPE_32__*, align 8
  %14 = alloca %struct.TYPE_30__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %5, align 8
  %15 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32* @ngx_http_lua_new_thread(%struct.TYPE_29__* %15, i32* %16, i32* %6)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load i32, i32* @NGX_LOG_ERR, align 4
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ngx_log_error(i32 %21, i32 %26, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %28 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %28, i64* %3, align 8
  br label %255

29:                                               ; preds = %2
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @lua_xmove(i32* %30, i32* %31, i32 1)
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @ngx_http_lua_get_globals_table(i32* %33)
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @lua_setfenv(i32* %35, i32 -2)
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %39 = call i32 @ngx_http_lua_set_req(i32* %37, %struct.TYPE_29__* %38)
  %40 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %41 = load i32, i32* @ngx_http_lua_module, align 4
  %42 = call %struct.TYPE_31__* @ngx_http_get_module_ctx(%struct.TYPE_29__* %40, i32 %41)
  store %struct.TYPE_31__* %42, %struct.TYPE_31__** %12, align 8
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %44 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_31__* %43)
  %45 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %46 = icmp eq %struct.TYPE_31__* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %29
  %48 = load i64, i64* @NGX_ERROR, align 8
  store i64 %48, i64* %3, align 8
  br label %255

49:                                               ; preds = %29
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %53 = call i32 @ngx_http_lua_reset_ctx(%struct.TYPE_29__* %50, i32* %51, %struct.TYPE_31__* %52)
  %54 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 5
  %58 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %58, i32 0, i32 4
  store %struct.TYPE_28__* %57, %struct.TYPE_28__** %59, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 2
  store i32* %60, i32** %64, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 8
  %70 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %92

74:                                               ; preds = %49
  %75 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %76 = call %struct.TYPE_32__* @ngx_http_cleanup_add(%struct.TYPE_29__* %75, i32 0)
  store %struct.TYPE_32__* %76, %struct.TYPE_32__** %13, align 8
  %77 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %78 = icmp eq %struct.TYPE_32__* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %80, i64* %3, align 8
  br label %255

81:                                               ; preds = %74
  %82 = load i32, i32* @ngx_http_lua_request_cleanup_handler, align 4
  %83 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %86 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %86, i32 0, i32 1
  store %struct.TYPE_31__* %85, %struct.TYPE_31__** %87, align 8
  %88 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %90, i32 0, i32 3
  store i32* %89, i32** %91, align 8
  br label %92

92:                                               ; preds = %81, %49
  %93 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_ACCESS, align 4
  %94 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %97 = load i32, i32* @ngx_http_lua_module, align 4
  %98 = call %struct.TYPE_30__* @ngx_http_get_module_loc_conf(%struct.TYPE_29__* %96, i32 %97)
  store %struct.TYPE_30__* %98, %struct.TYPE_30__** %14, align 8
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %92
  %104 = load i32, i32* @ngx_http_lua_rd_check_broken_connection, align 4
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_34__*, %struct.TYPE_34__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_33__*, %struct.TYPE_33__** %110, align 8
  store %struct.TYPE_33__* %111, %struct.TYPE_33__** %10, align 8
  %112 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %125, label %116

116:                                              ; preds = %103
  %117 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %118 = load i32, i32* @NGX_READ_EVENT, align 4
  %119 = call i64 @ngx_add_event(%struct.TYPE_33__* %117, i32 %118, i32 0)
  %120 = load i64, i64* @NGX_OK, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i64, i64* @NGX_ERROR, align 8
  store i64 %123, i64* %3, align 8
  br label %255

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %103
  br label %130

126:                                              ; preds = %92
  %127 = load i32, i32* @ngx_http_block_reading, align 4
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  br label %130

130:                                              ; preds = %126, %125
  %131 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_34__*, %struct.TYPE_34__** %132, align 8
  store %struct.TYPE_34__* %133, %struct.TYPE_34__** %11, align 8
  %134 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %8, align 4
  %137 = load i32*, i32** %4, align 8
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %140 = call i64 @ngx_http_lua_run_thread(i32* %137, %struct.TYPE_29__* %138, %struct.TYPE_31__* %139, i32 0)
  store i64 %140, i64* %7, align 8
  %141 = load i64, i64* %7, align 8
  %142 = trunc i64 %141 to i32
  %143 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  %144 = load i64, i64* %7, align 8
  %145 = load i64, i64* @NGX_ERROR, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %151, label %147

147:                                              ; preds = %130
  %148 = load i64, i64* %7, align 8
  %149 = load i64, i64* @NGX_OK, align 8
  %150 = icmp sgt i64 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147, %130
  %152 = load i64, i64* %7, align 8
  store i64 %152, i64* %3, align 8
  br label %255

153:                                              ; preds = %147
  %154 = load i64, i64* %7, align 8
  %155 = load i64, i64* @NGX_AGAIN, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %184

157:                                              ; preds = %153
  %158 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %159 = load i32*, i32** %4, align 8
  %160 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %161 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %162 = load i32, i32* %8, align 4
  %163 = call i64 @ngx_http_lua_run_posted_threads(%struct.TYPE_34__* %158, i32* %159, %struct.TYPE_29__* %160, %struct.TYPE_31__* %161, i32 %162)
  store i64 %163, i64* %7, align 8
  %164 = load i64, i64* %7, align 8
  %165 = load i64, i64* @NGX_ERROR, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %175, label %167

167:                                              ; preds = %157
  %168 = load i64, i64* %7, align 8
  %169 = load i64, i64* @NGX_DONE, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = load i64, i64* %7, align 8
  %173 = load i64, i64* @NGX_OK, align 8
  %174 = icmp sgt i64 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %171, %167, %157
  %176 = load i64, i64* %7, align 8
  store i64 %176, i64* %3, align 8
  br label %255

177:                                              ; preds = %171
  %178 = load i64, i64* %7, align 8
  %179 = load i64, i64* @NGX_OK, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %182, i64* %3, align 8
  br label %255

183:                                              ; preds = %177
  br label %219

184:                                              ; preds = %153
  %185 = load i64, i64* %7, align 8
  %186 = load i64, i64* @NGX_DONE, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %218

188:                                              ; preds = %184
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %190 = load i64, i64* @NGX_DONE, align 8
  %191 = call i32 @ngx_http_lua_finalize_request(%struct.TYPE_29__* %189, i64 %190)
  %192 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %193 = load i32*, i32** %4, align 8
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %195 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %196 = load i32, i32* %8, align 4
  %197 = call i64 @ngx_http_lua_run_posted_threads(%struct.TYPE_34__* %192, i32* %193, %struct.TYPE_29__* %194, %struct.TYPE_31__* %195, i32 %196)
  store i64 %197, i64* %7, align 8
  %198 = load i64, i64* %7, align 8
  %199 = load i64, i64* @NGX_ERROR, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %209, label %201

201:                                              ; preds = %188
  %202 = load i64, i64* %7, align 8
  %203 = load i64, i64* @NGX_DONE, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %209, label %205

205:                                              ; preds = %201
  %206 = load i64, i64* %7, align 8
  %207 = load i64, i64* @NGX_OK, align 8
  %208 = icmp sgt i64 %206, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %205, %201, %188
  %210 = load i64, i64* %7, align 8
  store i64 %210, i64* %3, align 8
  br label %255

211:                                              ; preds = %205
  %212 = load i64, i64* %7, align 8
  %213 = load i64, i64* @NGX_OK, align 8
  %214 = icmp ne i64 %212, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %211
  %216 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %216, i64* %3, align 8
  br label %255

217:                                              ; preds = %211
  br label %218

218:                                              ; preds = %217, %184
  br label %219

219:                                              ; preds = %218, %183
  %220 = load i64, i64* %7, align 8
  %221 = load i64, i64* @NGX_OK, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %253

223:                                              ; preds = %219
  %224 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %251

228:                                              ; preds = %223
  %229 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %230 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %249, label %234

234:                                              ; preds = %228
  %235 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %236 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %237 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %238 = call i64 @ngx_http_lua_send_chain_link(%struct.TYPE_29__* %236, %struct.TYPE_31__* %237, i32* null)
  store i64 %238, i64* %7, align 8
  %239 = load i64, i64* %7, align 8
  %240 = load i64, i64* @NGX_ERROR, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %246, label %242

242:                                              ; preds = %234
  %243 = load i64, i64* %7, align 8
  %244 = load i64, i64* @NGX_OK, align 8
  %245 = icmp sgt i64 %243, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %242, %234
  %247 = load i64, i64* %7, align 8
  store i64 %247, i64* %3, align 8
  br label %255

248:                                              ; preds = %242
  br label %249

249:                                              ; preds = %248, %228
  %250 = load i64, i64* @NGX_HTTP_OK, align 8
  store i64 %250, i64* %3, align 8
  br label %255

251:                                              ; preds = %223
  %252 = load i64, i64* @NGX_OK, align 8
  store i64 %252, i64* %3, align 8
  br label %255

253:                                              ; preds = %219
  %254 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %254, i64* %3, align 8
  br label %255

255:                                              ; preds = %253, %251, %249, %246, %215, %209, %181, %175, %151, %122, %79, %47, %20
  %256 = load i64, i64* %3, align 8
  ret i64 %256
}

declare dso_local i32* @ngx_http_lua_new_thread(%struct.TYPE_29__*, i32*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @lua_xmove(i32*, i32*, i32) #1

declare dso_local i32 @ngx_http_lua_get_globals_table(i32*) #1

declare dso_local i32 @lua_setfenv(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_set_req(i32*, %struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_31__* @ngx_http_get_module_ctx(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local i32 @ngx_http_lua_reset_ctx(%struct.TYPE_29__*, i32*, %struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_32__* @ngx_http_cleanup_add(%struct.TYPE_29__*, i32) #1

declare dso_local %struct.TYPE_30__* @ngx_http_get_module_loc_conf(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @ngx_add_event(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i64 @ngx_http_lua_run_thread(i32*, %struct.TYPE_29__*, %struct.TYPE_31__*, i32) #1

declare dso_local i64 @ngx_http_lua_run_posted_threads(%struct.TYPE_34__*, i32*, %struct.TYPE_29__*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @ngx_http_lua_finalize_request(%struct.TYPE_29__*, i64) #1

declare dso_local i64 @ngx_http_lua_send_chain_link(%struct.TYPE_29__*, %struct.TYPE_31__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
