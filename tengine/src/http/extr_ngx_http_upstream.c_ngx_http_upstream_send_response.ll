; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_send_response.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_send_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_58__ = type { i32, i32 (%struct.TYPE_58__*)*, i32, %struct.TYPE_66__*, i64, i64, %struct.TYPE_65__*, i32, %struct.TYPE_58__*, %struct.TYPE_62__*, i64 }
%struct.TYPE_66__ = type { i64, i32, %struct.TYPE_54__, %struct.TYPE_52__*, i32, i64, i64 }
%struct.TYPE_54__ = type { i64, i32 }
%struct.TYPE_52__ = type { i32, i32 }
%struct.TYPE_65__ = type { %struct.TYPE_64__* }
%struct.TYPE_64__ = type { %struct.TYPE_61__ }
%struct.TYPE_61__ = type { i64 }
%struct.TYPE_62__ = type { i64, i32 }
%struct.TYPE_57__ = type { i32, i64 (%struct.TYPE_58__*, i64)*, i64 (%struct.TYPE_58__*)*, i64, i32 (%struct.TYPE_58__*, %struct.TYPE_57__*)*, %struct.TYPE_56__*, %struct.TYPE_55__, i32, i64, %struct.TYPE_51__, %struct.TYPE_73__, %struct.TYPE_60__*, %struct.TYPE_72__, i32, %struct.TYPE_58__*, %struct.TYPE_68__*, i32, i64 }
%struct.TYPE_56__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_55__ = type { i32, i64, i64, i64 }
%struct.TYPE_51__ = type { %struct.TYPE_74__* }
%struct.TYPE_74__ = type { %struct.TYPE_70__* }
%struct.TYPE_70__ = type { i64 }
%struct.TYPE_73__ = type { i32 }
%struct.TYPE_60__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_58__*, i32, i32, i32, %struct.TYPE_67__*, i64, %struct.TYPE_69__*, %struct.TYPE_58__*, i32, i32, i32, %struct.TYPE_63__*, i8*, i32, i32, i32, %struct.TYPE_62__*, %struct.TYPE_74__*, i32, i32, i32, %struct.TYPE_58__*, i32 }
%struct.TYPE_67__ = type { i32, i64, i64, i64 }
%struct.TYPE_69__ = type { i32*, %struct.TYPE_55__* }
%struct.TYPE_63__ = type { i32, i8*, i32, %struct.TYPE_53__, i32, i32 }
%struct.TYPE_53__ = type { i32, i32, i64 }
%struct.TYPE_72__ = type { i64, i32, %struct.TYPE_71__* }
%struct.TYPE_71__ = type { i32 }
%struct.TYPE_68__ = type { i32 }
%struct.TYPE_59__ = type { i64, i32, i32, i64, i64 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_INVALID_FILE = common dso_local global i64 0, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_HTTP_FLUSH = common dso_local global i32 0, align 4
@ngx_http_upstream_output_filter = common dso_local global i32 0, align 4
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"an upstream response is buffered to a temporary file\00", align 1
@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_USE_IOCP_EVENT = common dso_local global i32 0, align 4
@NGX_HTTP_AIO_THREADS = common dso_local global i64 0, align 8
@NGX_HTTP_CACHE_BYPASS = common dso_local global i32 0, align 4
@NGX_HTTP_OK = common dso_local global i64 0, align 8
@NGX_HTTP_PARTIAL_CONTENT = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@ngx_http_upstream_thread_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_58__*, %struct.TYPE_57__*)* @ngx_http_upstream_send_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_upstream_send_response(%struct.TYPE_58__* %0, %struct.TYPE_57__* %1) #0 {
  %3 = alloca %struct.TYPE_58__*, align 8
  %4 = alloca %struct.TYPE_57__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_60__*, align 8
  %8 = alloca %struct.TYPE_62__*, align 8
  %9 = alloca %struct.TYPE_59__*, align 8
  store %struct.TYPE_58__* %0, %struct.TYPE_58__** %3, align 8
  store %struct.TYPE_57__* %1, %struct.TYPE_57__** %4, align 8
  %10 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %11 = call i64 @ngx_http_send_header(%struct.TYPE_58__* %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp eq i64 %12, 128
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @NGX_OK, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %19, i32 0, i32 10
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18, %14, %2
  %24 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %25 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_58__* %24, %struct.TYPE_57__* %25, i64 %26)
  br label %590

