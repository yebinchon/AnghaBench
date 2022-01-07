; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_multi_upstream_module/extr_ngx_http_multi_upstream.c_ngx_http_multi_upstream_init_request.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_multi_upstream_module/extr_ngx_http_multi_upstream.c_ngx_http_multi_upstream_init_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_37__*, %struct.TYPE_32__*, %struct.TYPE_27__*, %struct.TYPE_26__* }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__*, i64 }
%struct.TYPE_31__ = type { i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32*, %struct.TYPE_36__, %struct.TYPE_35__, %struct.TYPE_34__, %struct.TYPE_33__*, i64, %struct.TYPE_29__, i32, i32 }
%struct.TYPE_36__ = type { i32, i32 }
%struct.TYPE_35__ = type { i32, i32, %struct.TYPE_30__*, i32 }
%struct.TYPE_30__ = type { i32*, %struct.TYPE_31__* }
%struct.TYPE_34__ = type { i32, i32, i32*, i32*, i32*, i32* }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_29__ = type { i64, %struct.TYPE_28__*, i32*, i32**, i32 }
%struct.TYPE_38__ = type { i32*, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"multi: http upstream init request: %p, %p\00", align 1
@ngx_http_upstream_send_request_handler = common dso_local global i32 0, align 4
@ngx_http_upstream_process_header = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_DEFAULT_POOL_SIZE = common dso_local global i32 0, align 4
@ngx_http_multi_upstream_send_pool_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_multi_upstream_init_request(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_38__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %4, align 8
  %8 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %9 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %16 = call i32 @ngx_log_debug2(i32 %8, i32 %13, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.TYPE_28__* %14, %struct.TYPE_27__* %15)
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  store %struct.TYPE_26__* %19, %struct.TYPE_26__** %5, align 8
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  store %struct.TYPE_27__* %22, %struct.TYPE_27__** %6, align 8
  %23 = load i32, i32* @ngx_http_upstream_send_request_handler, align 4
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @ngx_http_upstream_process_header, align 4
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 8
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %39, i32 0, i32 4
  store i32 %37, i32* %40, align 8
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 3
  store i32** %46, i32*** %49, align 8
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %52, i32 0, i32 1
  store %struct.TYPE_28__* %50, %struct.TYPE_28__** %53, align 8
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %2
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %64 = call i64 @ngx_http_upstream_reinit(%struct.TYPE_27__* %62, %struct.TYPE_26__* %63)
  %65 = load i64, i64* @NGX_OK, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %70 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %71 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_27__* %68, %struct.TYPE_26__* %69, i32 %70)
  br label %310

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %2
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_32__*, %struct.TYPE_32__** %75, align 8
  %77 = icmp ne %struct.TYPE_32__* %76, null
  br i1 %77, label %78, label %171

78:                                               ; preds = %73
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_32__*, %struct.TYPE_32__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_31__*, %struct.TYPE_31__** %82, align 8
  %84 = icmp ne %struct.TYPE_31__* %83, null
  br i1 %84, label %85, label %171

85:                                               ; preds = %78
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_32__*, %struct.TYPE_32__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %171

92:                                               ; preds = %85
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %95, align 8
  %97 = icmp eq %struct.TYPE_27__* %93, %96
  br i1 %97, label %98, label %171

98:                                               ; preds = %92
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call %struct.TYPE_30__* @ngx_alloc_chain_link(i32 %101)
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %104, i32 0, i32 2
  store %struct.TYPE_30__* %102, %struct.TYPE_30__** %105, align 8
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %108, align 8
  %110 = icmp eq %struct.TYPE_30__* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %98
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %114 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %115 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_27__* %112, %struct.TYPE_26__* %113, i32 %114)
  br label %310

116:                                              ; preds = %98
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_31__*, %struct.TYPE_31__** %120, align 8
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 1
  store %struct.TYPE_31__* %121, %struct.TYPE_31__** %126, align 8
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %130, i32 0, i32 0
  store i32* null, i32** %131, align 8
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_32__*, %struct.TYPE_32__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_32__*, %struct.TYPE_32__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_31__*, %struct.TYPE_31__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %146, i32 0, i32 3
  store i32 %141, i32* %147, align 4
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_32__*, %struct.TYPE_32__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_32__*, %struct.TYPE_32__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_31__*, %struct.TYPE_31__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %159, i32 0, i32 2
  store i32 %154, i32* %160, align 4
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_32__*, %struct.TYPE_32__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_31__*, %struct.TYPE_31__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %169, i32 0, i32 0
  store i32 %164, i32* %170, align 4
  br label %171

171:                                              ; preds = %116, %92, %85, %78, %73
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 5
  store i64 0, i64* %173, align 8
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = icmp eq i32* %177, null
  br i1 %178, label %179, label %269

