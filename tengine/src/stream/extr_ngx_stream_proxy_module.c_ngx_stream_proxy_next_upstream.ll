; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_proxy_module.c_ngx_stream_proxy_next_upstream.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_proxy_module.c_ngx_stream_proxy_next_upstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_16__*, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_23__, %struct.TYPE_18__*, i32, i32* }
%struct.TYPE_23__ = type { i64, i64, %struct.TYPE_22__*, i32*, i32, i32 (%struct.TYPE_23__*, i32, i32)* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_17__*, i32, i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64, i32 }

@NGX_LOG_DEBUG_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"stream proxy next upstream\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"buffered data on next upstream\00", align 1
@NGX_STREAM_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@NGX_PEER_FAILED = common dso_local global i32 0, align 4
@ngx_stream_proxy_module = common dso_local global i32 0, align 4
@ngx_current_msec = common dso_local global i64 0, align 8
@NGX_STREAM_BAD_GATEWAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"close proxy upstream connection: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @ngx_stream_proxy_next_upstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_stream_proxy_next_upstream(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %7 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @ngx_log_debug0(i32 %7, i32 %12, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %5, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %4, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %22 = icmp ne %struct.TYPE_22__* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %1
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load i32, i32* @NGX_LOG_ERR, align 4
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ngx_log_error(i32 %29, i32 %34, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %37 = load i32, i32* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 4
  %38 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_20__* %36, i32 %37)
  br label %141

39:                                               ; preds = %23, %1
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SOCK_DGRAM, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 3
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %47, %39
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %72

56:                                               ; preds = %50
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 5
  %60 = load i32 (%struct.TYPE_23__*, i32, i32)*, i32 (%struct.TYPE_23__*, i32, i32)** %59, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @NGX_PEER_FAILED, align 4
  %68 = call i32 %60(%struct.TYPE_23__* %62, i32 %66, i32 %67)
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 3
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %56, %50
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %74 = load i32, i32* @ngx_stream_proxy_module, align 4
  %75 = call %struct.TYPE_21__* @ngx_stream_get_module_srv_conf(%struct.TYPE_20__* %73, i32 %74)
  store %struct.TYPE_21__* %75, %struct.TYPE_21__** %6, align 8
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %3, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %101, label %84

84:                                               ; preds = %72
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %84
  %90 = load i64, i64* %3, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  %93 = load i64, i64* @ngx_current_msec, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %93, %97
  %99 = load i64, i64* %3, align 8
  %100 = icmp sge i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %92, %84, %72
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %103 = load i32, i32* @NGX_STREAM_BAD_GATEWAY, align 4
  %104 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_20__* %102, i32 %103)
  br label %141

105:                                              ; preds = %92, %89
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %107 = icmp ne %struct.TYPE_22__* %106, null
  br i1 %107, label %108, label %138

108:                                              ; preds = %105
  %109 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @ngx_log_debug1(i32 %109, i32 %114, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 1
  store i32 %121, i32* %125, align 4
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  store i32 %128, i32* %132, align 4
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %134 = call i32 @ngx_close_connection(%struct.TYPE_22__* %133)
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 2
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %137, align 8
  br label %138

138:                                              ; preds = %108, %105
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %140 = call i32 @ngx_stream_proxy_connect(%struct.TYPE_20__* %139)
  br label %141

141:                                              ; preds = %138, %101, %28
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_stream_proxy_finalize(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_21__* @ngx_stream_get_module_srv_conf(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_close_connection(%struct.TYPE_22__*) #1

declare dso_local i32 @ngx_stream_proxy_connect(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