28:                                               ; preds = %18
  %29 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %31, i32 0, i32 17
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %37 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %38 = call i32 @ngx_http_upstream_upgrade(%struct.TYPE_58__* %36, %struct.TYPE_57__* %37)
  br label %590

39:                                               ; preds = %28
  %40 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %40, i32 0, i32 9
  %42 = load %struct.TYPE_62__*, %struct.TYPE_62__** %41, align 8
  store %struct.TYPE_62__* %42, %struct.TYPE_62__** %8, align 8
  %43 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %39
  %48 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %48, i32 0, i32 16
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %54 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_58__* %53, %struct.TYPE_57__* %54, i64 %55)
  br label %590

57:                                               ; preds = %47
  %58 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %63, i32 0, i32 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %69 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_58__* %68, %struct.TYPE_57__* %69, i64 %70)
  br label %590

72:                                               ; preds = %62, %57
  %73 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %73, i32 0, i32 11
  %75 = load %struct.TYPE_60__*, %struct.TYPE_60__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %72, %39
  %78 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %78, i32 0, i32 6
  %80 = load %struct.TYPE_65__*, %struct.TYPE_65__** %79, align 8
  %81 = icmp ne %struct.TYPE_65__* %80, null
  br i1 %81, label %82, label %128

82:                                               ; preds = %77
  %83 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %83, i32 0, i32 6
  %85 = load %struct.TYPE_65__*, %struct.TYPE_65__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_64__*, %struct.TYPE_64__** %86, align 8
  %88 = icmp ne %struct.TYPE_64__* %87, null
  br i1 %88, label %89, label %128

89:                                               ; preds = %82
  %90 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %91 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %91, i32 0, i32 8
  %93 = load %struct.TYPE_58__*, %struct.TYPE_58__** %92, align 8
  %94 = icmp eq %struct.TYPE_58__* %90, %93
  br i1 %94, label %95, label %128

95:                                               ; preds = %89
  %96 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %128, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %101, i32 0, i32 5
  %103 = load %struct.TYPE_56__*, %struct.TYPE_56__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %103, i32 0, i32 10
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %128, label %107

107:                                              ; preds = %100
  %108 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %111, i32 0, i32 6
  %113 = load %struct.TYPE_65__*, %struct.TYPE_65__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_64__*, %struct.TYPE_64__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @ngx_pool_run_cleanup_file(i32 %110, i64 %118)
  %120 = load i64, i64* @NGX_INVALID_FILE, align 8
  %121 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %121, i32 0, i32 6
  %123 = load %struct.TYPE_65__*, %struct.TYPE_65__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_64__*, %struct.TYPE_64__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %126, i32 0, i32 0
  store i64 %120, i64* %127, align 8
  br label %128

128:                                              ; preds = %107, %100, %95, %89, %82, %77
  %129 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %130 = load i32, i32* @ngx_http_core_module, align 4
  %131 = call %struct.TYPE_59__* @ngx_http_get_module_loc_conf(%struct.TYPE_58__* %129, i32 %130)
  store %struct.TYPE_59__* %131, %struct.TYPE_59__** %9, align 8
  %132 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %132, i32 0, i32 16
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %273, label %136

136:                                              ; preds = %128
  %137 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %137, i32 0, i32 1
  %139 = load i64 (%struct.TYPE_58__*, i64)*, i64 (%struct.TYPE_58__*, i64)** %138, align 8
  %140 = icmp eq i64 (%struct.TYPE_58__*, i64)* %139, null
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %142, i32 0, i32 2
  store i64 (%struct.TYPE_58__*)* @ngx_http_upstream_non_buffered_filter_init, i64 (%struct.TYPE_58__*)** %143, align 8
  %144 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %144, i32 0, i32 1
  store i64 (%struct.TYPE_58__*, i64)* @ngx_http_upstream_non_buffered_filter, i64 (%struct.TYPE_58__*, i64)** %145, align 8
  %146 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %147 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %147, i32 0, i32 14
  store %struct.TYPE_58__* %146, %struct.TYPE_58__** %148, align 8
  br label %149

