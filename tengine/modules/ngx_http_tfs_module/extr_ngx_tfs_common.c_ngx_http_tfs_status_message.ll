; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_tfs_common.c_ngx_http_tfs_status_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_tfs_common.c_ngx_http_tfs_status_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64, i64, i32 }

@NGX_HTTP_TFS_STATUS_MESSAGE_OK = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%V failed error code (%d) err_msg(%V)\00", align 1
@NGX_HTTP_TFS_EXIT_GENERAL_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%V success \00", align 1
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_tfs_status_message(%struct.TYPE_9__* %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @NGX_HTTP_TFS_STATUS_MESSAGE_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %3
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  br label %36

36:                                               ; preds = %29, %23
  %37 = load i32, i32* @NGX_LOG_ERR, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 (i32, i32*, i32, i8*, %struct.TYPE_7__*, ...) @ngx_log_error(i32 %37, i32* %38, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %39, i64 %40, %struct.TYPE_7__* %10)
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @NGX_HTTP_TFS_EXIT_GENERAL_ERROR, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i64, i64* %8, align 8
  store i64 %46, i64* %4, align 8
  br label %55

47:                                               ; preds = %36
  %48 = load i64, i64* @NGX_HTTP_TFS_EXIT_GENERAL_ERROR, align 8
  store i64 %48, i64* %4, align 8
  br label %55

49:                                               ; preds = %3
  %50 = load i32, i32* @NGX_LOG_INFO, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = call i32 (i32, i32*, i32, i8*, %struct.TYPE_7__*, ...) @ngx_log_error(i32 %50, i32* %51, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %52)
  %54 = load i64, i64* @NGX_OK, align 8
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %49, %47, %45
  %56 = load i64, i64* %4, align 8
  ret i64 %56
}

declare dso_local i32 @ngx_log_error(i32, i32*, i32, i8*, %struct.TYPE_7__*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
