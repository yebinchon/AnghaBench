; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_proxy_connect_module/extr_ngx_http_proxy_connect_module.c_ngx_http_proxy_connect_process_connect.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_proxy_connect_module/extr_ngx_http_proxy_connect_module.c_ngx_http_proxy_connect_process_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { i8* }
%struct.TYPE_34__ = type { i32, i32, %struct.TYPE_31__, %struct.TYPE_32__*, %struct.TYPE_26__* }
%struct.TYPE_31__ = type { %struct.TYPE_36__*, i32, i32*, i32, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_28__*, %struct.TYPE_25__*, %struct.TYPE_30__*, %struct.TYPE_27__*, i32, %struct.TYPE_34__* }
%struct.TYPE_28__ = type { %struct.TYPE_25__*, i8* }
%struct.TYPE_30__ = type { %struct.TYPE_25__*, i8* }
%struct.TYPE_27__ = type { %struct.TYPE_25__* }
%struct.TYPE_32__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_35__ = type { i32 }

@ngx_http_proxy_connect_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"connecting to upstream\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@ngx_http_proxy_connect_get_peer = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"proxy_connect: ngx_event_connect_peer() returns %i\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_BUSY = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"proxy_connect: no live connection\00", align 1
@NGX_HTTP_BAD_GATEWAY = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"proxy_connect: connection error\00", align 1
@ngx_http_proxy_connect_upstream_handler = common dso_local global i8* null, align 8
@ngx_http_proxy_connect_write_upstream = common dso_local global i32 0, align 4
@ngx_http_proxy_connect_read_upstream = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_33__*, %struct.TYPE_34__*)* @ngx_http_proxy_connect_process_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_proxy_connect_process_connect(%struct.TYPE_33__* %0, %struct.TYPE_34__* %1) #0 {
  %3 = alloca %struct.TYPE_33__*, align 8
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca %struct.TYPE_35__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %3, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %4, align 8
  %10 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %11 = load i32, i32* @ngx_http_proxy_connect_module, align 4
  %12 = call %struct.TYPE_35__* @ngx_http_get_module_ctx(%struct.TYPE_33__* %10, i32 %11)
  store %struct.TYPE_35__* %12, %struct.TYPE_35__** %9, align 8
  %13 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %20 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %21 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @ngx_http_proxy_connect_set_local(%struct.TYPE_33__* %19, %struct.TYPE_34__* %20, i32 %25)
  %27 = load i64, i64* @NGX_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %31 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %32 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %33 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_33__* %30, %struct.TYPE_34__* %31, i32 %32)
  br label %206

34:                                               ; preds = %2
  %35 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %35, i32 0, i32 2
  store %struct.TYPE_31__* %36, %struct.TYPE_31__** %7, align 8
  %37 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_32__*, %struct.TYPE_32__** %38, align 8
  store %struct.TYPE_32__* %39, %struct.TYPE_32__** %8, align 8
  %40 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 2
  store i32* %51, i32** %53, align 8
  %54 = load i32, i32* @ngx_http_proxy_connect_get_peer, align 4
  %55 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %57, i32 0, i32 2
  %59 = call i64 @ngx_event_connect_peer(%struct.TYPE_31__* %58)
  store i64 %59, i64* %5, align 8
  %60 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %61 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @ngx_log_debug1(i32 %60, %struct.TYPE_25__* %65, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %66)
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @NGX_ERROR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %34
  %72 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %73 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %74 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %75 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_33__* %72, %struct.TYPE_34__* %73, i32 %74)
  br label %206

76:                                               ; preds = %34
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* @NGX_BUSY, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = load i32, i32* @NGX_LOG_ERR, align 4
  %82 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %85, align 8
  %87 = call i32 @ngx_log_error(i32 %81, %struct.TYPE_25__* %86, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %88 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %89 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %90 = load i32, i32* @NGX_HTTP_BAD_GATEWAY, align 4
  %91 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_33__* %88, %struct.TYPE_34__* %89, i32 %90)
  br label %206

