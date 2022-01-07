; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_multi_upstream_module/extr_ngx_http_multi_upstream.c_ngx_http_multi_upstream_send_response.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_multi_upstream_module/extr_ngx_http_multi_upstream.c_ngx_http_multi_upstream_send_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i64, i32 (%struct.TYPE_30__*)*, %struct.TYPE_28__*, i32, i64, %struct.TYPE_32__*, i64 }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_32__ = type { i64, i32, i32 }
%struct.TYPE_29__ = type { i32, i64 (%struct.TYPE_30__*)*, i64, %struct.TYPE_30__*, i32, i32*, i32, %struct.TYPE_25__*, %struct.TYPE_24__*, i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_31__ = type { i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"http multi upstream send response: %p, %p\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_INVALID_FILE = common dso_local global i32 0, align 4
@ngx_http_core_module = common dso_local global i32 0, align 4
@ngx_http_upstream_non_buffered_filter = common dso_local global i32* null, align 8
@ngx_http_upstream_process_non_buffered_upstream = common dso_local global i32 0, align 4
@NGX_TCP_NODELAY_UNSET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"tcp_nodelay\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@ngx_socket_errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"setsockopt(TCP_NODELAY) failed\00", align 1
@NGX_TCP_NODELAY_SET = common dso_local global i64 0, align 8
@NGX_HTTP_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_multi_upstream_send_response(%struct.TYPE_30__* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %3, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %4, align 8
  %9 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %10 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 5
  %12 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %16 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %17 = call i32 @ngx_log_debug2(i32 %9, i32 %14, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.TYPE_30__* %15, %struct.TYPE_29__* %16)
  %18 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %19 = call i64 @ngx_http_send_header(%struct.TYPE_30__* %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @NGX_ERROR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %32, label %23

23:                                               ; preds = %2
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @NGX_OK, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27, %23, %2
  %33 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_30__* %33, %struct.TYPE_29__* %34, i64 %35)
  br label %218

37:                                               ; preds = %27
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 5
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %41, align 8
  store %struct.TYPE_32__* %42, %struct.TYPE_32__** %7, align 8
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %37
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_30__* %53, %struct.TYPE_29__* %54, i64 %55)
  br label %218

57:                                               ; preds = %47
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_30__* %68, %struct.TYPE_29__* %69, i64 %70)
  br label %218

72:                                               ; preds = %62, %57
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 8
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %72, %37
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %79, align 8
  %81 = icmp ne %struct.TYPE_28__* %80, null
  br i1 %81, label %82, label %117

82:                                               ; preds = %77
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %86, align 8
  %88 = icmp ne %struct.TYPE_27__* %87, null
  br i1 %88, label %89, label %117

89:                                               ; preds = %82
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %90, i32 0, i32 7
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %117, label %96

96:                                               ; preds = %89
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ngx_pool_run_cleanup_file(i32 %99, i32 %107)
  %109 = load i32, i32* @NGX_INVALID_FILE, align 4
  %110 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 0
  store i32 %109, i32* %116, align 4
  br label %117

117:                                              ; preds = %96, %89, %82, %77
  %118 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %119 = load i32, i32* @ngx_http_core_module, align 4
  %120 = call %struct.TYPE_31__* @ngx_http_get_module_loc_conf(%struct.TYPE_30__* %118, i32 %119)
  store %struct.TYPE_31__* %120, %struct.TYPE_31__** %8, align 8
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %218, label %125

125:                                              ; preds = %117
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 5
  %128 = load i32*, i32** %127, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %130, label %139

130:                                              ; preds = %125
  %131 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %131, i32 0, i32 1
  store i64 (%struct.TYPE_30__*)* @ngx_http_upstream_non_buffered_filter_init, i64 (%struct.TYPE_30__*)** %132, align 8
  %133 = load i32*, i32** @ngx_http_upstream_non_buffered_filter, align 8
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %134, i32 0, i32 5
  store i32* %133, i32** %135, align 8
  %136 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i32 0, i32 3
  store %struct.TYPE_30__* %136, %struct.TYPE_30__** %138, align 8
  br label %139

139:                                              ; preds = %130, %125
  %140 = load i32, i32* @ngx_http_upstream_process_non_buffered_upstream, align 4
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %143, i32 0, i32 1
  store i32 (%struct.TYPE_30__*)* @ngx_http_upstream_process_non_buffered_downstream, i32 (%struct.TYPE_30__*)** %144, align 8
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 0
  store i64 0, i64* %146, align 8
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %147, i32 0, i32 1
  %149 = load i64 (%struct.TYPE_30__*)*, i64 (%struct.TYPE_30__*)** %148, align 8
  %150 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %150, i32 0, i32 3
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %151, align 8
  %153 = call i64 %149(%struct.TYPE_30__* %152)
  %154 = load i64, i64* @NGX_ERROR, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %139
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %159 = load i64, i64* @NGX_ERROR, align 8
  %160 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_30__* %157, %struct.TYPE_29__* %158, i64 %159)
  br label %218