149:                                              ; preds = %141, %136
  %150 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %150, i32 0, i32 4
  store i32 (%struct.TYPE_58__*, %struct.TYPE_57__*)* @ngx_http_upstream_process_non_buffered_upstream, i32 (%struct.TYPE_58__*, %struct.TYPE_57__*)** %151, align 8
  %152 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %152, i32 0, i32 1
  store i32 (%struct.TYPE_58__*)* @ngx_http_upstream_process_non_buffered_downstream, i32 (%struct.TYPE_58__*)** %153, align 8
  %154 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %154, i32 0, i32 5
  store i64 0, i64* %155, align 8
  %156 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %156, i32 0, i32 0
  store i32 1, i32* %157, align 8
  %158 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %158, i32 0, i32 2
  %160 = load i64 (%struct.TYPE_58__*)*, i64 (%struct.TYPE_58__*)** %159, align 8
  %161 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %161, i32 0, i32 14
  %163 = load %struct.TYPE_58__*, %struct.TYPE_58__** %162, align 8
  %164 = call i64 %160(%struct.TYPE_58__* %163)
  %165 = icmp eq i64 %164, 128
  br i1 %165, label %166, label %170

166:                                              ; preds = %149
  %167 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %168 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %169 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_58__* %167, %struct.TYPE_57__* %168, i64 128)
  br label %590

170:                                              ; preds = %149
  %171 = load %struct.TYPE_59__*, %struct.TYPE_59__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %170
  %176 = load %struct.TYPE_62__*, %struct.TYPE_62__** %8, align 8
  %177 = call i64 @ngx_tcp_nodelay(%struct.TYPE_62__* %176)
  %178 = load i64, i64* @NGX_OK, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %175
  %181 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %182 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %183 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_58__* %181, %struct.TYPE_57__* %182, i64 128)
  br label %590

184:                                              ; preds = %175, %170
  %185 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %185, i32 0, i32 6
  %187 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %189, i32 0, i32 6
  %191 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = sub nsw i64 %188, %192
  store i64 %193, i64* %5, align 8
  %194 = load i64, i64* %5, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %229

196:                                              ; preds = %184
  %197 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %197, i32 0, i32 6
  %199 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %201, i32 0, i32 6
  %203 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %202, i32 0, i32 2
  store i64 %200, i64* %203, align 8
  %204 = load i64, i64* %5, align 8
  %205 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %205, i32 0, i32 15
  %207 = load %struct.TYPE_68__*, %struct.TYPE_68__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = add nsw i64 %210, %204
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %208, align 4
  %213 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %213, i32 0, i32 1
  %215 = load i64 (%struct.TYPE_58__*, i64)*, i64 (%struct.TYPE_58__*, i64)** %214, align 8
  %216 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %216, i32 0, i32 14
  %218 = load %struct.TYPE_58__*, %struct.TYPE_58__** %217, align 8
  %219 = load i64, i64* %5, align 8
  %220 = call i64 %215(%struct.TYPE_58__* %218, i64 %219)
  %221 = icmp eq i64 %220, 128
  br i1 %221, label %222, label %226

222:                                              ; preds = %196
  %223 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %224 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %225 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_58__* %223, %struct.TYPE_57__* %224, i64 128)
  br label %590

226:                                              ; preds = %196
  %227 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %228 = call i32 @ngx_http_upstream_process_non_buffered_downstream(%struct.TYPE_58__* %227)
  br label %272

229:                                              ; preds = %184
  %230 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %230, i32 0, i32 6
  %232 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %234, i32 0, i32 6
  %236 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %235, i32 0, i32 1
  store i64 %233, i64* %236, align 8
  %237 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %237, i32 0, i32 6
  %239 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %238, i32 0, i32 3
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %241, i32 0, i32 6
  %243 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %242, i32 0, i32 2
  store i64 %240, i64* %243, align 8
  %244 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %245 = load i32, i32* @NGX_HTTP_FLUSH, align 4
  %246 = call i64 @ngx_http_send_special(%struct.TYPE_58__* %244, i32 %245)
  %247 = icmp eq i64 %246, 128
  br i1 %247, label %248, label %252

248:                                              ; preds = %229
  %249 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %250 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %251 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_58__* %249, %struct.TYPE_57__* %250, i64 128)
  br label %590

252:                                              ; preds = %229
  %253 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %253, i32 0, i32 9
  %255 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_74__*, %struct.TYPE_74__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_70__*, %struct.TYPE_70__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %267, label %262