92:                                               ; preds = %76
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* @NGX_DECLINED, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = load i32, i32* @NGX_LOG_ERR, align 4
  %98 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %101, align 8
  %103 = call i32 @ngx_log_error(i32 %97, %struct.TYPE_25__* %102, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %104 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %105 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %106 = load i32, i32* @NGX_HTTP_BAD_GATEWAY, align 4
  %107 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_33__* %104, %struct.TYPE_34__* %105, i32 %106)
  br label %206

108:                                              ; preds = %92
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_36__*, %struct.TYPE_36__** %110, align 8
  store %struct.TYPE_36__* %111, %struct.TYPE_36__** %6, align 8
  %112 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %113 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %113, i32 0, i32 5
  store %struct.TYPE_34__* %112, %struct.TYPE_34__** %114, align 8
  %115 = load i8*, i8** @ngx_http_proxy_connect_upstream_handler, align 8
  %116 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 1
  store i8* %115, i8** %119, align 8
  %120 = load i8*, i8** @ngx_http_proxy_connect_upstream_handler, align 8
  %121 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %123, i32 0, i32 1
  store i8* %120, i8** %124, align 8
  %125 = load i32, i32* @ngx_http_proxy_connect_write_upstream, align 4
  %126 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @ngx_http_proxy_connect_read_upstream, align 4
  %129 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = and i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %143, align 8
  %145 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %145, i32 0, i32 1
  store %struct.TYPE_25__* %144, %struct.TYPE_25__** %146, align 8
  %147 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %148, align 8
  %150 = icmp eq %struct.TYPE_27__* %149, null
  br i1 %150, label %151, label %170

151:                                              ; preds = %108
  %152 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %155, align 8
  %157 = call %struct.TYPE_27__* @ngx_create_pool(i32 128, %struct.TYPE_25__* %156)
  %158 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %158, i32 0, i32 3
  store %struct.TYPE_27__* %157, %struct.TYPE_27__** %159, align 8
  %160 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %161, align 8
  %163 = icmp eq %struct.TYPE_27__* %162, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %151
  %165 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %166 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %167 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %168 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_33__* %165, %struct.TYPE_34__* %166, i32 %167)
  br label %206

169:                                              ; preds = %151
  br label %170

170:                                              ; preds = %169, %108
  %171 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %172, align 8
  %174 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %174, i32 0, i32 3
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i32 0, i32 0
  store %struct.TYPE_25__* %173, %struct.TYPE_25__** %177, align 8
  %178 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %179, align 8
  %181 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_30__*, %struct.TYPE_30__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %183, i32 0, i32 0
  store %struct.TYPE_25__* %180, %struct.TYPE_25__** %184, align 8
  %185 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %186, align 8
  %188 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %190, i32 0, i32 0
  store %struct.TYPE_25__* %187, %struct.TYPE_25__** %191, align 8
  %192 = load i64, i64* %5, align 8
  %193 = load i64, i64* @NGX_AGAIN, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %203

195:                                              ; preds = %170
  %196 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %197, align 8
  %199 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @ngx_add_timer(%struct.TYPE_28__* %198, i32 %201)
  br label %206

203:                                              ; preds = %170
  %204 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %205 = call i32 @ngx_http_proxy_connect_send_connection_established(%struct.TYPE_33__* %204)
  br label %206

206:                                              ; preds = %203, %195, %164, %96, %80, %71, %29
  ret void
}

declare dso_local %struct.TYPE_35__* @ngx_http_get_module_ctx(%struct.TYPE_33__*, i32) #1

declare dso_local i64 @ngx_http_proxy_connect_set_local(%struct.TYPE_33__*, %struct.TYPE_34__*, i32) #1

declare dso_local i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_33__*, %struct.TYPE_34__*, i32) #1

declare dso_local i64 @ngx_event_connect_peer(%struct.TYPE_31__*) #1

declare dso_local i32 @ngx_log_debug1(i32, %struct.TYPE_25__*, i32, i8*, i64) #1

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_25__*, i32, i8*) #1

declare dso_local %struct.TYPE_27__* @ngx_create_pool(i32, %struct.TYPE_25__*) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @ngx_http_proxy_connect_send_connection_established(%struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