161:                                              ; preds = %139
  %162 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %198

166:                                              ; preds = %161
  %167 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @NGX_TCP_NODELAY_UNSET, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %198

172:                                              ; preds = %166
  %173 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %174 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @ngx_log_debug0(i32 %173, i32 %176, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  %178 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @IPPROTO_TCP, align 4
  %182 = load i32, i32* @TCP_NODELAY, align 4
  %183 = bitcast i32* %5 to i8*
  %184 = call i32 @setsockopt(i32 %180, i32 %181, i32 %182, i8* %183, i32 4)
  %185 = icmp eq i32 %184, -1
  br i1 %185, label %186, label %194

186:                                              ; preds = %172
  %187 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %188 = load i32, i32* @ngx_socket_errno, align 4
  %189 = call i32 @ngx_connection_error(%struct.TYPE_32__* %187, i32 %188, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %190 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %191 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %192 = load i64, i64* @NGX_ERROR, align 8
  %193 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_30__* %190, %struct.TYPE_29__* %191, i64 %192)
  br label %218

194:                                              ; preds = %172
  %195 = load i64, i64* @NGX_TCP_NODELAY_SET, align 8
  %196 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %196, i32 0, i32 0
  store i64 %195, i64* %197, align 8
  br label %198

198:                                              ; preds = %194, %166, %161
  %199 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %217

203:                                              ; preds = %198
  %204 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %205 = load i32, i32* @NGX_HTTP_FLUSH, align 4
  %206 = call i64 @ngx_http_send_special(%struct.TYPE_30__* %204, i32 %205)
  %207 = load i64, i64* @NGX_ERROR, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %214

209:                                              ; preds = %203
  %210 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %211 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %212 = load i64, i64* @NGX_ERROR, align 8
  %213 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_30__* %210, %struct.TYPE_29__* %211, i64 %212)
  br label %218

214:                                              ; preds = %203
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %216 = call i32 @ngx_http_upstream_process_non_buffered_downstream(%struct.TYPE_30__* %215)
  br label %217

217:                                              ; preds = %214, %198
  br label %218

218:                                              ; preds = %32, %52, %67, %156, %186, %209, %217, %117
  ret void
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, %struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i64 @ngx_http_send_header(%struct.TYPE_30__*) #1

declare dso_local i32 @ngx_http_upstream_finalize_request(%struct.TYPE_30__*, %struct.TYPE_29__*, i64) #1

declare dso_local i32 @ngx_pool_run_cleanup_file(i32, i32) #1

declare dso_local %struct.TYPE_31__* @ngx_http_get_module_loc_conf(%struct.TYPE_30__*, i32) #1

declare dso_local i64 @ngx_http_upstream_non_buffered_filter_init(%struct.TYPE_30__*) #1

declare dso_local i32 @ngx_http_upstream_process_non_buffered_downstream(%struct.TYPE_30__*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_connection_error(%struct.TYPE_32__*, i32, i8*) #1

declare dso_local i64 @ngx_http_send_special(%struct.TYPE_30__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