262:                                              ; preds = %252
  %263 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %262, %252
  %268 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %269 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %270 = call i32 @ngx_http_upstream_process_non_buffered_upstream(%struct.TYPE_58__* %268, %struct.TYPE_57__* %269)
  br label %271

271:                                              ; preds = %267, %262
  br label %272

272:                                              ; preds = %271, %226
  br label %590

273:                                              ; preds = %128
  %274 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %274, i32 0, i32 11
  %276 = load %struct.TYPE_60__*, %struct.TYPE_60__** %275, align 8
  store %struct.TYPE_60__* %276, %struct.TYPE_60__** %7, align 8
  %277 = load i32, i32* @ngx_http_upstream_output_filter, align 4
  %278 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %278, i32 0, i32 28
  store i32 %277, i32* %279, align 8
  %280 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %281 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %281, i32 0, i32 27
  store %struct.TYPE_58__* %280, %struct.TYPE_58__** %282, align 8
  %283 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %283, i32 0, i32 10
  %285 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %287, i32 0, i32 26
  store i32 %286, i32* %288, align 8
  %289 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %289, i32 0, i32 5
  %291 = load %struct.TYPE_56__*, %struct.TYPE_56__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %291, i32 0, i32 7
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %294, i32 0, i32 25
  store i32 %293, i32* %295, align 4
  %296 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %296, i32 0, i32 5
  %298 = load %struct.TYPE_56__*, %struct.TYPE_56__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %298, i32 0, i32 6
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %301, i32 0, i32 24
  store i32 %300, i32* %302, align 8
  %303 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %303, i32 0, i32 9
  %305 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_74__*, %struct.TYPE_74__** %305, align 8
  %307 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %307, i32 0, i32 23
  store %struct.TYPE_74__* %306, %struct.TYPE_74__** %308, align 8
  %309 = load %struct.TYPE_62__*, %struct.TYPE_62__** %8, align 8
  %310 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %310, i32 0, i32 22
  store %struct.TYPE_62__* %309, %struct.TYPE_62__** %311, align 8
  %312 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %315, i32 0, i32 21
  store i32 %314, i32* %316, align 8
  %317 = load %struct.TYPE_62__*, %struct.TYPE_62__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %320, i32 0, i32 20
  store i32 %319, i32* %321, align 4
  %322 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %322, i32 0, i32 5
  %324 = load %struct.TYPE_56__*, %struct.TYPE_56__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %324, i32 0, i32 5
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %327, i32 0, i32 19
  store i32 %326, i32* %328, align 8
  %329 = call i8* (...) @ngx_time()
  %330 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %330, i32 0, i32 18
  store i8* %329, i8** %331, align 8
  %332 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %332, i32 0, i32 7
  %334 = load i32, i32* %333, align 8
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %341, label %336

336:                                              ; preds = %273
  %337 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %337, i32 0, i32 8
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br label %341

341:                                              ; preds = %336, %273
  %342 = phi i1 [ true, %273 ], [ %340, %336 ]
  %343 = zext i1 %342 to i32
  %344 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %344, i32 0, i32 1
  store i32 %343, i32* %345, align 4
  %346 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 8
  %349 = call %struct.TYPE_63__* @ngx_pcalloc(i32 %348, i32 4)
  %350 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %351 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %350, i32 0, i32 17
  store %struct.TYPE_63__* %349, %struct.TYPE_63__** %351, align 8
  %352 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %352, i32 0, i32 17
  %354 = load %struct.TYPE_63__*, %struct.TYPE_63__** %353, align 8
  %355 = icmp eq %struct.TYPE_63__* %354, null
  br i1 %355, label %356, label %360

356:                                              ; preds = %341
  %357 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %358 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %359 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_58__* %357, %struct.TYPE_57__* %358, i64 128)
  br label %590

