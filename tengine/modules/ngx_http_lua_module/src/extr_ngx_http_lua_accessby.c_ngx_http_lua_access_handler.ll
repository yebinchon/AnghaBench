; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_accessby.c_ngx_http_lua_access_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_accessby.c_ngx_http_lua_access_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, i32, i32, i32, %struct.TYPE_27__*, i64, i32, %struct.TYPE_25__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_32__ = type { i64 (%struct.TYPE_28__*)*, i32, i32, i32, i64 }
%struct.TYPE_31__ = type { i64 (%struct.TYPE_28__*)*, i64 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_33__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_29__* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"lua access handler, uri:\22%V\22 c:%ud\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@ngx_http_core_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ph cur: %d, ph next: %d\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"swapping the contents of cur_ph and last_ph...\00", align 1
@NGX_DECLINED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"no access handler found\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"ctx = %p\00", align 1
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"entered? %d\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"calling wev handler\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"wev handler returns %d\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"header already sent\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"eof not yet sent\00", align 1
@NGX_HTTP_OK = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [18 x i8] c"WAITING MORE BODY\00", align 1
@ngx_http_lua_generic_phase_post_read = common dso_local global i32 0, align 4
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"calling access handler\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_lua_access_handler(%struct.TYPE_28__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_29__, align 4
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  %13 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 7
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 6
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ngx_log_debug2(i32 %13, i32 %18, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32* %20, i32 %25)
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %28 = load i32, i32* @ngx_http_lua_module, align 4
  %29 = call i8* @ngx_http_get_module_main_conf(%struct.TYPE_28__* %27, i32 %28)
  %30 = bitcast i8* %29 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %30, %struct.TYPE_30__** %7, align 8
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %96, label %35

35:                                               ; preds = %1
  %36 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %39 = load i32, i32* @ngx_http_core_module, align 4
  %40 = call i8* @ngx_http_get_module_main_conf(%struct.TYPE_28__* %38, i32 %39)
  %41 = bitcast i8* %40 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %41, %struct.TYPE_33__** %12, align 8
  %42 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %44, align 8
  store %struct.TYPE_29__* %45, %struct.TYPE_29__** %9, align 8
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %46, i64 %49
  store %struct.TYPE_29__* %50, %struct.TYPE_29__** %10, align 8
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %52 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i64 %56
  store %struct.TYPE_29__* %57, %struct.TYPE_29__** %11, align 8
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 2
  %66 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %65)
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %69 = icmp ult %struct.TYPE_29__* %67, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %35
  %71 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %73 = bitcast %struct.TYPE_29__* %8 to i8*
  %74 = bitcast %struct.TYPE_29__* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 %74, i64 4, i1 false)
  %75 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i64 1
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %80 = ptrtoint %struct.TYPE_29__* %78 to i64
  %81 = ptrtoint %struct.TYPE_29__* %79 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 4
  %84 = mul i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = call i32 @memmove(%struct.TYPE_29__* %75, %struct.TYPE_29__* %77, i32 %85)
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %88 = bitcast %struct.TYPE_29__* %87 to i8*
  %89 = bitcast %struct.TYPE_29__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 4 %89, i64 4, i1 false)
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, -1
  store i64 %93, i64* %91, align 8
  %94 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %94, i64* %2, align 8
  br label %251

95:                                               ; preds = %35
  br label %96

96:                                               ; preds = %95, %1
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %98 = load i32, i32* @ngx_http_lua_module, align 4
  %99 = call %struct.TYPE_31__* @ngx_http_get_module_loc_conf(%struct.TYPE_28__* %97, i32 %98)
  store %struct.TYPE_31__* %99, %struct.TYPE_31__** %6, align 8
  %100 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %100, i32 0, i32 0
  %102 = load i64 (%struct.TYPE_28__*)*, i64 (%struct.TYPE_28__*)** %101, align 8
  %103 = icmp eq i64 (%struct.TYPE_28__*)* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %106 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %106, i64* %2, align 8
  br label %251

107:                                              ; preds = %96
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %109 = load i32, i32* @ngx_http_lua_module, align 4
  %110 = call %struct.TYPE_32__* @ngx_http_get_module_ctx(%struct.TYPE_28__* %108, i32 %109)
  store %struct.TYPE_32__* %110, %struct.TYPE_32__** %5, align 8
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %112 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_32__* %111)
  %113 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %114 = icmp eq %struct.TYPE_32__* %113, null
  br i1 %114, label %115, label %123

115:                                              ; preds = %107
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %117 = call %struct.TYPE_32__* @ngx_http_lua_create_ctx(%struct.TYPE_28__* %116)
  store %struct.TYPE_32__* %117, %struct.TYPE_32__** %5, align 8
  %118 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %119 = icmp eq %struct.TYPE_32__* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %121, i64* %2, align 8
  br label %251

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %122, %107
  %124 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  %129 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %192

