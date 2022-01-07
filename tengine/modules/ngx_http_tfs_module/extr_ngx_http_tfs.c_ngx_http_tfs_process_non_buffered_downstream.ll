; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_process_non_buffered_downstream.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_process_non_buffered_downstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_23__*, %struct.TYPE_21__* }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__, i32, i32, i32, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }

@ngx_http_tfs_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"http tfs upstream process downstream\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"sending to client\00", align 1
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"client timed out\00", align 1
@NGX_HTTP_TFS_ACTION_WRITE_FILE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_NO = common dso_local global i64 0, align 8
@ngx_http_request_empty_handler = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_YES = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_HTTP_REQUEST_TIME_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @ngx_http_tfs_process_non_buffered_downstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_tfs_process_non_buffered_downstream(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %6 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_22__* %8, %struct.TYPE_22__** %5, align 8
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** %3, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %13 = load i32, i32* @ngx_http_tfs_module, align 4
  %14 = call %struct.TYPE_19__* @ngx_http_get_module_ctx(%struct.TYPE_20__* %12, i32 %13)
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %4, align 8
  %15 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %19 = call i32 @ngx_log_debug0(i32 %15, %struct.TYPE_23__* %18, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %23, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %82

28:                                               ; preds = %1
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %32 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %33 = call i32 @ngx_connection_error(%struct.TYPE_22__* %31, i32 %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %75

39:                                               ; preds = %28
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NGX_HTTP_TFS_ACTION_WRITE_FILE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %39
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NGX_HTTP_TFS_NO, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %47
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ngx_http_request_empty_handler, align 4
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO, align 4
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @NGX_HTTP_TFS_YES, align 4
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %73 = load i32, i32* @NGX_OK, align 4
  %74 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_19__* %72, i32 %73)
  br label %85

75:                                               ; preds = %54, %47, %39, %28
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %80 = load i32, i32* @NGX_HTTP_REQUEST_TIME_OUT, align 4
  %81 = call i32 @ngx_http_tfs_finalize_request(i32 %78, %struct.TYPE_19__* %79, i32 %80)
  br label %85

82:                                               ; preds = %1
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %84 = call i32 @ngx_http_tfs_process_non_buffered_request(%struct.TYPE_19__* %83, i32 1)
  br label %85

85:                                               ; preds = %82, %75, %59
  ret void
}

declare dso_local %struct.TYPE_19__* @ngx_http_get_module_ctx(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, %struct.TYPE_23__*, i32, i8*) #1

declare dso_local i32 @ngx_connection_error(%struct.TYPE_22__*, i32, i8*) #1

declare dso_local i32 @ngx_http_tfs_finalize_state(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_http_tfs_finalize_request(i32, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_http_tfs_process_non_buffered_request(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
