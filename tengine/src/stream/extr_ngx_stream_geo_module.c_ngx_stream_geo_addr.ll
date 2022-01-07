; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_geo_module.c_ngx_stream_geo_addr.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_geo_module.c_ngx_stream_geo_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }

@NGX_LOG_DEBUG_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"stream geo started: %V\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"stream geo not found\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"stream geo started: %v\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_17__*)* @ngx_stream_geo_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_stream_geo_addr(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %40

13:                                               ; preds = %3
  %14 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 4
  %24 = call i32 @ngx_log_debug1(i32 %14, i32 %19, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i64, i64* @NGX_OK, align 8
  store i64 %39, i64* %4, align 8
  br label %90

40:                                               ; preds = %3
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.TYPE_14__* @ngx_stream_get_flushed_variable(%struct.TYPE_15__* %41, i32 %44)
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %8, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %47 = icmp eq %struct.TYPE_14__* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48, %40
  %54 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ngx_log_debug0(i32 %54, i32 %59, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i64, i64* @NGX_ERROR, align 8
  store i64 %61, i64* %4, align 8
  br label %90

62:                                               ; preds = %48
  %63 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %70 = call i32 @ngx_log_debug1(i32 %63, i32 %68, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_14__* %69)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @ngx_parse_addr(i32 %75, %struct.TYPE_17__* %76, i32 %79, i32 %82)
  %84 = load i64, i64* @NGX_OK, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %62
  %87 = load i64, i64* @NGX_OK, align 8
  store i64 %87, i64* %4, align 8
  br label %90

88:                                               ; preds = %62
  %89 = load i64, i64* @NGX_ERROR, align 8
  store i64 %89, i64* %4, align 8
  br label %90

90:                                               ; preds = %88, %86, %53, %13
  %91 = load i64, i64* %4, align 8
  ret i64 %91
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @ngx_stream_get_flushed_variable(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_parse_addr(i32, %struct.TYPE_17__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
