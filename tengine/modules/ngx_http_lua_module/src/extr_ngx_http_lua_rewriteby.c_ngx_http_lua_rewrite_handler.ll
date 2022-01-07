; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_rewriteby.c_ngx_http_lua_rewrite_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_rewriteby.c_ngx_http_lua_rewrite_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, i32, i32, i32, %struct.TYPE_27__*, i32, i64, i32, %struct.TYPE_25__*, i64 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_31__ = type { i64 (%struct.TYPE_28__*)*, i64 }
%struct.TYPE_32__ = type { i64 (%struct.TYPE_28__*)*, i32, i32, i64, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_33__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 }

@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"lua rewrite handler, uri:\22%V\22 c:%ud\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@ngx_http_core_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"swapping the contents of cur_ph and last_ph...\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"no rewrite handler found\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ctx = %p\00", align 1
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"entered? %d\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"rewriteby: calling wev handler\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"rewriteby: wev handler returns %d\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"header already sent\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"eof not yet sent\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_OK = common dso_local global i64 0, align 8
@ngx_http_core_run_phases = common dso_local global i32 0, align 4
@NGX_DONE = common dso_local global i64 0, align 8
@ngx_http_lua_generic_phase_post_read = common dso_local global i32 0, align 4
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [24 x i8] c"calling rewrite handler\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_lua_rewrite_handler(%struct.TYPE_28__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca %struct.TYPE_29__, align 4
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  %13 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 9
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %18, i64* %2, align 8
  br label %245

19:                                               ; preds = %1
  %20 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 8
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 7
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ngx_log_debug2(i32 %20, i32 %25, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* %27, i32 %32)
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %35 = load i32, i32* @ngx_http_lua_module, align 4
  %36 = call i8* @ngx_http_get_module_main_conf(%struct.TYPE_28__* %34, i32 %35)
  %37 = bitcast i8* %36 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %37, %struct.TYPE_30__** %7, align 8
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %94, label %42

42:                                               ; preds = %19
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %46 = load i32, i32* @ngx_http_core_module, align 4
  %47 = call i8* @ngx_http_get_module_main_conf(%struct.TYPE_28__* %45, i32 %46)
  %48 = bitcast i8* %47 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %48, %struct.TYPE_33__** %8, align 8
  %49 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_29__*, %struct.TYPE_29__** %51, align 8
  store %struct.TYPE_29__* %52, %struct.TYPE_29__** %10, align 8
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %53, i64 %56
  store %struct.TYPE_29__* %57, %struct.TYPE_29__** %11, align 8
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i64 %63
  store %struct.TYPE_29__* %64, %struct.TYPE_29__** %12, align 8
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %67 = icmp ult %struct.TYPE_29__* %65, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %42
  %69 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %71 = bitcast %struct.TYPE_29__* %9 to i8*
  %72 = bitcast %struct.TYPE_29__* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 4, i1 false)
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i64 1
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %78 = ptrtoint %struct.TYPE_29__* %76 to i64
  %79 = ptrtoint %struct.TYPE_29__* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 4
  %82 = mul i64 %81, 4
  %83 = trunc i64 %82 to i32
  %84 = call i32 @memmove(%struct.TYPE_29__* %73, %struct.TYPE_29__* %75, i32 %83)
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %86 = bitcast %struct.TYPE_29__* %85 to i8*
  %87 = bitcast %struct.TYPE_29__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %87, i64 4, i1 false)
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, -1
  store i64 %91, i64* %89, align 8
  %92 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %92, i64* %2, align 8
  br label %245

93:                                               ; preds = %42
  br label %94

94:                                               ; preds = %93, %19
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %96 = load i32, i32* @ngx_http_lua_module, align 4
  %97 = call %struct.TYPE_31__* @ngx_http_get_module_loc_conf(%struct.TYPE_28__* %95, i32 %96)
  store %struct.TYPE_31__* %97, %struct.TYPE_31__** %4, align 8
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %98, i32 0, i32 0
  %100 = load i64 (%struct.TYPE_28__*)*, i64 (%struct.TYPE_28__*)** %99, align 8
  %101 = icmp eq i64 (%struct.TYPE_28__*)* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %104, i64* %2, align 8
  br label %245

105:                                              ; preds = %94
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %107 = load i32, i32* @ngx_http_lua_module, align 4
  %108 = call %struct.TYPE_32__* @ngx_http_get_module_ctx(%struct.TYPE_28__* %106, i32 %107)
  store %struct.TYPE_32__* %108, %struct.TYPE_32__** %5, align 8
  %109 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %110 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_32__* %109)
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %112 = icmp eq %struct.TYPE_32__* %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %105
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %115 = call %struct.TYPE_32__* @ngx_http_lua_create_ctx(%struct.TYPE_28__* %114)
  store %struct.TYPE_32__* %115, %struct.TYPE_32__** %5, align 8
  %116 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %117 = icmp eq %struct.TYPE_32__* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %119, i64* %2, align 8
  br label %245

120:                                              ; preds = %113
  br label %121

121:                                              ; preds = %120, %105
  %122 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  %127 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %187

