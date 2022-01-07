; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_proxy_module.c_ngx_http_proxy_chunked_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_proxy_module.c_ngx_http_proxy_chunked_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i64, i32, %struct.TYPE_27__**, %struct.TYPE_27__*, i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_27__ = type { %struct.TYPE_27__*, %struct.TYPE_28__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__*, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_28__ = type { i64, i64, i32, i32, i64, i32, %struct.TYPE_28__*, i32, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i64, i64 }

@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_proxy_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"input buf #%d %p\00", align 1
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"upstream sent invalid chunked response\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"http proxy chunked state %ui, length %O\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"input buf %p %z\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_26__*, %struct.TYPE_28__*)* @ngx_http_proxy_chunked_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_proxy_chunked_filter(%struct.TYPE_26__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_28__**, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  %12 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i64, i64* @NGX_OK, align 8
  store i64 %20, i64* %3, align 8
  br label %264

21:                                               ; preds = %2
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  store %struct.TYPE_24__* %24, %struct.TYPE_24__** %10, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %26 = load i32, i32* @ngx_http_proxy_module, align 4
  %27 = call %struct.TYPE_25__* @ngx_http_get_module_ctx(%struct.TYPE_24__* %25, i32 %26)
  store %struct.TYPE_25__* %27, %struct.TYPE_25__** %11, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %29 = icmp eq %struct.TYPE_25__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i64, i64* @NGX_ERROR, align 8
  store i64 %31, i64* %3, align 8
  br label %264

32:                                               ; preds = %21
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %7, align 8
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 6
  store %struct.TYPE_28__** %34, %struct.TYPE_28__*** %8, align 8
  br label %35

35:                                               ; preds = %152, %135, %32
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  %40 = call i64 @ngx_http_parse_chunked(%struct.TYPE_24__* %36, %struct.TYPE_28__* %37, %struct.TYPE_20__* %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @NGX_OK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %175

44:                                               ; preds = %35
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 6
  %50 = call %struct.TYPE_27__* @ngx_chain_get_free_buf(i32 %47, i32* %49)
  store %struct.TYPE_27__* %50, %struct.TYPE_27__** %9, align 8
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %52 = icmp eq %struct.TYPE_27__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i64, i64* @NGX_ERROR, align 8
  store i64 %54, i64* %3, align 8
  br label %264

55:                                               ; preds = %44
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %57, align 8
  store %struct.TYPE_28__* %58, %struct.TYPE_28__** %7, align 8
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %60 = call i32 @ngx_memzero(%struct.TYPE_28__* %59, i32 64)
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 9
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 8
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 2
  store i32 1, i32* %82, align 8
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 3
  store i32 1, i32* %84, align 4
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %86 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %8, align 8
  store %struct.TYPE_28__* %85, %struct.TYPE_28__** %86, align 8
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 6
  store %struct.TYPE_28__** %88, %struct.TYPE_28__*** %8, align 8
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %90, align 8
  %92 = icmp ne %struct.TYPE_27__* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %55
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %96, align 8
  store %struct.TYPE_27__* %94, %struct.TYPE_27__** %97, align 8
  br label %102

98:                                               ; preds = %55
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 4
  store %struct.TYPE_27__* %99, %struct.TYPE_27__** %101, align 8
  br label %102

102:                                              ; preds = %98, %93
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 3
  store %struct.TYPE_27__** %104, %struct.TYPE_27__*** %106, align 8
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 4
  store i64 %109, i64* %111, align 8
  %112 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @ngx_log_debug2(i32 %112, i32 %115, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %118, i64 %121)
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %125, %128
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp sge i64 %129, %133
  br i1 %134, label %135, label %152

135:                                              ; preds = %102
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = add i64 %142, %139
  store i64 %143, i64* %141, align 8
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 0
  store i64 0, i64* %151, align 8
  br label %35

152:                                              ; preds = %102
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = sub nsw i64 %155, %158
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = sub nsw i64 %163, %159
  store i64 %164, i64* %162, align 8
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %173, i32 0, i32 1
  store i64 %172, i64* %174, align 8
  br label %35

175:                                              ; preds = %35
  %176 = load i64, i64* %6, align 8
  %177 = load i64, i64* @NGX_DONE, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %195

179:                                              ; preds = %175
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %180, i32 0, i32 0
  store i32 1, i32* %181, align 8
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 0
  store i32 %190, i32* %194, align 4
  br label %215

195:                                              ; preds = %175
  %196 = load i64, i64* %6, align 8
  %197 = load i64, i64* @NGX_AGAIN, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %206

199:                                              ; preds = %195
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i32 0, i32 1
  store i64 %203, i64* %205, align 8
  br label %215

206:                                              ; preds = %195
  %207 = load i32, i32* @NGX_LOG_ERR, align 4
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @ngx_log_error(i32 %207, i32 %212, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %214 = load i64, i64* @NGX_ERROR, align 8
  store i64 %214, i64* %3, align 8
  br label %264

215:                                              ; preds = %199, %179
  %216 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @ngx_log_debug2(i32 %216, i32 %221, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %225, i64 %228)
  %230 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %231 = icmp ne %struct.TYPE_28__* %230, null
  br i1 %231, label %232, label %254

232:                                              ; preds = %215
  %233 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %234 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %234, i32 0, i32 6
  store %struct.TYPE_28__* %233, %struct.TYPE_28__** %235, align 8
  %236 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %236, i32 0, i32 5
  store i32 1, i32* %237, align 8
  %238 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %239 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = sub nsw i64 %247, %250
  %252 = call i32 @ngx_log_debug2(i32 %238, i32 %241, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %244, i64 %251)
  %253 = load i64, i64* @NGX_OK, align 8
  store i64 %253, i64* %3, align 8
  br label %264

254:                                              ; preds = %215
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %256 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %257 = call i64 @ngx_event_pipe_add_free_buf(%struct.TYPE_26__* %255, %struct.TYPE_28__* %256)
  %258 = load i64, i64* @NGX_OK, align 8
  %259 = icmp ne i64 %257, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %254
  %261 = load i64, i64* @NGX_ERROR, align 8
  store i64 %261, i64* %3, align 8
  br label %264

262:                                              ; preds = %254
  %263 = load i64, i64* @NGX_OK, align 8
  store i64 %263, i64* %3, align 8
  br label %264

264:                                              ; preds = %262, %260, %232, %206, %53, %30, %19
  %265 = load i64, i64* %3, align 8
  ret i64 %265
}

declare dso_local %struct.TYPE_25__* @ngx_http_get_module_ctx(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @ngx_http_parse_chunked(%struct.TYPE_24__*, %struct.TYPE_28__*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_27__* @ngx_chain_get_free_buf(i32, i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i64, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_event_pipe_add_free_buf(%struct.TYPE_26__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
