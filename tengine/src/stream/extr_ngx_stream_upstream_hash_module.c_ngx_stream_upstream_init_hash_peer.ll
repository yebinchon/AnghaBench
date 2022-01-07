; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_upstream_hash_module.c_ngx_stream_upstream_init_hash_peer.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_upstream_hash_module.c_ngx_stream_upstream_init_hash_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, i64, i64, i64, %struct.TYPE_15__*, i32, i32 }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@ngx_stream_upstream_get_hash_peer = common dso_local global i32 0, align 4
@ngx_stream_upstream_hash_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"upstream hash key:\22%V\22\00", align 1
@ngx_stream_upstream_get_round_robin_peer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, i32*)* @ngx_stream_upstream_init_hash_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_stream_upstream_init_hash_peer(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_16__* @ngx_palloc(i32 %12, i32 48)
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %7, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %15 = icmp eq %struct.TYPE_16__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @NGX_ERROR, align 8
  store i64 %17, i64* %3, align 8
  br label %76

18:                                               ; preds = %2
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 6
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  store i32* %20, i32** %25, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @ngx_stream_upstream_init_round_robin_peer(%struct.TYPE_17__* %26, i32* %27)
  %29 = load i64, i64* @NGX_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i64, i64* @NGX_ERROR, align 8
  store i64 %32, i64* %3, align 8
  br label %76

33:                                               ; preds = %18
  %34 = load i32, i32* @ngx_stream_upstream_get_hash_peer, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  store i32 %34, i32* %39, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @ngx_stream_upstream_hash_module, align 4
  %42 = call %struct.TYPE_15__* @ngx_stream_conf_upstream_srv_conf(i32* %40, i32 %41)
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %6, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 5
  %48 = call i64 @ngx_stream_complex_value(%struct.TYPE_17__* %43, i32* %45, i32* %47)
  %49 = load i64, i64* @NGX_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %33
  %52 = load i64, i64* @NGX_ERROR, align 8
  store i64 %52, i64* %3, align 8
  br label %76

53:                                               ; preds = %33
  %54 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 5
  %62 = call i32 @ngx_log_debug1(i32 %54, i32 %59, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 4
  store %struct.TYPE_15__* %63, %struct.TYPE_15__** %65, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* @ngx_stream_upstream_get_round_robin_peer, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i64, i64* @NGX_OK, align 8
  store i64 %75, i64* %3, align 8
  br label %76

76:                                               ; preds = %53, %51, %31, %16
  %77 = load i64, i64* %3, align 8
  ret i64 %77
}

declare dso_local %struct.TYPE_16__* @ngx_palloc(i32, i32) #1

declare dso_local i64 @ngx_stream_upstream_init_round_robin_peer(%struct.TYPE_17__*, i32*) #1

declare dso_local %struct.TYPE_15__* @ngx_stream_conf_upstream_srv_conf(i32*, i32) #1

declare dso_local i64 @ngx_stream_complex_value(%struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
