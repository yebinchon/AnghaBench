; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_parse_remove_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_parse_remove_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__*, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@NGX_HTTP_TFS_STATUS_MESSAGE_OK = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"remove_file failed, error code (%d) err_msg(%V)\00", align 1
@NGX_HTTP_TFS_EXIT_GENERAL_ERROR = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"remove_file success, file_size: %uL \00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"remove file(ds) response msg type is invalid %d \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @ngx_http_tfs_parse_remove_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_tfs_parse_remove_message(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %10, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %96 [
    i32 128, label %20
  ]

20:                                               ; preds = %1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @NGX_HTTP_TFS_STATUS_MESSAGE_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %20
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %5, align 4
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %41, %35
  %49 = load i32, i32* @NGX_LOG_ERR, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i32, i32, i32, i8*, i32, ...) @ngx_log_error(i32 %49, i32 %52, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %53, %struct.TYPE_12__* %8)
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @NGX_HTTP_TFS_EXIT_GENERAL_ERROR, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %105

60:                                               ; preds = %48
  %61 = load i32, i32* @NGX_HTTP_TFS_EXIT_GENERAL_ERROR, align 4
  store i32 %61, i32* %2, align 4
  br label %105

62:                                               ; preds = %20
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %88

68:                                               ; preds = %62
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %5, align 4
  %73 = sub nsw i32 %72, 1
  %74 = bitcast i32* %7 to i64*
  %75 = call i32 @ngx_http_tfs_atoull(i32 %71, i32 %73, i64* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @NGX_ERROR, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* @NGX_ERROR, align 4
  store i32 %80, i32* %2, align 4
  br label %105

81:                                               ; preds = %68
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %82
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %81, %62
  %89 = load i32, i32* @NGX_LOG_INFO, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 (i32, i32, i32, i8*, i32, ...) @ngx_log_error(i32 %89, i32 %92, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @NGX_OK, align 4
  store i32 %95, i32* %2, align 4
  br label %105

96:                                               ; preds = %1
  %97 = load i32, i32* @NGX_LOG_INFO, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 (i32, i32, i32, i8*, i32, ...) @ngx_log_error(i32 %97, i32 %100, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %96
  %104 = load i32, i32* @NGX_ERROR, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %103, %88, %79, %60, %58
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @ngx_http_tfs_atoull(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
