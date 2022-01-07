; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_request.c_ngx_http_alloc_request.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_request.c_ngx_http_alloc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_27__, %struct.TYPE_26__, i32, i32, i32, %struct.TYPE_29__*, i32*, i32*, i32*, i32, i32, i32, i32, i32, %struct.TYPE_22__*, i32, %struct.TYPE_21__* }
%struct.TYPE_27__ = type { i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_24__*, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i64, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }

@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_HTTP_MODULE = common dso_local global i32 0, align 4
@ngx_http_block_reading = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_max_module = common dso_local global i32 0, align 4
@NGX_HTTP_UNKNOWN = common dso_local global i32 0, align 4
@NGX_HTTP_VERSION_10 = common dso_local global i32 0, align 4
@NGX_HTTP_MAX_URI_CHANGES = common dso_local global i64 0, align 8
@NGX_HTTP_MAX_SUBREQUESTS = common dso_local global i64 0, align 8
@NGX_HTTP_READING_REQUEST_STATE = common dso_local global i32 0, align 4
@ngx_http_log_error_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_29__* (%struct.TYPE_22__*)* @ngx_http_alloc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_29__* @ngx_http_alloc_request(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_29__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %7, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %16 = load i32, i32* @ngx_http_core_module, align 4
  %17 = call %struct.TYPE_30__* @ngx_http_get_module_srv_conf(%struct.TYPE_23__* %15, i32 %16)
  store %struct.TYPE_30__* %17, %struct.TYPE_30__** %8, align 8
  %18 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32* @ngx_create_pool(i32 %20, i32 %23)
  store i32* %24, i32** %4, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %2, align 8
  br label %219

28:                                               ; preds = %1
  %29 = load i32*, i32** %4, align 8
  %30 = call i8* @ngx_pcalloc(i32* %29, i32 160)
  %31 = bitcast i8* %30 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %31, %struct.TYPE_29__** %6, align 8
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %33 = icmp eq %struct.TYPE_29__* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @ngx_destroy_pool(i32* %35)
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %2, align 8
  br label %219

37:                                               ; preds = %28
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %39, i32 0, i32 14
  store i32* %38, i32** %40, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 24
  store %struct.TYPE_21__* %41, %struct.TYPE_21__** %43, align 8
  %44 = load i32, i32* @NGX_HTTP_MODULE, align 4
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %45, i32 0, i32 23
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 22
  store %struct.TYPE_22__* %47, %struct.TYPE_22__** %49, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %55, i32 0, i32 21
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 20
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 19
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @ngx_http_block_reading, align 4
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i32 0, i32 18
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %75, align 8
  %77 = icmp ne %struct.TYPE_24__* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %37
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  br label %88

84:                                               ; preds = %37
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  br label %88

88:                                               ; preds = %84, %78
  %89 = phi i32 [ %83, %78 ], [ %87, %84 ]
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %90, i32 0, i32 17
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 8
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 14
  %97 = load i32*, i32** %96, align 8
  %98 = call i64 @ngx_list_init(i32* %94, i32* %97, i32 20, i32 4)
  %99 = load i64, i64* @NGX_OK, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %88
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 14
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @ngx_destroy_pool(i32* %104)
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %2, align 8
  br label %219

106:                                              ; preds = %88
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 14
  %112 = load i32*, i32** %111, align 8
  %113 = call i64 @ngx_list_init(i32* %109, i32* %112, i32 4, i32 4)
  %114 = load i64, i64* @NGX_OK, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %106
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 14
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @ngx_destroy_pool(i32* %119)
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %2, align 8
  br label %219

121:                                              ; preds = %106
  %122 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %122, i32 0, i32 14
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* @ngx_http_max_module, align 4
  %126 = sext i32 %125 to i64
  %127 = mul i64 8, %126
  %128 = trunc i64 %127 to i32
  %129 = call i8* @ngx_pcalloc(i32* %124, i32 %128)
  %130 = bitcast i8* %129 to i32*
  %131 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %131, i32 0, i32 16
  store i32* %130, i32** %132, align 8
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i32 0, i32 16
  %135 = load i32*, i32** %134, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %121
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %138, i32 0, i32 14
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @ngx_destroy_pool(i32* %140)
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %2, align 8
  br label %219

142:                                              ; preds = %121
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %144 = load i32, i32* @ngx_http_core_module, align 4
  %145 = call %struct.TYPE_31__* @ngx_http_get_module_main_conf(%struct.TYPE_29__* %143, i32 %144)
  store %struct.TYPE_31__* %145, %struct.TYPE_31__** %9, align 8
  %146 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %146, i32 0, i32 14
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = mul i64 %153, 4
  %155 = trunc i64 %154 to i32
  %156 = call i8* @ngx_pcalloc(i32* %148, i32 %155)
  %157 = bitcast i8* %156 to i32*
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %158, i32 0, i32 15
  store i32* %157, i32** %159, align 8
  %160 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i32 0, i32 15
  %162 = load i32*, i32** %161, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %142
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 14
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @ngx_destroy_pool(i32* %167)
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %2, align 8
  br label %219

169:                                              ; preds = %142
  %170 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 13
  store %struct.TYPE_29__* %170, %struct.TYPE_29__** %172, align 8
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %173, i32 0, i32 1
  store i32 1, i32* %174, align 4
  %175 = call %struct.TYPE_28__* (...) @ngx_timeofday()
  store %struct.TYPE_28__* %175, %struct.TYPE_28__** %5, align 8
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %179, i32 0, i32 12
  store i32 %178, i32* %180, align 8
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  %186 = load i32, i32* @NGX_HTTP_UNKNOWN, align 4
  %187 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %187, i32 0, i32 11
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* @NGX_HTTP_VERSION_10, align 4
  %190 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %190, i32 0, i32 10
  store i32 %189, i32* %191, align 8
  %192 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %192, i32 0, i32 9
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 0
  store i32 -1, i32* %194, align 8
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %195, i32 0, i32 9
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 1
  store i32 -1, i32* %197, align 4
  %198 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %198, i32 0, i32 8
  %200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %199, i32 0, i32 0
  store i32 -1, i32* %200, align 8
  %201 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %201, i32 0, i32 8
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 1
  store i32 -1, i32* %203, align 4
  %204 = load i64, i64* @NGX_HTTP_MAX_URI_CHANGES, align 8
  %205 = add nsw i64 %204, 1
  %206 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %206, i32 0, i32 7
  store i64 %205, i64* %207, align 8
  %208 = load i64, i64* @NGX_HTTP_MAX_SUBREQUESTS, align 8
  %209 = add nsw i64 %208, 1
  %210 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %210, i32 0, i32 6
  store i64 %209, i64* %211, align 8
  %212 = load i32, i32* @NGX_HTTP_READING_REQUEST_STATE, align 4
  %213 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %213, i32 0, i32 5
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* @ngx_http_log_error_handler, align 4
  %216 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %216, i32 0, i32 4
  store i32 %215, i32* %217, align 8
  %218 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  store %struct.TYPE_29__* %218, %struct.TYPE_29__** %2, align 8
  br label %219

219:                                              ; preds = %169, %164, %137, %116, %101, %34, %27
  %220 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  ret %struct.TYPE_29__* %220
}

declare dso_local %struct.TYPE_30__* @ngx_http_get_module_srv_conf(%struct.TYPE_23__*, i32) #1

declare dso_local i32* @ngx_create_pool(i32, i32) #1

declare dso_local i8* @ngx_pcalloc(i32*, i32) #1

declare dso_local i32 @ngx_destroy_pool(i32*) #1

declare dso_local i64 @ngx_list_init(i32*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_31__* @ngx_http_get_module_main_conf(%struct.TYPE_29__*, i32) #1

declare dso_local %struct.TYPE_28__* @ngx_timeofday(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
