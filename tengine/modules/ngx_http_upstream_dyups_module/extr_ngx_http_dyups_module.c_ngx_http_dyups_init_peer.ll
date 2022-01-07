; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_http_dyups_init_peer.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_http_dyups_init_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_24__*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { {}*, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_23__** }
%struct.TYPE_20__ = type { i32*, i32 }

@ngx_http_dyups_module = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_17__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"[dyups] dynamic upstream init peer: %i\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_dyups_get_peer = common dso_local global i32 0, align 4
@ngx_http_dyups_free_peer = common dso_local global i32 0, align 4
@ngx_http_dyups_clean_request = common dso_local global i32 0, align 4
@ngx_http_dyups_save_peer_session = common dso_local global i32 0, align 4
@ngx_http_dyups_set_peer_session = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_22__*, %struct.TYPE_21__*)* @ngx_http_dyups_init_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_dyups_init_peer(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %11, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ngx_http_dyups_module, i32 0, i32 0), align 8
  %14 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %12, i64 %13
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  store %struct.TYPE_23__* %15, %struct.TYPE_23__** %9, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i64 (%struct.TYPE_22__*, %struct.TYPE_21__*)**
  %19 = load i64 (%struct.TYPE_22__*, %struct.TYPE_21__*)*, i64 (%struct.TYPE_22__*, %struct.TYPE_21__*)** %18, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %22 = call i64 %19(%struct.TYPE_22__* %20, %struct.TYPE_21__* %21)
  store i64 %22, i64* %6, align 8
  %23 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ngx_cycle, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @ngx_log_debug1(i32 %23, i32 %26, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @NGX_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i64, i64* %6, align 8
  store i64 %33, i64* %3, align 8
  br label %110

34:                                               ; preds = %2
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.TYPE_24__* @ngx_pcalloc(i32 %37, i32 24)
  store %struct.TYPE_24__* %38, %struct.TYPE_24__** %8, align 8
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %40 = icmp eq %struct.TYPE_24__* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i64, i64* @NGX_ERROR, align 8
  store i64 %42, i64* %3, align 8
  br label %110

43:                                               ; preds = %34
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 3
  store %struct.TYPE_23__* %44, %struct.TYPE_23__** %46, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %51, align 8
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 2
  store %struct.TYPE_24__* %52, %struct.TYPE_24__** %54, align 8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 4
  store %struct.TYPE_24__* %71, %struct.TYPE_24__** %76, align 8
  %77 = load i32, i32* @ngx_http_dyups_get_peer, align 4
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 3
  store i32 %77, i32* %82, align 4
  %83 = load i32, i32* @ngx_http_dyups_free_peer, align 4
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 2
  store i32 %83, i32* %88, align 8
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call %struct.TYPE_20__* @ngx_pool_cleanup_add(i32 %91, i32 0)
  store %struct.TYPE_20__* %92, %struct.TYPE_20__** %7, align 8
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %94 = icmp eq %struct.TYPE_20__* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %43
  %96 = load i64, i64* @NGX_ERROR, align 8
  store i64 %96, i64* %3, align 8
  br label %110

97:                                               ; preds = %43
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  %102 = load i32, i32* @ngx_http_dyups_clean_request, align 4
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  store i32* %106, i32** %108, align 8
  %109 = load i64, i64* @NGX_OK, align 8
  store i64 %109, i64* %3, align 8
  br label %110

110:                                              ; preds = %97, %95, %41, %32
  %111 = load i64, i64* %3, align 8
  ret i64 %111
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local %struct.TYPE_24__* @ngx_pcalloc(i32, i32) #1

declare dso_local %struct.TYPE_20__* @ngx_pool_cleanup_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
