; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_send_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_send_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 (%struct.TYPE_20__*, i64, i64)*, i32, i32, i32, i32, i32*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64 (%struct.TYPE_17__*)*, %struct.TYPE_18__*, %struct.TYPE_15__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"http check send.\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"check pool NULL with peer: %V \00", align 1
@NGX_HTTP_CHECK_CONNECT_DONE = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"check handle write event error with peer: %V \00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"check init error with peer: %V \00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"http check send total: %z\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"http check send done.\00", align 1
@NGX_HTTP_CHECK_SEND_DONE = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_14__* null, align 8
@ngx_socket_errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @ngx_http_upstream_check_send_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_upstream_check_send_handler(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %7 = call i64 (...) @ngx_http_upstream_check_need_exit()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %198

10:                                               ; preds = %1
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %13, %struct.TYPE_20__** %4, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 6
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %6, align 8
  %17 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ngx_log_debug0(i32 %17, i32 %20, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %10
  %27 = load i32, i32* @NGX_LOG_ERR, align 4
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = ptrtoint i32* %34 to i64
  %36 = call i32 (i32, i32, i32, i8*, i64, ...) @ngx_log_error(i32 %27, i32 %30, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  br label %193

37:                                               ; preds = %10
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NGX_HTTP_CHECK_CONNECT_DONE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %37
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @ngx_handle_write_event(i32 %46, i32 0)
  %48 = load i64, i64* @NGX_OK, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %43
  %51 = load i32, i32* @NGX_LOG_ERR, align 4
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = ptrtoint i32* %58 to i64
  %60 = call i32 (i32, i32, i32, i8*, i64, ...) @ngx_log_error(i32 %51, i32 %54, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  br label %193

61:                                               ; preds = %43
  br label %198

62:                                               ; preds = %37
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = icmp eq %struct.TYPE_18__* %65, null
  br i1 %66, label %67, label %104

67:                                               ; preds = %62
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.TYPE_18__* @ngx_pcalloc(i32 %70, i32 16)
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 2
  store %struct.TYPE_18__* %71, %struct.TYPE_18__** %73, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %75, align 8
  %77 = icmp eq %struct.TYPE_18__* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %193

79:                                               ; preds = %67
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = load i64 (%struct.TYPE_17__*)*, i64 (%struct.TYPE_17__*)** %81, align 8
  %83 = icmp eq i64 (%struct.TYPE_17__*)* %82, null
  br i1 %83, label %92, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 1
  %87 = load i64 (%struct.TYPE_17__*)*, i64 (%struct.TYPE_17__*)** %86, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %89 = call i64 %87(%struct.TYPE_17__* %88)
  %90 = load i64, i64* @NGX_OK, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %84, %79
  %93 = load i32, i32* @NGX_LOG_ERR, align 4
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = ptrtoint i32* %100 to i64
  %102 = call i32 (i32, i32, i32, i8*, i64, ...) @ngx_log_error(i32 %93, i32 %96, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %101)
  br label %193

103:                                              ; preds = %84
  br label %104

104:                                              ; preds = %103, %62
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %106, align 8
  store %struct.TYPE_18__* %107, %struct.TYPE_18__** %5, align 8
  %108 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %115, %119
  %121 = call i32 @ngx_log_debug1(i32 %108, i32 %111, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %120)
  br label %122

122:                                              ; preds = %168, %104
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp slt i64 %126, %130
  br i1 %131, label %132, label %169

132:                                              ; preds = %122
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 0
  %135 = load i64 (%struct.TYPE_20__*, i64, i64)*, i64 (%struct.TYPE_20__*, i64, i64)** %134, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = sub nsw i64 %144, %148
  %150 = call i64 %135(%struct.TYPE_20__* %136, i64 %140, i64 %149)
  store i64 %150, i64* %3, align 8
  %151 = load i64, i64* %3, align 8
  %152 = icmp sge i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %132
  %154 = load i64, i64* %3, align 8
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, %154
  store i64 %159, i64* %157, align 8
  br label %168

160:                                              ; preds = %132
  %161 = load i64, i64* %3, align 8
  %162 = load i64, i64* @NGX_AGAIN, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  br label %198

165:                                              ; preds = %160
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 1
  store i32 1, i32* %167, align 8
  br label %193

168:                                              ; preds = %153
  br label %122

169:                                              ; preds = %122
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %173, %177
  br i1 %178, label %179, label %192

179:                                              ; preds = %169
  %180 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @ngx_log_debug0(i32 %180, i32 %183, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %185 = load i64, i64* @NGX_HTTP_CHECK_SEND_DONE, align 8
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  store i64 %185, i64* %187, align 8
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %179, %169
  br label %198

193:                                              ; preds = %165, %92, %78, %50, %26
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %195 = call i32 @ngx_http_upstream_check_status_update(%struct.TYPE_17__* %194, i32 0)
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %197 = call i32 @ngx_http_upstream_check_clean_event(%struct.TYPE_17__* %196)
  br label %198

198:                                              ; preds = %193, %192, %164, %61, %9
  ret void
}

declare dso_local i64 @ngx_http_upstream_check_need_exit(...) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64, ...) #1

declare dso_local i64 @ngx_handle_write_event(i32, i32) #1

declare dso_local %struct.TYPE_18__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @ngx_http_upstream_check_status_update(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_http_upstream_check_clean_event(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
