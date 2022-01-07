; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_process_downstream.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_process_downstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_19__* }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_20__*, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_17__ = type { i64, i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"http upstream process downstream\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"sending to client\00", align 1
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"client timed out\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"http downstream delayed\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_ABORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @ngx_http_upstream_process_downstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_upstream_process_downstream(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %9, %struct.TYPE_19__** %4, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %6, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %5, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %3, align 8
  %19 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %23 = call i32 @ngx_log_debug0(i32 %19, %struct.TYPE_20__* %22, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %27, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %1
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %38 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %39 = call i32 @ngx_connection_error(%struct.TYPE_19__* %37, i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %75

40:                                               ; preds = %1
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %40
  %46 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %48, align 8
  %50 = call i32 @ngx_log_debug0(i32 %46, %struct.TYPE_20__* %49, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @ngx_handle_write_event(%struct.TYPE_17__* %51, i32 %54)
  %56 = load i64, i64* @NGX_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %45
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = load i32, i32* @NGX_ERROR, align 4
  %62 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_16__* %59, %struct.TYPE_15__* %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %45
  br label %79

64:                                               ; preds = %40
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %66 = call i64 @ngx_event_pipe(%struct.TYPE_18__* %65, i32 1)
  %67 = load i64, i64* @NGX_ABORT, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %72 = load i32, i32* @NGX_ERROR, align 4
  %73 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_16__* %70, %struct.TYPE_15__* %71, i32 %72)
  br label %79

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %32
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %78 = call i32 @ngx_http_upstream_process_request(%struct.TYPE_16__* %76, %struct.TYPE_15__* %77)
  br label %79

79:                                               ; preds = %75, %69, %63
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, %struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @ngx_connection_error(%struct.TYPE_19__*, i32, i8*) #1

declare dso_local i64 @ngx_handle_write_event(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_http_upstream_finalize_request(%struct.TYPE_16__*, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @ngx_event_pipe(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_http_upstream_process_request(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
