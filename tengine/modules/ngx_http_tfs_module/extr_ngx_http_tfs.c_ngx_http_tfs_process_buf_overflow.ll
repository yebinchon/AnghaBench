; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_process_buf_overflow.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_process_buf_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_23__ = type { i64, i64 (%struct.TYPE_23__*)*, %struct.TYPE_22__, i32, %struct.TYPE_24__*, %struct.TYPE_20__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"tfs process buf overflow, %V\00", align 1
@NGX_HTTP_TFS_ACTION_READ_FILE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_STATE_READ_READ_DATA = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"process request body failed\00", align 1
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"ngx handle read event failed\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"action: %V should not come to here process buf overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_23__*)* @ngx_http_tfs_process_buf_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_tfs_process_buf_overflow(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %6 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %7 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ngx_log_debug1(i32 %6, i32 %11, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NGX_HTTP_TFS_ACTION_READ_FILE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %90

26:                                               ; preds = %2
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NGX_HTTP_TFS_STATE_READ_READ_DATA, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %90

32:                                               ; preds = %26
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 1
  %35 = load i64 (%struct.TYPE_23__*)*, i64 (%struct.TYPE_23__*)** %34, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %37 = call i64 %35(%struct.TYPE_23__* %36)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @NGX_AGAIN, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %32
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @NGX_ERROR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i32, i32* @NGX_LOG_ERR, align 4
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %46, i32 %49, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %52, align 8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %55 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %56 = call i32 @ngx_http_tfs_finalize_request(%struct.TYPE_24__* %53, %struct.TYPE_23__* %54, i32 %55)
  br label %61

57:                                               ; preds = %41
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_23__* %58, i64 %59)
  br label %61

61:                                               ; preds = %57, %45
  br label %104

62:                                               ; preds = %32
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 5
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @ngx_handle_read_event(i32 %70, i32 0)
  %72 = load i64, i64* @NGX_OK, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %62
  %75 = load i32, i32* @NGX_LOG_ERR, align 4
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %75, i32 %78, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %81, align 8
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %84 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %85 = call i32 @ngx_http_tfs_finalize_request(%struct.TYPE_24__* %82, %struct.TYPE_23__* %83, i32 %84)
  br label %104

86:                                               ; preds = %62
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %89 = call i32 @ngx_http_tfs_send_response(%struct.TYPE_24__* %87, %struct.TYPE_23__* %88)
  br label %104

90:                                               ; preds = %26, %2
  %91 = load i32, i32* @NGX_LOG_ERR, align 4
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 1
  %99 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %91, i32 %94, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32* %98)
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %102 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %103 = call i32 @ngx_http_tfs_finalize_request(%struct.TYPE_24__* %100, %struct.TYPE_23__* %101, i32 %102)
  br label %104

104:                                              ; preds = %90, %86, %74, %61
  ret void
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @ngx_http_tfs_finalize_request(%struct.TYPE_24__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @ngx_http_tfs_finalize_state(%struct.TYPE_23__*, i64) #1

declare dso_local i64 @ngx_handle_read_event(i32, i32) #1

declare dso_local i32 @ngx_http_tfs_send_response(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
