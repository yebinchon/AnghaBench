; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dynamic_module/extr_ngx_http_upstream_dynamic_module.c_ngx_http_upstream_get_dynamic_peer.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dynamic_module/extr_ngx_http_upstream_dynamic_module.c_ngx_http_upstream_get_dynamic_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_28__*, i32, %struct.TYPE_23__ }
%struct.TYPE_28__ = type { i64 (%struct.TYPE_25__*, i32)*, i32, %struct.TYPE_29__*, %struct.TYPE_27__* }
%struct.TYPE_25__ = type { i64, i32, %struct.TYPE_23__* }
%struct.TYPE_29__ = type { %struct.TYPE_22__*, %struct.TYPE_26__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_24__* }
%struct.TYPE_27__ = type { i32, i64, i64 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32, i32* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"get dynamic peer\00", align 1
@NGX_HTTP_UPSTREAM_DR_OK = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_UPSTREAM_DR_FAILED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"resolve failed! fallback: %ui\00", align 1
@NGX_HTTP_BAD_GATEWAY = common dso_local global i32 0, align 4
@NGX_YIELD = common dso_local global i64 0, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"in fail timeout period, fallback: %ui\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"load balancer doesn't support dyn resolve!\00", align 1
@INADDR_NONE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"host is an IP address, connect directly!\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"resolver has not been configured!\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"resolver start failed!\00", align 1
@NGX_NO_RESOLVER = common dso_local global %struct.TYPE_24__* null, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"resolver started but no resolver!\00", align 1
@ngx_http_upstream_dynamic_handler = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"resolver name failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_25__*, i8*)* @ngx_http_upstream_get_dynamic_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_upstream_get_dynamic_peer(%struct.TYPE_25__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_24__, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %15, %struct.TYPE_28__** %6, align 8
  %16 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ngx_log_debug0(i32 %16, i32 %19, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NGX_HTTP_UPSTREAM_DR_OK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i64, i64* @NGX_OK, align 8
  store i64 %27, i64* %3, align 8
  br label %252

28:                                               ; preds = %2
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %30, align 8
  store %struct.TYPE_27__* %31, %struct.TYPE_27__** %13, align 8
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %33, align 8
  store %struct.TYPE_29__* %34, %struct.TYPE_29__** %7, align 8
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %36, align 8
  store %struct.TYPE_26__* %37, %struct.TYPE_26__** %11, align 8
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NGX_HTTP_UPSTREAM_DR_FAILED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %28
  %44 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ngx_log_debug1(i32 %44, i32 %47, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %63 [
    i32 128, label %55
    i32 129, label %57
  ]

55:                                               ; preds = %43
  %56 = load i64, i64* @NGX_OK, align 8
  store i64 %56, i64* %3, align 8
  br label %252

57:                                               ; preds = %43
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %60 = load i32, i32* @NGX_HTTP_BAD_GATEWAY, align 4
  %61 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_29__* %58, %struct.TYPE_26__* %59, i32 %60)
  %62 = load i64, i64* @NGX_YIELD, align 8
  store i64 %62, i64* %3, align 8
  br label %252

63:                                               ; preds = %43
  %64 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %64, i64* %3, align 8
  br label %252

65:                                               ; preds = %28
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %116

70:                                               ; preds = %65
  %71 = call i64 (...) @ngx_time()
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %71, %74
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %75, %78
  br i1 %79, label %80, label %116

80:                                               ; preds = %70
  %81 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @ngx_log_debug1(i32 %81, i32 %84, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %107 [
    i32 128, label %92
    i32 129, label %101
  ]

92:                                               ; preds = %80
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %93, i32 0, i32 0
  %95 = load i64 (%struct.TYPE_25__*, i32)*, i64 (%struct.TYPE_25__*, i32)** %94, align 8
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i64 %95(%struct.TYPE_25__* %96, i32 %99)
  store i64 %100, i64* %3, align 8
  br label %252

101:                                              ; preds = %80
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %104 = load i32, i32* @NGX_HTTP_BAD_GATEWAY, align 4
  %105 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_29__* %102, %struct.TYPE_26__* %103, i32 %104)
  %106 = load i64, i64* @NGX_YIELD, align 8
  store i64 %106, i64* %3, align 8
  br label %252

107:                                              ; preds = %80
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 0
  %110 = load i64 (%struct.TYPE_25__*, i32)*, i64 (%struct.TYPE_25__*, i32)** %109, align 8
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i64 %110(%struct.TYPE_25__* %111, i32 %114)
  store i64 %115, i64* %3, align 8
  br label %252

116:                                              ; preds = %70, %65
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i32 0, i32 0
  %119 = load i64 (%struct.TYPE_25__*, i32)*, i64 (%struct.TYPE_25__*, i32)** %118, align 8
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i64 %119(%struct.TYPE_25__* %120, i32 %123)
  store i64 %124, i64* %12, align 8
  %125 = load i64, i64* %12, align 8
  %126 = load i64, i64* @NGX_OK, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %116
  %129 = load i64, i64* %12, align 8
  store i64 %129, i64* %3, align 8
  br label %252

130:                                              ; preds = %116
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %132, align 8
  %134 = icmp eq %struct.TYPE_23__* %133, null
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @ngx_log_debug0(i32 %136, i32 %139, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %141 = load i64, i64* @NGX_OK, align 8
  store i64 %141, i64* %3, align 8
  br label %252

142:                                              ; preds = %130
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @ngx_inet_addr(i32 %147, i32 %152)
  %154 = load i64, i64* @INADDR_NONE, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %142
  %157 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @ngx_log_debug0(i32 %157, i32 %160, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %162 = load i64, i64* @NGX_OK, align 8
  store i64 %162, i64* %3, align 8
  br label %252

163:                                              ; preds = %142
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %165 = load i32, i32* @ngx_http_core_module, align 4
  %166 = call %struct.TYPE_30__* @ngx_http_get_module_loc_conf(%struct.TYPE_29__* %164, i32 %165)
  store %struct.TYPE_30__* %166, %struct.TYPE_30__** %8, align 8
  %167 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = icmp eq i32* %169, null
  br i1 %170, label %171, label %180

171:                                              ; preds = %163
  %172 = load i32, i32* @NGX_LOG_ERR, align 4
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @ngx_log_error(i32 %172, i32 %177, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %179 = load i64, i64* @NGX_OK, align 8
  store i64 %179, i64* %3, align 8
  br label %252

180:                                              ; preds = %163
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 3
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %183, align 8
  %185 = bitcast %struct.TYPE_23__* %181 to i8*
  %186 = bitcast %struct.TYPE_23__* %184 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %185, i8* align 4 %186, i64 8, i1 false)
  %187 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = call %struct.TYPE_24__* @ngx_resolve_start(i32* %189, %struct.TYPE_24__* %10)
  store %struct.TYPE_24__* %190, %struct.TYPE_24__** %9, align 8
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %192 = icmp eq %struct.TYPE_24__* %191, null
  br i1 %192, label %193, label %202

193:                                              ; preds = %180
  %194 = load i32, i32* @NGX_LOG_ERR, align 4
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @ngx_log_error(i32 %194, i32 %199, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %201 = load i64, i64* @NGX_OK, align 8
  store i64 %201, i64* %3, align 8
  br label %252

202:                                              ; preds = %180
  %203 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** @NGX_NO_RESOLVER, align 8
  %205 = icmp eq %struct.TYPE_24__* %203, %204
  br i1 %205, label %206, label %215

206:                                              ; preds = %202
  %207 = load i32, i32* @NGX_LOG_ERR, align 4
  %208 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @ngx_log_error(i32 %207, i32 %212, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %214 = load i64, i64* @NGX_OK, align 8
  store i64 %214, i64* %3, align 8
  br label %252

215:                                              ; preds = %202
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 3
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %219, align 8
  %221 = bitcast %struct.TYPE_23__* %217 to i8*
  %222 = bitcast %struct.TYPE_23__* %220 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %221, i8* align 4 %222, i64 8, i1 false)
  %223 = load i32, i32* @ngx_http_upstream_dynamic_handler, align 4
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 8
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 1
  store %struct.TYPE_28__* %226, %struct.TYPE_28__** %228, align 8
  %229 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %235 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %236 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %235, i32 0, i32 0
  store %struct.TYPE_24__* %234, %struct.TYPE_24__** %236, align 8
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %238 = call i64 @ngx_resolve_name(%struct.TYPE_24__* %237)
  %239 = load i64, i64* @NGX_OK, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %241, label %250

241:                                              ; preds = %215
  %242 = load i32, i32* @NGX_LOG_ERR, align 4
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @ngx_log_error(i32 %242, i32 %245, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %247 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %247, i32 0, i32 0
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %248, align 8
  %249 = load i64, i64* @NGX_OK, align 8
  store i64 %249, i64* %3, align 8
  br label %252

250:                                              ; preds = %215
  %251 = load i64, i64* @NGX_YIELD, align 8
  store i64 %251, i64* %3, align 8
  br label %252

252:                                              ; preds = %250, %241, %206, %193, %171, %156, %135, %128, %107, %101, %92, %63, %57, %55, %26
  %253 = load i64, i64* %3, align 8
  ret i64 %253
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_http_upstream_finalize_request(%struct.TYPE_29__*, %struct.TYPE_26__*, i32) #1

declare dso_local i64 @ngx_time(...) #1

declare dso_local i64 @ngx_inet_addr(i32, i32) #1

declare dso_local %struct.TYPE_30__* @ngx_http_get_module_loc_conf(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_24__* @ngx_resolve_start(i32*, %struct.TYPE_24__*) #1

declare dso_local i64 @ngx_resolve_name(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
