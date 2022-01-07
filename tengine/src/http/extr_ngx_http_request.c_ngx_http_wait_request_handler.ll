; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_request.c_ngx_http_wait_request_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_request.c_ngx_http_wait_request_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32 (%struct.TYPE_27__*)*, i32, i64, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64 (%struct.TYPE_28__*, i32*, i64)*, %struct.TYPE_26__*, %struct.TYPE_23__*, i32, i32, i64, %struct.TYPE_24__*, %struct.TYPE_29__*, i64 }
%struct.TYPE_26__ = type { i64, i32 }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_29__ = type { i32*, i32*, i32*, i32* }
%struct.TYPE_25__ = type { i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"http wait request handler\00", align 1
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"client timed out\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"client closed connection\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"waiting for request\00", align 1
@ngx_posted_events = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"reading client request line\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*)* @ngx_http_wait_request_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_wait_request_handler(%struct.TYPE_27__* %0) #0 {
  %2 = alloca %struct.TYPE_27__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %2, align 8
  %10 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  store %struct.TYPE_28__* %12, %struct.TYPE_28__** %7, align 8
  %13 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %17 = call i32 @ngx_log_debug0(i32 %13, %struct.TYPE_23__* %16, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load i32, i32* @NGX_LOG_INFO, align 4
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %27 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %28 = call i32 @ngx_log_error(i32 %23, %struct.TYPE_23__* %26, i32 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %30 = call i32 @ngx_http_close_connection(%struct.TYPE_28__* %29)
  br label %256

31:                                               ; preds = %1
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %38 = call i32 @ngx_http_close_connection(%struct.TYPE_28__* %37)
  br label %256

39:                                               ; preds = %31
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %41, align 8
  store %struct.TYPE_26__* %42, %struct.TYPE_26__** %8, align 8
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ngx_http_core_module, align 4
  %47 = call %struct.TYPE_25__* @ngx_http_get_module_srv_conf(i32 %45, i32 %46)
  store %struct.TYPE_25__* %47, %struct.TYPE_25__** %9, align 8
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %4, align 8
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 7
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %52, align 8
  store %struct.TYPE_29__* %53, %struct.TYPE_29__** %6, align 8
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %55 = icmp eq %struct.TYPE_29__* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %39
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %4, align 8
  %61 = call %struct.TYPE_29__* @ngx_create_temp_buf(i32 %59, i64 %60)
  store %struct.TYPE_29__* %61, %struct.TYPE_29__** %6, align 8
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %63 = icmp eq %struct.TYPE_29__* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %66 = call i32 @ngx_http_close_connection(%struct.TYPE_28__* %65)
  br label %256

67:                                               ; preds = %56
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 7
  store %struct.TYPE_29__* %68, %struct.TYPE_29__** %70, align 8
  br label %110

71:                                               ; preds = %39
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %109

76:                                               ; preds = %71
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %4, align 8
  %81 = call i32* @ngx_palloc(i32 %79, i64 %80)
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %82, i32 0, i32 0
  store i32* %81, i32** %83, align 8
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %76
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %90 = call i32 @ngx_http_close_connection(%struct.TYPE_28__* %89)
  br label %256

91:                                               ; preds = %76
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 2
  store i32* %94, i32** %96, align 8
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i32 0, i32 1
  store i32* %99, i32** %101, align 8
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %4, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 3
  store i32* %106, i32** %108, align 8
  br label %109

109:                                              ; preds = %91, %71
  br label %110

110:                                              ; preds = %109, %67
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 0
  %113 = load i64 (%struct.TYPE_28__*, i32*, i64)*, i64 (%struct.TYPE_28__*, i32*, i64)** %112, align 8
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* %4, align 8
  %119 = call i64 %113(%struct.TYPE_28__* %114, i32* %117, i64 %118)
  store i64 %119, i64* %5, align 8
  %120 = load i64, i64* %5, align 8
  %121 = load i64, i64* @NGX_AGAIN, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %160

123:                                              ; preds = %110
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %138, label %128

128:                                              ; preds = %123
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 6
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ngx_add_timer(%struct.TYPE_27__* %129, i32 %134)
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %137 = call i32 @ngx_reusable_connection(%struct.TYPE_28__* %136, i32 1)
  br label %138

138:                                              ; preds = %128, %123
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %140 = call i64 @ngx_handle_read_event(%struct.TYPE_27__* %139, i32 0)
  %141 = load i64, i64* @NGX_OK, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %145 = call i32 @ngx_http_close_connection(%struct.TYPE_28__* %144)
  br label %256

146:                                              ; preds = %138
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = call i64 @ngx_pfree(i32 %149, i32* %152)
  %154 = load i64, i64* @NGX_OK, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %146
  %157 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %157, i32 0, i32 0
  store i32* null, i32** %158, align 8
  br label %159

159:                                              ; preds = %156, %146
  br label %256

160:                                              ; preds = %110
  %161 = load i64, i64* %5, align 8
  %162 = load i64, i64* @NGX_ERROR, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %166 = call i32 @ngx_http_close_connection(%struct.TYPE_28__* %165)
  br label %256

167:                                              ; preds = %160
  %168 = load i64, i64* %5, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %167
  %171 = load i32, i32* @NGX_LOG_INFO, align 4
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %173, align 8
  %175 = call i32 @ngx_log_error(i32 %171, %struct.TYPE_23__* %174, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %177 = call i32 @ngx_http_close_connection(%struct.TYPE_28__* %176)
  br label %256

178:                                              ; preds = %167
  %179 = load i64, i64* %5, align 8
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 %179
  store i32* %183, i32** %181, align 8
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %233

188:                                              ; preds = %178
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 0
  store i64 0, i64* %190, align 8
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %192 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = call i32* @ngx_proxy_protocol_read(%struct.TYPE_28__* %191, i32* %194, i32* %197)
  store i32* %198, i32** %3, align 8
  %199 = load i32*, i32** %3, align 8
  %200 = icmp eq i32* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %188
  %202 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %203 = call i32 @ngx_http_close_connection(%struct.TYPE_28__* %202)
  br label %256

204:                                              ; preds = %188
  %205 = load i32*, i32** %3, align 8
  %206 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %206, i32 0, i32 2
  store i32* %205, i32** %207, align 8
  %208 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = icmp eq i32* %210, %213
  br i1 %214, label %215, label %232

215:                                              ; preds = %204
  %216 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %219, align 8
  %220 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %223, i32 0, i32 2
  store i32* %222, i32** %224, align 8
  %225 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %228, i32 0, i32 1
  store i32* %227, i32** %229, align 8
  %230 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %231 = call i32 @ngx_post_event(%struct.TYPE_27__* %230, i32* @ngx_posted_events)
  br label %256

232:                                              ; preds = %204
  br label %233

233:                                              ; preds = %232, %178
  %234 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8** %237, align 8
  %238 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %239 = call i32 @ngx_reusable_connection(%struct.TYPE_28__* %238, i32 0)
  %240 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %241 = call %struct.TYPE_26__* @ngx_http_create_request(%struct.TYPE_28__* %240)
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %242, i32 0, i32 1
  store %struct.TYPE_26__* %241, %struct.TYPE_26__** %243, align 8
  %244 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %245, align 8
  %247 = icmp eq %struct.TYPE_26__* %246, null
  br i1 %247, label %248, label %251

248:                                              ; preds = %233
  %249 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %250 = call i32 @ngx_http_close_connection(%struct.TYPE_28__* %249)
  br label %256

251:                                              ; preds = %233
  %252 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %252, i32 0, i32 0
  store i32 (%struct.TYPE_27__*)* @ngx_http_process_request_line, i32 (%struct.TYPE_27__*)** %253, align 8
  %254 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %255 = call i32 @ngx_http_process_request_line(%struct.TYPE_27__* %254)
  br label %256

256:                                              ; preds = %251, %248, %215, %201, %170, %164, %159, %143, %88, %64, %36, %22
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, %struct.TYPE_23__*, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_23__*, i32, i8*) #1

declare dso_local i32 @ngx_http_close_connection(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_25__* @ngx_http_get_module_srv_conf(i32, i32) #1

declare dso_local %struct.TYPE_29__* @ngx_create_temp_buf(i32, i64) #1

declare dso_local i32* @ngx_palloc(i32, i64) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @ngx_reusable_connection(%struct.TYPE_28__*, i32) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_27__*, i32) #1

declare dso_local i64 @ngx_pfree(i32, i32*) #1

declare dso_local i32* @ngx_proxy_protocol_read(%struct.TYPE_28__*, i32*, i32*) #1

declare dso_local i32 @ngx_post_event(%struct.TYPE_27__*, i32*) #1

declare dso_local %struct.TYPE_26__* @ngx_http_create_request(%struct.TYPE_28__*) #1

declare dso_local i32 @ngx_http_process_request_line(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