179:                                              ; preds = %171
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i32 0, i32 4
  %185 = load %struct.TYPE_33__*, %struct.TYPE_33__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32* @ngx_palloc(i32 %182, i32 %187)
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %190, i32 0, i32 2
  store i32* %188, i32** %191, align 8
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = icmp eq i32* %195, null
  br i1 %196, label %197, label %202

197:                                              ; preds = %179
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %200 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %201 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_27__* %198, %struct.TYPE_26__* %199, i32 %200)
  br label %310

202:                                              ; preds = %179
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %208, i32 0, i32 5
  store i32* %206, i32** %209, align 8
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %215, i32 0, i32 4
  store i32* %213, i32** %216, align 8
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 4
  %223 = load %struct.TYPE_33__*, %struct.TYPE_33__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %220, i64 %226
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %228, i32 0, i32 3
  %230 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %229, i32 0, i32 3
  store i32* %227, i32** %230, align 8
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %232, i32 0, i32 0
  store i32 1, i32* %233, align 8
  %234 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %239, i32 0, i32 1
  store i32 %237, i32* %240, align 4
  %241 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i64 @ngx_list_init(i32* %243, i32 %246, i32 8, i32 4)
  %248 = load i64, i64* @NGX_OK, align 8
  %249 = icmp ne i64 %247, %248
  br i1 %249, label %250, label %254

250:                                              ; preds = %202
  %251 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %252 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %253 = call i32 @ngx_http_multi_upstream_finalize_request(%struct.TYPE_28__* %251, i32 %252)
  br label %310

254:                                              ; preds = %202
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = call i64 @ngx_list_init(i32* %257, i32 %260, i32 2, i32 4)
  %262 = load i64, i64* @NGX_OK, align 8
  %263 = icmp ne i64 %261, %262
  br i1 %263, label %264, label %268

264:                                              ; preds = %254
  %265 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %266 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %267 = call i32 @ngx_http_multi_upstream_finalize_request(%struct.TYPE_28__* %265, i32 %266)
  br label %310

268:                                              ; preds = %254
  br label %269

269:                                              ; preds = %268, %171
  %270 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = icmp eq i32* %272, null
  br i1 %273, label %274, label %306

274:                                              ; preds = %269
  %275 = load i32, i32* @NGX_DEFAULT_POOL_SIZE, align 4
  %276 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %276, i32 0, i32 1
  %278 = load %struct.TYPE_37__*, %struct.TYPE_37__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = call i32* @ngx_create_pool(i32 %275, i32 %280)
  %282 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %282, i32 0, i32 0
  store i32* %281, i32** %283, align 8
  %284 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = icmp eq i32* %286, null
  br i1 %287, label %288, label %289

288:                                              ; preds = %274
  br label %310

289:                                              ; preds = %274
  %290 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = call %struct.TYPE_38__* @ngx_pool_cleanup_add(i32 %292, i32 0)
  store %struct.TYPE_38__* %293, %struct.TYPE_38__** %7, align 8
  %294 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %295 = icmp eq %struct.TYPE_38__* %294, null
  br i1 %295, label %296, label %297

296:                                              ; preds = %289
  br label %310

297:                                              ; preds = %289
  %298 = load i32, i32* @ngx_http_multi_upstream_send_pool_cleanup, align 4
  %299 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 8
  %301 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %304, i32 0, i32 0
  store i32* %303, i32** %305, align 8
  br label %306

306:                                              ; preds = %297, %269
  %307 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %308 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %309 = call i32 @ngx_http_upstream_send_request(%struct.TYPE_27__* %307, %struct.TYPE_26__* %308, i32 1)
  br label %310

310:                                              ; preds = %306, %296, %288, %264, %250, %197, %111, %67
  ret void
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, %struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local i64 @ngx_http_upstream_reinit(%struct.TYPE_27__*, %struct.TYPE_26__*) #1

declare dso_local i32 @ngx_http_upstream_finalize_request(%struct.TYPE_27__*, %struct.TYPE_26__*, i32) #1

declare dso_local %struct.TYPE_30__* @ngx_alloc_chain_link(i32) #1

declare dso_local i32* @ngx_palloc(i32, i32) #1

declare dso_local i64 @ngx_list_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ngx_http_multi_upstream_finalize_request(%struct.TYPE_28__*, i32) #1

declare dso_local i32* @ngx_create_pool(i32, i32) #1

declare dso_local %struct.TYPE_38__* @ngx_pool_cleanup_add(i32, i32) #1

declare dso_local i32 @ngx_http_upstream_send_request(%struct.TYPE_27__*, %struct.TYPE_26__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