360:                                              ; preds = %341
  %361 = load i64, i64* @NGX_INVALID_FILE, align 8
  %362 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %363 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %362, i32 0, i32 17
  %364 = load %struct.TYPE_63__*, %struct.TYPE_63__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %364, i32 0, i32 3
  %366 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %365, i32 0, i32 2
  store i64 %361, i64* %366, align 8
  %367 = load %struct.TYPE_62__*, %struct.TYPE_62__** %8, align 8
  %368 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %370, i32 0, i32 17
  %372 = load %struct.TYPE_63__*, %struct.TYPE_63__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %372, i32 0, i32 3
  %374 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %373, i32 0, i32 1
  store i32 %369, i32* %374, align 4
  %375 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %375, i32 0, i32 5
  %377 = load %struct.TYPE_56__*, %struct.TYPE_56__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %377, i32 0, i32 4
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %381 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %380, i32 0, i32 17
  %382 = load %struct.TYPE_63__*, %struct.TYPE_63__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %382, i32 0, i32 4
  store i32 %379, i32* %383, align 8
  %384 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %385 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 8
  %387 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %388 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %387, i32 0, i32 17
  %389 = load %struct.TYPE_63__*, %struct.TYPE_63__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %389, i32 0, i32 5
  store i32 %386, i32* %390, align 4
  %391 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %392 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %400

395:                                              ; preds = %360
  %396 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %397 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %396, i32 0, i32 17
  %398 = load %struct.TYPE_63__*, %struct.TYPE_63__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %398, i32 0, i32 0
  store i32 1, i32* %399, align 8
  br label %410

400:                                              ; preds = %360
  %401 = load i32, i32* @NGX_LOG_WARN, align 4
  %402 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %403 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %402, i32 0, i32 17
  %404 = load %struct.TYPE_63__*, %struct.TYPE_63__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %404, i32 0, i32 2
  store i32 %401, i32* %405, align 8
  %406 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %407 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %406, i32 0, i32 17
  %408 = load %struct.TYPE_63__*, %struct.TYPE_63__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %408, i32 0, i32 1
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8** %409, align 8
  br label %410

410:                                              ; preds = %400, %395
  %411 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %411, i32 0, i32 5
  %413 = load %struct.TYPE_56__*, %struct.TYPE_56__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %413, i32 0, i32 3
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %417 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %416, i32 0, i32 16
  store i32 %415, i32* %417, align 8
  %418 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %419 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %418, i32 0, i32 5
  %420 = load %struct.TYPE_56__*, %struct.TYPE_56__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %420, i32 0, i32 2
  %422 = load i32, i32* %421, align 8
  %423 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %424 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %423, i32 0, i32 15
  store i32 %422, i32* %424, align 4
  %425 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %426 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %425, i32 0, i32 2
  %427 = load i32, i32* %426, align 8
  %428 = call %struct.TYPE_69__* @ngx_alloc_chain_link(i32 %427)
  %429 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %430 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %429, i32 0, i32 12
  store %struct.TYPE_69__* %428, %struct.TYPE_69__** %430, align 8
  %431 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %432 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %431, i32 0, i32 12
  %433 = load %struct.TYPE_69__*, %struct.TYPE_69__** %432, align 8
  %434 = icmp eq %struct.TYPE_69__* %433, null
  br i1 %434, label %435, label %439

435:                                              ; preds = %410
  %436 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %437 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %438 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_58__* %436, %struct.TYPE_57__* %437, i64 128)
  br label %590

439:                                              ; preds = %410
  %440 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %441 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %440, i32 0, i32 6
  %442 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %443 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %442, i32 0, i32 12
  %444 = load %struct.TYPE_69__*, %struct.TYPE_69__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %444, i32 0, i32 1
  store %struct.TYPE_55__* %441, %struct.TYPE_55__** %445, align 8
  %446 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %447 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %446, i32 0, i32 12
  %448 = load %struct.TYPE_69__*, %struct.TYPE_69__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %448, i32 0, i32 0
  store i32* null, i32** %449, align 8
  %450 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %451 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %450, i32 0, i32 6
  %452 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %451, i32 0, i32 0
  store i32 1, i32* %452, align 8
  %453 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %454 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %453, i32 0, i32 6
  %455 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %454, i32 0, i32 2
  %456 = load i64, i64* %455, align 8
  %457 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %458 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %457, i32 0, i32 6
  %459 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %458, i32 0, i32 1
  %460 = load i64, i64* %459, align 8
  %461 = sub nsw i64 %456, %460
  %462 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %463 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %462, i32 0, i32 11
  store i64 %461, i64* %463, align 8
  %464 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %465 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %464, i32 0, i32 7
  %466 = load i32, i32* %465, align 8
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %512

