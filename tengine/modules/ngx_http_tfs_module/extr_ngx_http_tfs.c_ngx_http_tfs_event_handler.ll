; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_event_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_15__*, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_22__* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)*, %struct.TYPE_17__, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }

@NGX_HTTP_TFS_ACTION_KEEPALIVE = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"http tfs request: \22%V?%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @ngx_http_tfs_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_tfs_event_handler(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %9, %struct.TYPE_22__** %4, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %3, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %5, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %4, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NGX_HTTP_TFS_ACTION_KEEPALIVE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  store %struct.TYPE_20__* %31, %struct.TYPE_20__** %6, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %34, align 8
  br label %35

35:                                               ; preds = %26, %1
  %36 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = call i32 @ngx_log_debug2(i32 %36, %struct.TYPE_15__* %39, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %41, i32* %43)
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %35
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  %52 = load i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)** %51, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %55 = call i32 %52(%struct.TYPE_19__* %53, %struct.TYPE_18__* %54)
  br label %63

56:                                               ; preds = %35
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)** %58, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %62 = call i32 %59(%struct.TYPE_19__* %60, %struct.TYPE_18__* %61)
  br label %63

63:                                               ; preds = %56, %49
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %65 = call i32 @ngx_http_run_posted_requests(%struct.TYPE_22__* %64)
  ret void
}

declare dso_local i32 @ngx_log_debug2(i32, %struct.TYPE_15__*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @ngx_http_run_posted_requests(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
