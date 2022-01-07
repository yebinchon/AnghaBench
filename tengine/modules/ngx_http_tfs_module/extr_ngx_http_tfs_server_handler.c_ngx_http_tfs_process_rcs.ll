; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_server_handler.c_ngx_http_tfs_process_rcs.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_server_handler.c_ngx_http_tfs_process_rcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, %struct.TYPE_19__, %struct.TYPE_21__*, %struct.TYPE_16__*, %struct.TYPE_23__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_23__ = type { i32 }

@NGX_HTTP_TFS_ACTION_KEEPALIVE = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_EXIT_GENERAL_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_ACTION_GET_APPID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_tfs_process_rcs(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_23__* %11, %struct.TYPE_23__** %8, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  store i32* %13, i32** %4, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %6, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %22 = call i64 @ngx_http_tfs_rc_server_parse_message(%struct.TYPE_20__* %21)
  store i64 %22, i64* %5, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @ngx_http_tfs_clear_buf(i32* %23)
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NGX_HTTP_TFS_ACTION_KEEPALIVE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %1
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = call i64 @ngx_queue_sentinel(i32* %39)
  %41 = icmp eq i64 %35, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i64, i64* @NGX_DONE, align 8
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %42, %32
  %45 = load i64, i64* %5, align 8
  store i64 %45, i64* %2, align 8
  br label %85

46:                                               ; preds = %1
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @NGX_ERROR, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @NGX_HTTP_TFS_EXIT_GENERAL_ERROR, align 8
  %53 = icmp sle i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50, %46
  %55 = load i64, i64* %5, align 8
  store i64 %55, i64* %2, align 8
  br label %85

56:                                               ; preds = %50
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %58, align 8
  store %struct.TYPE_21__* %59, %struct.TYPE_21__** %7, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NGX_HTTP_TFS_ACTION_GET_APPID, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %56
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @ngx_http_tfs_set_output_appid(%struct.TYPE_20__* %68, i32 %71)
  store i64 %72, i64* %5, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @NGX_ERROR, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i64, i64* @NGX_ERROR, align 8
  store i64 %77, i64* %2, align 8
  br label %85

78:                                               ; preds = %67
  %79 = load i64, i64* @NGX_DONE, align 8
  store i64 %79, i64* %2, align 8
  br label %85

80:                                               ; preds = %56
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %83 = call i64 @ngx_http_tfs_misc_ctx_init(%struct.TYPE_20__* %81, %struct.TYPE_21__* %82)
  store i64 %83, i64* %5, align 8
  %84 = load i64, i64* %5, align 8
  store i64 %84, i64* %2, align 8
  br label %85

85:                                               ; preds = %80, %78, %76, %54, %44
  %86 = load i64, i64* %2, align 8
  ret i64 %86
}

declare dso_local i64 @ngx_http_tfs_rc_server_parse_message(%struct.TYPE_20__*) #1

declare dso_local i32 @ngx_http_tfs_clear_buf(i32*) #1

declare dso_local i64 @ngx_queue_sentinel(i32*) #1

declare dso_local i64 @ngx_http_tfs_set_output_appid(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @ngx_http_tfs_misc_ctx_init(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
