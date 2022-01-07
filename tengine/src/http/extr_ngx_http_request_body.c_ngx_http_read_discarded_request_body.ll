; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_request_body.c_ngx_http_read_discarded_request_body.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_request_body.c_ngx_http_read_discarded_request_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__*, %struct.TYPE_11__, i32 }
%struct.TYPE_14__ = type { i64 (%struct.TYPE_14__*, i32*, i64)*, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32*, i32* }

@NGX_HTTP_DISCARD_BUFFER_SIZE = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"http read discarded body\00", align 1
@ngx_http_block_reading = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*)* @ngx_http_read_discarded_request_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_read_discarded_request_body(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %11 = load i32, i32* @NGX_HTTP_DISCARD_BUFFER_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ngx_log_debug0(i32 %15, i32 %20, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @ngx_memzero(%struct.TYPE_13__* %7, i32 24)
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %24

24:                                               ; preds = %95, %1
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load i32, i32* @ngx_http_block_reading, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* @NGX_OK, align 8
  store i64 %34, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %96

35:                                               ; preds = %24
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %35
  %45 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %45, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %96

46:                                               ; preds = %35
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @NGX_HTTP_DISCARD_BUFFER_SIZE, align 4
  %52 = call i64 @ngx_min(i64 %50, i32 %51)
  store i64 %52, i64* %4, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i64 (%struct.TYPE_14__*, i32*, i64)*, i64 (%struct.TYPE_14__*, i32*, i64)** %56, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = load i64, i64* %4, align 8
  %62 = call i64 %57(%struct.TYPE_14__* %60, i32* %14, i64 %61)
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @NGX_ERROR, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %46
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  store i32 1, i32* %70, align 8
  %71 = load i64, i64* @NGX_OK, align 8
  store i64 %71, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %96

72:                                               ; preds = %46
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @NGX_AGAIN, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %77, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %96

78:                                               ; preds = %72
  %79 = load i64, i64* %5, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i64, i64* @NGX_OK, align 8
  store i64 %82, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %96

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  store i32* %14, i32** %84, align 8
  %85 = load i64, i64* %5, align 8
  %86 = getelementptr inbounds i32, i32* %14, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  store i32* %86, i32** %87, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %89 = call i64 @ngx_http_discard_request_body_filter(%struct.TYPE_12__* %88, %struct.TYPE_13__* %7)
  store i64 %89, i64* %6, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* @NGX_OK, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i64, i64* %6, align 8
  store i64 %94, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %96

95:                                               ; preds = %83
  br label %24

96:                                               ; preds = %93, %81, %76, %66, %44, %30
  %97 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i64, i64* %2, align 8
  ret i64 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #2

declare dso_local i32 @ngx_memzero(%struct.TYPE_13__*, i32) #2

declare dso_local i64 @ngx_min(i64, i32) #2

declare dso_local i64 @ngx_http_discard_request_body_filter(%struct.TYPE_12__*, %struct.TYPE_13__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