131:                                              ; preds = %121
  %132 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %133 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %133, i32 0, i32 0
  %135 = load i64 (%struct.TYPE_28__*)*, i64 (%struct.TYPE_28__*)** %134, align 8
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %137 = call i64 %135(%struct.TYPE_28__* %136)
  store i64 %137, i64* %6, align 8
  %138 = load i64, i64* %6, align 8
  %139 = trunc i64 %138 to i32
  %140 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %139)
  %141 = load i64, i64* %6, align 8
  %142 = load i64, i64* @NGX_OK, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %131
  %145 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %145, i64* %6, align 8
  br label %146

146:                                              ; preds = %144, %131
  %147 = load i64, i64* %6, align 8
  %148 = load i64, i64* @NGX_DECLINED, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %185

150:                                              ; preds = %146
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 6
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %178

155:                                              ; preds = %150
  %156 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %157 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %176, label %161

161:                                              ; preds = %155
  %162 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %164 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %165 = call i64 @ngx_http_lua_send_chain_link(%struct.TYPE_28__* %163, %struct.TYPE_32__* %164, i32* null)
  store i64 %165, i64* %6, align 8
  %166 = load i64, i64* %6, align 8
  %167 = load i64, i64* @NGX_ERROR, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %173, label %169

169:                                              ; preds = %161
  %170 = load i64, i64* %6, align 8
  %171 = load i64, i64* @NGX_OK, align 8
  %172 = icmp sgt i64 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %169, %161
  %174 = load i64, i64* %6, align 8
  store i64 %174, i64* %2, align 8
  br label %245

175:                                              ; preds = %169
  br label %176

176:                                              ; preds = %175, %155
  %177 = load i64, i64* @NGX_HTTP_OK, align 8
  store i64 %177, i64* %2, align 8
  br label %245

178:                                              ; preds = %150
  %179 = load i32, i32* @ngx_http_core_run_phases, align 4
  %180 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %180, i32 0, i32 5
  store i32 %179, i32* %181, align 8
  %182 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %182, i32 0, i32 3
  store i64 0, i64* %183, align 8
  %184 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %184, i64* %2, align 8
  br label %245

185:                                              ; preds = %146
  %186 = load i64, i64* %6, align 8
  store i64 %186, i64* %2, align 8
  br label %245

187:                                              ; preds = %121
  %188 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load i64, i64* @NGX_DONE, align 8
  store i64 %193, i64* %2, align 8
  br label %245

194:                                              ; preds = %187
  %195 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %238

199:                                              ; preds = %194
  %200 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %238, label %204

204:                                              ; preds = %199
  %205 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %205, i32 0, i32 1
  store i32 1, i32* %206, align 8
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %207, i32 0, i32 2
  store i32 1, i32* %208, align 4
  %209 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %209, i32 0, i32 3
  store i32 1, i32* %210, align 8
  %211 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %212 = load i32, i32* @ngx_http_lua_generic_phase_post_read, align 4
  %213 = call i64 @ngx_http_read_client_request_body(%struct.TYPE_28__* %211, i32 %212)
  store i64 %213, i64* %6, align 8
  %214 = load i64, i64* %6, align 8
  %215 = load i64, i64* @NGX_ERROR, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %221, label %217

217:                                              ; preds = %204
  %218 = load i64, i64* %6, align 8
  %219 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %220 = icmp sge i64 %218, %219
  br i1 %220, label %221, label %229

221:                                              ; preds = %217, %204
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %222, i32 0, i32 4
  %224 = load %struct.TYPE_27__*, %struct.TYPE_27__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %226, -1
  store i32 %227, i32* %225, align 4
  %228 = load i64, i64* %6, align 8
  store i64 %228, i64* %2, align 8
  br label %245

229:                                              ; preds = %217
  %230 = load i64, i64* %6, align 8
  %231 = load i64, i64* @NGX_AGAIN, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %234, i32 0, i32 1
  store i32 1, i32* %235, align 8
  %236 = load i64, i64* @NGX_DONE, align 8
  store i64 %236, i64* %2, align 8
  br label %245

237:                                              ; preds = %229
  br label %238

238:                                              ; preds = %237, %199, %194
  %239 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %240 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %240, i32 0, i32 0
  %242 = load i64 (%struct.TYPE_28__*)*, i64 (%struct.TYPE_28__*)** %241, align 8
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %244 = call i64 %242(%struct.TYPE_28__* %243)
  store i64 %244, i64* %2, align 8
  br label %245

245:                                              ; preds = %238, %233, %221, %192, %185, %178, %176, %173, %118, %102, %68, %17
  %246 = load i64, i64* %2, align 8
  ret i64 %246
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32*, i32) #1

declare dso_local i8* @ngx_http_get_module_main_conf(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @dd(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memmove(%struct.TYPE_29__*, %struct.TYPE_29__*, i32) #1

declare dso_local %struct.TYPE_31__* @ngx_http_get_module_loc_conf(%struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_32__* @ngx_http_get_module_ctx(%struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_32__* @ngx_http_lua_create_ctx(%struct.TYPE_28__*) #1

declare dso_local i64 @ngx_http_lua_send_chain_link(%struct.TYPE_28__*, %struct.TYPE_32__*, i32*) #1

declare dso_local i64 @ngx_http_read_client_request_body(%struct.TYPE_28__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
