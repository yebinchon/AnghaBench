; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_dyups_mark_upstream_delete.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_dyups_mark_upstream_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_16__** }

@ngx_cycle = common dso_local global %struct.TYPE_20__* null, align 8
@ngx_http_upstream_module = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"[dyups] delete upstream \22%V\22\00", align 1
@ngx_http_dyups_deleted_upstream = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@NGX_DYUPS_DELETING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @ngx_dyups_mark_upstream_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_dyups_mark_upstream_delete(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__**, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* %10, %struct.TYPE_16__** %5, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** @ngx_cycle, align 8
  %12 = load i32, i32* @ngx_http_upstream_module, align 4
  %13 = call %struct.TYPE_18__* @ngx_http_cycle_get_module_main_conf(%struct.TYPE_20__* %11, i32 %12)
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %7, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %16, align 8
  store %struct.TYPE_16__** %17, %struct.TYPE_16__*** %6, align 8
  %18 = load i32, i32* @NGX_LOG_INFO, align 4
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** @ngx_cycle, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = call i32 @ngx_log_error(i32 %18, i32 %21, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %25)
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = call i32 @ngx_dyups_del_upstream_top_filter(%struct.TYPE_18__* %27, %struct.TYPE_16__* %28)
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  store %struct.TYPE_17__* %34, %struct.TYPE_17__** %4, align 8
  store i64 0, i64* %3, align 8
  br label %35

35:                                               ; preds = %48, %1
  %36 = load i64, i64* %3, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %36, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %45 = load i64, i64* %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %3, align 8
  br label %35

51:                                               ; preds = %35
  %52 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %52, i64 %55
  store %struct.TYPE_16__* @ngx_http_dyups_deleted_upstream, %struct.TYPE_16__** %56, align 8
  %57 = load i32, i32* @NGX_DYUPS_DELETING, align 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  ret void
}

declare dso_local %struct.TYPE_18__* @ngx_http_cycle_get_module_main_conf(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @ngx_dyups_del_upstream_top_filter(%struct.TYPE_18__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
