; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_request_body.c_ngx_http_request_body_chunked_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_request_body.c_ngx_http_request_body_chunked_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_21__*, %struct.TYPE_22__, i32, %struct.TYPE_24__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_24__ = type { i32, i32, i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_26__*, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32 }
%struct.TYPE_25__ = type { i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"http request body chunked filter\00", align 1
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"http body chunked buf t:%d f:%d %p, pos %p, size: %z file: %O, size: %O\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"client intended to send too large chunked body: %O+%O bytes\00", align 1
@NGX_HTTP_REQUEST_ENTITY_TOO_LARGE = common dso_local global i64 0, align 8
@ngx_http_read_client_request_body = common dso_local global i32 0, align 4
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"client sent invalid chunked body\00", align 1
@NGX_HTTP_BAD_REQUEST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_23__*, %struct.TYPE_26__*)* @ngx_http_request_body_chunked_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_request_body_chunked_filter(%struct.TYPE_23__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_26__**, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %13, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %48

22:                                               ; preds = %2
  %23 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ngx_log_debug0(i32 %23, i32 %28, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_28__* @ngx_pcalloc(i32 %32, i32 4)
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 3
  store %struct.TYPE_28__* %33, %struct.TYPE_28__** %35, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %37, align 8
  %39 = icmp eq %struct.TYPE_28__* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %22
  %41 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %41, i64* %3, align 8
  br label %364

42:                                               ; preds = %22
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 0
  store i32 3, i32* %47, align 8
  br label %48

48:                                               ; preds = %42, %2
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %10, align 8
  store %struct.TYPE_26__** %10, %struct.TYPE_26__*** %12, align 8
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_26__* %49, %struct.TYPE_26__** %9, align 8
  br label %50

50:                                               ; preds = %347, %48
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %52 = icmp ne %struct.TYPE_26__* %51, null
  br i1 %52, label %53, label %351

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %288, %53
  %55 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = sub i64 %85, %90
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 8
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 9
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 8
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %101, %106
  %108 = call i32 @ngx_log_debug7(i32 %55, i32 %60, i32 0, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %70, i64 %75, i64 %80, i64 %91, i64 %96, i64 %107)
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %111, align 8
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %114, align 8
  %116 = call i64 @ngx_http_parse_chunked(%struct.TYPE_23__* %109, %struct.TYPE_27__* %112, %struct.TYPE_28__* %115)
  store i64 %116, i64* %7, align 8
  %117 = load i64, i64* %7, align 8
  %118 = load i64, i64* @NGX_OK, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %296

120:                                              ; preds = %54
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %122 = load i32, i32* @ngx_http_core_module, align 4
  %123 = call %struct.TYPE_25__* @ngx_http_get_module_loc_conf(%struct.TYPE_23__* %121, i32 %122)
  store %struct.TYPE_25__* %123, %struct.TYPE_25__** %14, align 8
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %163

128:                                              ; preds = %120
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %131, %135
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp slt i64 %136, %141
  br i1 %142, label %143, label %163

143:                                              ; preds = %128
  %144 = load i32, i32* @NGX_LOG_ERR, align 4
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %144, i32 %149, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i64 %153, i64 %158)
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 0
  store i32 1, i32* %161, align 8
  %162 = load i64, i64* @NGX_HTTP_REQUEST_ENTITY_TOO_LARGE, align 8
  store i64 %162, i64* %3, align 8
  br label %364

163:                                              ; preds = %128, %120
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 2
  %169 = call %struct.TYPE_26__* @ngx_chain_get_free_buf(i32 %166, i32* %168)
  store %struct.TYPE_26__* %169, %struct.TYPE_26__** %11, align 8
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %171 = icmp eq %struct.TYPE_26__* %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %163
  %173 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %173, i64* %3, align 8
  br label %364

174:                                              ; preds = %163
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %176, align 8
  store %struct.TYPE_27__* %177, %struct.TYPE_27__** %8, align 8
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %179 = call i32 @ngx_memzero(%struct.TYPE_27__* %178, i32 80)
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %180, i32 0, i32 0
  store i32 1, i32* %181, align 8
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %182, i32 0, i32 7
  store i64 ptrtoint (i32* @ngx_http_read_client_request_body to i64), i64* %183, align 8
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 1
  store i64 %188, i64* %190, align 8
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %196, i32 0, i32 2
  store i64 %195, i64* %197, align 8
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %203, i32 0, i32 3
  store i64 %202, i64* %204, align 8
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %210, i32 0, i32 6
  store i32 %209, i32* %211, align 8
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i32 0, i32 5
  store i32 %214, i32* %216, align 4
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %218 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %12, align 8
  store %struct.TYPE_26__* %217, %struct.TYPE_26__** %218, align 8
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 0
  store %struct.TYPE_26__** %220, %struct.TYPE_26__*** %12, align 8
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_27__*, %struct.TYPE_27__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_27__*, %struct.TYPE_27__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = sub i64 %225, %230
  store i64 %231, i64* %6, align 8
  %232 = load i64, i64* %6, align 8
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 3
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp sgt i64 %232, %237
  br i1 %238, label %239, label %265

239:                                              ; preds = %174
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 3
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_27__*, %struct.TYPE_27__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = add i64 %249, %244
  store i64 %250, i64* %248, align 8
  %251 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %252 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %251, i32 0, i32 3
  %253 = load %struct.TYPE_28__*, %struct.TYPE_28__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = add nsw i64 %259, %255
  store i64 %260, i64* %258, align 8
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 3
  %263 = load %struct.TYPE_28__*, %struct.TYPE_28__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %263, i32 0, i32 0
  store i64 0, i64* %264, align 8
  br label %288

265:                                              ; preds = %174
  %266 = load i64, i64* %6, align 8
  %267 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %267, i32 0, i32 3
  %269 = load %struct.TYPE_28__*, %struct.TYPE_28__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = sub i64 %271, %266
  store i64 %272, i64* %270, align 8
  %273 = load i64, i64* %6, align 8
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %274, i32 0, i32 3
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = add i64 %277, %273
  store i64 %278, i64* %276, align 8
  %279 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_27__*, %struct.TYPE_27__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %281, i32 0, i32 3
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %285 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_27__*, %struct.TYPE_27__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %286, i32 0, i32 2
  store i64 %283, i64* %287, align 8
  br label %288

288:                                              ; preds = %265, %239
  %289 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %290 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %289, i32 0, i32 1
  %291 = load %struct.TYPE_27__*, %struct.TYPE_27__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %291, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %294, i32 0, i32 3
  store i64 %293, i64* %295, align 8
  br label %54

296:                                              ; preds = %54
  %297 = load i64, i64* %7, align 8
  %298 = load i64, i64* @NGX_DONE, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %300, label %325

300:                                              ; preds = %296
  %301 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %302 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %301, i32 0, i32 0
  store i32 0, i32* %302, align 8
  %303 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %307 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %306, i32 0, i32 2
  %308 = call %struct.TYPE_26__* @ngx_chain_get_free_buf(i32 %305, i32* %307)
  store %struct.TYPE_26__* %308, %struct.TYPE_26__** %11, align 8
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %310 = icmp eq %struct.TYPE_26__* %309, null
  br i1 %310, label %311, label %313

311:                                              ; preds = %300
  %312 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %312, i64* %3, align 8
  br label %364

313:                                              ; preds = %300
  %314 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %315 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %314, i32 0, i32 1
  %316 = load %struct.TYPE_27__*, %struct.TYPE_27__** %315, align 8
  store %struct.TYPE_27__* %316, %struct.TYPE_27__** %8, align 8
  %317 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %318 = call i32 @ngx_memzero(%struct.TYPE_27__* %317, i32 80)
  %319 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %319, i32 0, i32 4
  store i32 1, i32* %320, align 8
  %321 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %322 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %12, align 8
  store %struct.TYPE_26__* %321, %struct.TYPE_26__** %322, align 8
  %323 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %324 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %323, i32 0, i32 0
  store %struct.TYPE_26__** %324, %struct.TYPE_26__*** %12, align 8
  br label %346

325:                                              ; preds = %296
  %326 = load i64, i64* %7, align 8
  %327 = load i64, i64* @NGX_AGAIN, align 8
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %329, label %337

329:                                              ; preds = %325
  %330 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %330, i32 0, i32 3
  %332 = load %struct.TYPE_28__*, %struct.TYPE_28__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %336 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %335, i32 0, i32 0
  store i32 %334, i32* %336, align 8
  br label %346

337:                                              ; preds = %325
  %338 = load i32, i32* @NGX_LOG_ERR, align 4
  %339 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %339, i32 0, i32 2
  %341 = load %struct.TYPE_21__*, %struct.TYPE_21__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %338, i32 %343, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %345 = load i64, i64* @NGX_HTTP_BAD_REQUEST, align 8
  store i64 %345, i64* %3, align 8
  br label %364

346:                                              ; preds = %329, %313
  br label %347

347:                                              ; preds = %346
  %348 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %349 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %348, i32 0, i32 0
  %350 = load %struct.TYPE_26__*, %struct.TYPE_26__** %349, align 8
  store %struct.TYPE_26__* %350, %struct.TYPE_26__** %9, align 8
  br label %50

351:                                              ; preds = %50
  %352 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %353 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %354 = call i64 @ngx_http_top_request_body_filter(%struct.TYPE_23__* %352, %struct.TYPE_26__* %353)
  store i64 %354, i64* %7, align 8
  %355 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %359 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %358, i32 0, i32 2
  %360 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %361 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %360, i32 0, i32 1
  %362 = call i32 @ngx_chain_update_chains(i32 %357, i32* %359, i32* %361, %struct.TYPE_26__** %10, i64 ptrtoint (i32* @ngx_http_read_client_request_body to i64))
  %363 = load i64, i64* %7, align 8
  store i64 %363, i64* %3, align 8
  br label %364

364:                                              ; preds = %351, %337, %311, %172, %143, %40
  %365 = load i64, i64* %3, align 8
  ret i64 %365
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_28__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_log_debug7(i32, i32, i32, i8*, i32, i32, i64, i64, i64, i64, i64) #1

declare dso_local i64 @ngx_http_parse_chunked(%struct.TYPE_23__*, %struct.TYPE_27__*, %struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_25__* @ngx_http_get_module_loc_conf(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local %struct.TYPE_26__* @ngx_chain_get_free_buf(i32, i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_27__*, i32) #1

declare dso_local i64 @ngx_http_top_request_body_filter(%struct.TYPE_23__*, %struct.TYPE_26__*) #1

declare dso_local i32 @ngx_chain_update_chains(i32, i32*, i32*, %struct.TYPE_26__**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
