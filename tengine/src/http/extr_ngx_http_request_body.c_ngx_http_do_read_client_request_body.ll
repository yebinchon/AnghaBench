; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_request_body.c_ngx_http_do_read_client_request_body.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_request_body.c_ngx_http_do_read_client_request_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64, i32, %struct.TYPE_20__*, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i64, i32 (%struct.TYPE_19__*)*, %struct.TYPE_18__*, i32* }
%struct.TYPE_18__ = type { i64, i64, i64, i64 }
%struct.TYPE_22__ = type { i64 (%struct.TYPE_22__*, i64, i64)*, i32, %struct.TYPE_17__*, i32, i32 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_23__ = type { i32*, %struct.TYPE_18__* }
%struct.TYPE_21__ = type { i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"http read client request body\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"http client request body recv %z\00", align 1
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"client prematurely closed connection\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_BAD_REQUEST = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"http client request body rest %O\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@ngx_http_block_reading = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*)* @ngx_http_do_read_client_request_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_do_read_client_request_body(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_23__, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  store %struct.TYPE_22__* %14, %struct.TYPE_22__** %9, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %10, align 8
  %18 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ngx_log_debug0(i32 %18, i32 %21, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %324, %1
  br label %24

24:                                               ; preds = %250, %23
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %29, %34
  br i1 %35, label %36, label %125

36:                                               ; preds = %24
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %41, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %36
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  store %struct.TYPE_18__* %51, %struct.TYPE_18__** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  store i32* null, i32** %53, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %55 = call i64 @ngx_http_request_body_filter(%struct.TYPE_19__* %54, %struct.TYPE_23__* %8)
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @NGX_OK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i64, i64* %7, align 8
  store i64 %60, i64* %2, align 8
  br label %353

61:                                               ; preds = %48
  br label %71

62:                                               ; preds = %36
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %64 = call i64 @ngx_http_request_body_filter(%struct.TYPE_19__* %63, %struct.TYPE_23__* null)
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @NGX_OK, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i64, i64* %7, align 8
  store i64 %69, i64* %2, align 8
  br label %353

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %61
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %106

76:                                               ; preds = %71
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %76
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = call i32 @ngx_del_timer(%struct.TYPE_17__* %91)
  br label %93

93:                                               ; preds = %88, %81
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %95, align 8
  %97 = call i64 @ngx_handle_read_event(%struct.TYPE_17__* %96, i32 0)
  %98 = load i64, i64* @NGX_OK, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %101, i64* %2, align 8
  br label %353

102:                                              ; preds = %93
  %103 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %103, i64* %2, align 8
  br label %353

104:                                              ; preds = %76
  %105 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %105, i64* %2, align 8
  br label %353

106:                                              ; preds = %71
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 2
  store i64 %111, i64* %115, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  store i64 %120, i64* %124, align 8
  br label %125

125:                                              ; preds = %106, %24
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %130, %135
  store i64 %136, i64* %5, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = sub nsw i64 %144, %149
  %151 = sub nsw i64 %139, %150
  store i64 %151, i64* %4, align 8
  %152 = load i64, i64* %5, align 8
  %153 = load i64, i64* %4, align 8
  %154 = icmp sgt i64 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %125
  %156 = load i64, i64* %4, align 8
  store i64 %156, i64* %5, align 8
  br label %157

157:                                              ; preds = %155, %125
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 0
  %160 = load i64 (%struct.TYPE_22__*, i64, i64)*, i64 (%struct.TYPE_22__*, i64, i64)** %159, align 8
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %5, align 8
  %168 = call i64 %160(%struct.TYPE_22__* %161, i64 %166, i64 %167)
  store i64 %168, i64* %6, align 8
  %169 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load i64, i64* %6, align 8
  %174 = call i32 @ngx_log_debug1(i32 %169, i32 %172, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %173)
  %175 = load i64, i64* %6, align 8
  %176 = load i64, i64* @NGX_AGAIN, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %157
  br label %251

179:                                              ; preds = %157
  %180 = load i64, i64* %6, align 8
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %179
  %183 = load i32, i32* @NGX_LOG_INFO, align 4
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @ngx_log_error(i32 %183, i32 %186, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %188

188:                                              ; preds = %182, %179
  %189 = load i64, i64* %6, align 8
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %188
  %192 = load i64, i64* %6, align 8
  %193 = load i64, i64* @NGX_ERROR, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %191, %188
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 1
  store i32 1, i32* %197, align 8
  %198 = load i64, i64* @NGX_HTTP_BAD_REQUEST, align 8
  store i64 %198, i64* %2, align 8
  br label %353

199:                                              ; preds = %191
  %200 = load i64, i64* %6, align 8
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %205, %200
  store i64 %206, i64* %204, align 8
  %207 = load i64, i64* %6, align 8
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = add nsw i64 %211, %207
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %209, align 8
  %214 = load i64, i64* %6, align 8
  %215 = load i64, i64* %4, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %231

217:                                              ; preds = %199
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  store %struct.TYPE_18__* %220, %struct.TYPE_18__** %221, align 8
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  store i32* null, i32** %222, align 8
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %224 = call i64 @ngx_http_request_body_filter(%struct.TYPE_19__* %223, %struct.TYPE_23__* %8)
  store i64 %224, i64* %7, align 8
  %225 = load i64, i64* %7, align 8
  %226 = load i64, i64* @NGX_OK, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %217
  %229 = load i64, i64* %7, align 8
  store i64 %229, i64* %2, align 8
  br label %353

230:                                              ; preds = %217
  br label %231

231:                                              ; preds = %230, %199
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %231
  br label %251

237:                                              ; preds = %231
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 2
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 2
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = icmp slt i64 %242, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %237
  br label %251

250:                                              ; preds = %237
  br label %24

251:                                              ; preds = %249, %236, %178
  %252 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = call i32 @ngx_log_debug1(i32 %252, i32 %255, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %258)
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %261 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %251
  br label %325

265:                                              ; preds = %251
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 2
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %324, label %272

272:                                              ; preds = %265
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %303

277:                                              ; preds = %272
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i32 0, i32 2
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %284 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %283, i32 0, i32 2
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %282, %287
  br i1 %288, label %289, label %303

289:                                              ; preds = %277
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 2
  %292 = load %struct.TYPE_18__*, %struct.TYPE_18__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  store %struct.TYPE_18__* %292, %struct.TYPE_18__** %293, align 8
  %294 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  store i32* null, i32** %294, align 8
  %295 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %296 = call i64 @ngx_http_request_body_filter(%struct.TYPE_19__* %295, %struct.TYPE_23__* %8)
  store i64 %296, i64* %7, align 8
  %297 = load i64, i64* %7, align 8
  %298 = load i64, i64* @NGX_OK, align 8
  %299 = icmp ne i64 %297, %298
  br i1 %299, label %300, label %302

300:                                              ; preds = %289
  %301 = load i64, i64* %7, align 8
  store i64 %301, i64* %2, align 8
  br label %353

302:                                              ; preds = %289
  br label %303

303:                                              ; preds = %302, %277, %272
  %304 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %305 = load i32, i32* @ngx_http_core_module, align 4
  %306 = call %struct.TYPE_21__* @ngx_http_get_module_loc_conf(%struct.TYPE_19__* %304, i32 %305)
  store %struct.TYPE_21__* %306, %struct.TYPE_21__** %11, align 8
  %307 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %308 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %307, i32 0, i32 2
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %308, align 8
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %311 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @ngx_add_timer(%struct.TYPE_17__* %309, i32 %312)
  %314 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %315 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %314, i32 0, i32 2
  %316 = load %struct.TYPE_17__*, %struct.TYPE_17__** %315, align 8
  %317 = call i64 @ngx_handle_read_event(%struct.TYPE_17__* %316, i32 0)
  %318 = load i64, i64* @NGX_OK, align 8
  %319 = icmp ne i64 %317, %318
  br i1 %319, label %320, label %322

320:                                              ; preds = %303
  %321 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %321, i64* %2, align 8
  br label %353

322:                                              ; preds = %303
  %323 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %323, i64* %2, align 8
  br label %353

324:                                              ; preds = %265
  br label %23

325:                                              ; preds = %264
  %326 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %327 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %326, i32 0, i32 2
  %328 = load %struct.TYPE_17__*, %struct.TYPE_17__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %325
  %333 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %334 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %333, i32 0, i32 2
  %335 = load %struct.TYPE_17__*, %struct.TYPE_17__** %334, align 8
  %336 = call i32 @ngx_del_timer(%struct.TYPE_17__* %335)
  br label %337

337:                                              ; preds = %332, %325
  %338 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %338, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %351, label %342

342:                                              ; preds = %337
  %343 = load i32, i32* @ngx_http_block_reading, align 4
  %344 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %344, i32 0, i32 0
  store i32 %343, i32* %345, align 8
  %346 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %347 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %346, i32 0, i32 1
  %348 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %347, align 8
  %349 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %350 = call i32 %348(%struct.TYPE_19__* %349)
  br label %351

351:                                              ; preds = %342, %337
  %352 = load i64, i64* @NGX_OK, align 8
  store i64 %352, i64* %2, align 8
  br label %353

353:                                              ; preds = %351, %322, %320, %300, %228, %195, %104, %102, %100, %68, %59
  %354 = load i64, i64* %2, align 8
  ret i64 %354
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_http_request_body_filter(%struct.TYPE_19__*, %struct.TYPE_23__*) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_17__*) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_21__* @ngx_http_get_module_loc_conf(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