133:                                              ; preds = %123
  %134 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %135 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %135, i32 0, i32 0
  %137 = load i64 (%struct.TYPE_28__*)*, i64 (%struct.TYPE_28__*)** %136, align 8
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %139 = call i64 %137(%struct.TYPE_28__* %138)
  store i64 %139, i64* %4, align 8
  %140 = load i64, i64* %4, align 8
  %141 = trunc i64 %140 to i32
  %142 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %141)
  %143 = load i64, i64* %4, align 8
  %144 = load i64, i64* @NGX_ERROR, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %154, label %146

146:                                              ; preds = %133
  %147 = load i64, i64* %4, align 8
  %148 = load i64, i64* @NGX_DONE, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = load i64, i64* %4, align 8
  %152 = load i64, i64* @NGX_OK, align 8
  %153 = icmp sgt i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %150, %146, %133
  %155 = load i64, i64* %4, align 8
  store i64 %155, i64* %2, align 8
  br label %251

156:                                              ; preds = %150
  %157 = load i64, i64* %4, align 8
  %158 = load i64, i64* @NGX_OK, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %190

160:                                              ; preds = %156
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %188

165:                                              ; preds = %160
  %166 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %167 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %186, label %171

171:                                              ; preds = %165
  %172 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %173 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %174 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %175 = call i64 @ngx_http_lua_send_chain_link(%struct.TYPE_28__* %173, %struct.TYPE_32__* %174, i32* null)
  store i64 %175, i64* %4, align 8
  %176 = load i64, i64* %4, align 8
  %177 = load i64, i64* @NGX_ERROR, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %183, label %179

179:                                              ; preds = %171
  %180 = load i64, i64* %4, align 8
  %181 = load i64, i64* @NGX_OK, align 8
  %182 = icmp sgt i64 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %179, %171
  %184 = load i64, i64* %4, align 8
  store i64 %184, i64* %2, align 8
  br label %251

185:                                              ; preds = %179
  br label %186

186:                                              ; preds = %185, %165
  %187 = load i64, i64* @NGX_HTTP_OK, align 8
  store i64 %187, i64* %2, align 8
  br label %251

188:                                              ; preds = %160
  %189 = load i64, i64* @NGX_OK, align 8
  store i64 %189, i64* %2, align 8
  br label %251

190:                                              ; preds = %156
  %191 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %191, i64* %2, align 8
  br label %251

192:                                              ; preds = %123
  %193 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %199 = load i64, i64* @NGX_DONE, align 8
  store i64 %199, i64* %2, align 8
  br label %251

200:                                              ; preds = %192
  %201 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %244

205:                                              ; preds = %200
  %206 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %244, label %210

210:                                              ; preds = %205
  %211 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %211, i32 0, i32 1
  store i32 1, i32* %212, align 8
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 2
  store i32 1, i32* %214, align 4
  %215 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %215, i32 0, i32 3
  store i32 1, i32* %216, align 8
  %217 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %218 = load i32, i32* @ngx_http_lua_generic_phase_post_read, align 4
  %219 = call i64 @ngx_http_read_client_request_body(%struct.TYPE_28__* %217, i32 %218)
  store i64 %219, i64* %4, align 8
  %220 = load i64, i64* %4, align 8
  %221 = load i64, i64* @NGX_ERROR, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %227, label %223

223:                                              ; preds = %210
  %224 = load i64, i64* %4, align 8
  %225 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %226 = icmp sge i64 %224, %225
  br i1 %226, label %227, label %235

227:                                              ; preds = %223, %210
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %228, i32 0, i32 4
  %230 = load %struct.TYPE_27__*, %struct.TYPE_27__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, -1
  store i32 %233, i32* %231, align 4
  %234 = load i64, i64* %4, align 8
  store i64 %234, i64* %2, align 8
  br label %251

235:                                              ; preds = %223
  %236 = load i64, i64* %4, align 8
  %237 = load i64, i64* @NGX_AGAIN, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %235
  %240 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %240, i32 0, i32 1
  store i32 1, i32* %241, align 8
  %242 = load i64, i64* @NGX_DONE, align 8
  store i64 %242, i64* %2, align 8
  br label %251

243:                                              ; preds = %235
  br label %244

244:                                              ; preds = %243, %205, %200
  %245 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %246 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %246, i32 0, i32 0
  %248 = load i64 (%struct.TYPE_28__*)*, i64 (%struct.TYPE_28__*)** %247, align 8
  %249 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %250 = call i64 %248(%struct.TYPE_28__* %249)
  store i64 %250, i64* %2, align 8
  br label %251

251:                                              ; preds = %244, %239, %227, %197, %190, %188, %186, %183, %154, %120, %104, %70
  %252 = load i64, i64* %2, align 8
  ret i64 %252
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