468:                                              ; preds = %439
  %469 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %470 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %469, i32 0, i32 2
  %471 = load i32, i32* %470, align 8
  %472 = call %struct.TYPE_67__* @ngx_calloc_buf(i32 %471)
  %473 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %474 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %473, i32 0, i32 10
  store %struct.TYPE_67__* %472, %struct.TYPE_67__** %474, align 8
  %475 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %476 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %475, i32 0, i32 10
  %477 = load %struct.TYPE_67__*, %struct.TYPE_67__** %476, align 8
  %478 = icmp eq %struct.TYPE_67__* %477, null
  br i1 %478, label %479, label %483

479:                                              ; preds = %468
  %480 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %481 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %482 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_58__* %480, %struct.TYPE_57__* %481, i64 128)
  br label %590

483:                                              ; preds = %468
  %484 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %485 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %484, i32 0, i32 6
  %486 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %485, i32 0, i32 3
  %487 = load i64, i64* %486, align 8
  %488 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %489 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %488, i32 0, i32 10
  %490 = load %struct.TYPE_67__*, %struct.TYPE_67__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %490, i32 0, i32 3
  store i64 %487, i64* %491, align 8
  %492 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %493 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %492, i32 0, i32 6
  %494 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %493, i32 0, i32 3
  %495 = load i64, i64* %494, align 8
  %496 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %497 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %496, i32 0, i32 10
  %498 = load %struct.TYPE_67__*, %struct.TYPE_67__** %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %498, i32 0, i32 2
  store i64 %495, i64* %499, align 8
  %500 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %501 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %500, i32 0, i32 6
  %502 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %501, i32 0, i32 1
  %503 = load i64, i64* %502, align 8
  %504 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %505 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %504, i32 0, i32 10
  %506 = load %struct.TYPE_67__*, %struct.TYPE_67__** %505, align 8
  %507 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %506, i32 0, i32 1
  store i64 %503, i64* %507, align 8
  %508 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %509 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %508, i32 0, i32 10
  %510 = load %struct.TYPE_67__*, %struct.TYPE_67__** %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %510, i32 0, i32 0
  store i32 1, i32* %511, align 8
  br label %512

512:                                              ; preds = %483, %439
  %513 = load i32, i32* @ngx_event_flags, align 4
  %514 = load i32, i32* @NGX_USE_IOCP_EVENT, align 4
  %515 = and i32 %513, %514
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %520

517:                                              ; preds = %512
  %518 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %519 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %518, i32 0, i32 2
  store i32 1, i32* %519, align 8
  br label %520

520:                                              ; preds = %517, %512
  %521 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %522 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %521, i32 0, i32 3
  store i32 1, i32* %522, align 4
  %523 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %524 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %523, i32 0, i32 6
  %525 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %524, i32 0, i32 1
  %526 = load i64, i64* %525, align 8
  %527 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %528 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %527, i32 0, i32 6
  %529 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %528, i32 0, i32 2
  store i64 %526, i64* %529, align 8
  %530 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %531 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %530, i32 0, i32 5
  %532 = load %struct.TYPE_56__*, %struct.TYPE_56__** %531, align 8
  %533 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %532, i32 0, i32 1
  %534 = load i64, i64* %533, align 8
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %536, label %541

536:                                              ; preds = %520
  %537 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %538 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %537, i32 0, i32 4
  store i32 1, i32* %538, align 8
  %539 = load %struct.TYPE_62__*, %struct.TYPE_62__** %8, align 8
  %540 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %539, i32 0, i32 0
  store i64 0, i64* %540, align 8
  br label %544

541:                                              ; preds = %520
  %542 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %543 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %542, i32 0, i32 4
  store i32 0, i32* %543, align 8
  br label %544

