; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_upstream_hash_module.c_ngx_http_upstream_init_hash_peer.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_upstream_hash_module.c_ngx_http_upstream_init_hash_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__*, %struct.TYPE_13__*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, i64, i64, i64, %struct.TYPE_15__*, i32, i32 }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_upstream_get_hash_peer = common dso_local global i32 0, align 4
@ngx_http_upstream_hash_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"upstream hash key:\22%V\22\00", align 1
@ngx_http_upstream_get_round_robin_peer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, i32*)* @ngx_http_upstream_init_hash_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_upstream_init_hash_peer(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.TYPE_16__* @ngx_palloc(i32 %10, i32 48)
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %7, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %13 = icmp eq %struct.TYPE_16__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @NGX_ERROR, align 8
  store i64 %15, i64* %3, align 8
  br label %74

16:                                               ; preds = %2
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 6
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  store i32* %18, i32** %23, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @ngx_http_upstream_init_round_robin_peer(%struct.TYPE_17__* %24, i32* %25)
  %27 = load i64, i64* @NGX_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = load i64, i64* @NGX_ERROR, align 8
  store i64 %30, i64* %3, align 8
  br label %74

31:                                               ; preds = %16
  %32 = load i32, i32* @ngx_http_upstream_get_hash_peer, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  store i32 %32, i32* %37, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @ngx_http_upstream_hash_module, align 4
  %40 = call %struct.TYPE_15__* @ngx_http_conf_upstream_srv_conf(i32* %38, i32 %39)
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %6, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 5
  %46 = call i64 @ngx_http_complex_value(%struct.TYPE_17__* %41, i32* %43, i32* %45)
  %47 = load i64, i64* @NGX_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %31
  %50 = load i64, i64* @NGX_ERROR, align 8
  store i64 %50, i64* %3, align 8
  br label %74

51:                                               ; preds = %31
  %52 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 5
  %60 = call i32 @ngx_log_debug1(i32 %52, i32 %57, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %59)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 4
  store %struct.TYPE_15__* %61, %struct.TYPE_15__** %63, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* @ngx_http_upstream_get_round_robin_peer, align 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i64, i64* @NGX_OK, align 8
  store i64 %73, i64* %3, align 8
  br label %74

74:                                               ; preds = %51, %49, %29, %14
  %75 = load i64, i64* %3, align 8
  ret i64 %75
}

declare dso_local %struct.TYPE_16__* @ngx_palloc(i32, i32) #1

declare dso_local i64 @ngx_http_upstream_init_round_robin_peer(%struct.TYPE_17__*, i32*) #1

declare dso_local %struct.TYPE_15__* @ngx_http_conf_upstream_srv_conf(i32*, i32) #1

declare dso_local i64 @ngx_http_complex_value(%struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