544:                                              ; preds = %541, %536
  %545 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %546 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %545, i32 0, i32 5
  %547 = load %struct.TYPE_56__*, %struct.TYPE_56__** %546, align 8
  %548 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 8
  %550 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %551 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %550, i32 0, i32 9
  store i32 %549, i32* %551, align 8
  %552 = load %struct.TYPE_59__*, %struct.TYPE_59__** %9, align 8
  %553 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %552, i32 0, i32 2
  %554 = load i32, i32* %553, align 4
  %555 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %556 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %555, i32 0, i32 8
  store i32 %554, i32* %556, align 4
  %557 = load %struct.TYPE_59__*, %struct.TYPE_59__** %9, align 8
  %558 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %557, i32 0, i32 1
  %559 = load i32, i32* %558, align 8
  %560 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %561 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %560, i32 0, i32 7
  store i32 %559, i32* %561, align 8
  %562 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %563 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %562, i32 0, i32 5
  store i32 -1, i32* %563, align 4
  %564 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %565 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %564, i32 0, i32 2
  %566 = load i64 (%struct.TYPE_58__*)*, i64 (%struct.TYPE_58__*)** %565, align 8
  %567 = icmp ne i64 (%struct.TYPE_58__*)* %566, null
  br i1 %567, label %568, label %582

568:                                              ; preds = %544
  %569 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %570 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %569, i32 0, i32 2
  %571 = load i64 (%struct.TYPE_58__*)*, i64 (%struct.TYPE_58__*)** %570, align 8
  %572 = load %struct.TYPE_60__*, %struct.TYPE_60__** %7, align 8
  %573 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %572, i32 0, i32 6
  %574 = load %struct.TYPE_58__*, %struct.TYPE_58__** %573, align 8
  %575 = call i64 %571(%struct.TYPE_58__* %574)
  %576 = load i64, i64* @NGX_OK, align 8
  %577 = icmp ne i64 %575, %576
  br i1 %577, label %578, label %582

578:                                              ; preds = %568
  %579 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %580 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %581 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_58__* %579, %struct.TYPE_57__* %580, i64 128)
  br label %590

582:                                              ; preds = %568, %544
  %583 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %584 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %583, i32 0, i32 4
  store i32 (%struct.TYPE_58__*, %struct.TYPE_57__*)* @ngx_http_upstream_process_upstream, i32 (%struct.TYPE_58__*, %struct.TYPE_57__*)** %584, align 8
  %585 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %586 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %585, i32 0, i32 1
  store i32 (%struct.TYPE_58__*)* @ngx_http_upstream_process_downstream, i32 (%struct.TYPE_58__*)** %586, align 8
  %587 = load %struct.TYPE_58__*, %struct.TYPE_58__** %3, align 8
  %588 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %589 = call i32 @ngx_http_upstream_process_upstream(%struct.TYPE_58__* %587, %struct.TYPE_57__* %588)
  br label %590

590:                                              ; preds = %582, %578, %479, %435, %356, %272, %248, %222, %180, %166, %67, %52, %35, %23
  ret void
}

declare dso_local i64 @ngx_http_send_header(%struct.TYPE_58__*) #1

declare dso_local i32 @ngx_http_upstream_finalize_request(%struct.TYPE_58__*, %struct.TYPE_57__*, i64) #1

declare dso_local i32 @ngx_http_upstream_upgrade(%struct.TYPE_58__*, %struct.TYPE_57__*) #1

declare dso_local i32 @ngx_pool_run_cleanup_file(i32, i64) #1

declare dso_local %struct.TYPE_59__* @ngx_http_get_module_loc_conf(%struct.TYPE_58__*, i32) #1

declare dso_local i64 @ngx_http_upstream_non_buffered_filter_init(%struct.TYPE_58__*) #1

declare dso_local i64 @ngx_http_upstream_non_buffered_filter(%struct.TYPE_58__*, i64) #1

declare dso_local i32 @ngx_http_upstream_process_non_buffered_upstream(%struct.TYPE_58__*, %struct.TYPE_57__*) #1

declare dso_local i32 @ngx_http_upstream_process_non_buffered_downstream(%struct.TYPE_58__*) #1

declare dso_local i64 @ngx_tcp_nodelay(%struct.TYPE_62__*) #1

declare dso_local i64 @ngx_http_send_special(%struct.TYPE_58__*, i32) #1

declare dso_local i8* @ngx_time(...) #1

declare dso_local %struct.TYPE_63__* @ngx_pcalloc(i32, i32) #1

declare dso_local %struct.TYPE_69__* @ngx_alloc_chain_link(i32) #1

declare dso_local %struct.TYPE_67__* @ngx_calloc_buf(i32) #1

declare dso_local i32 @ngx_http_upstream_process_upstream(%struct.TYPE_58__*, %struct.TYPE_57__*) #1

declare dso_local i32 @ngx_http_upstream_process_downstream(%struct.TYPE_58__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
