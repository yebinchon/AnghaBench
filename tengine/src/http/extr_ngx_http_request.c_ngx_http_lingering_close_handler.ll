; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_request.c_ngx_http_lingering_close_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_request.c_ngx_http_lingering_close_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 (%struct.TYPE_15__*, i32*, i32)*, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@NGX_HTTP_LINGERING_BUFFER_SIZE = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"http lingering close handler\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"lingering read: %z\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @ngx_http_lingering_close_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_lingering_close_handler(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %11 = load i32, i32* @NGX_HTTP_LINGERING_BUFFER_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %5, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %6, align 8
  %21 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ngx_log_debug0(i32 %21, i32 %24, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = call i32 @ngx_http_close_request(%struct.TYPE_12__* %31, i32 0)
  store i32 1, i32* %10, align 4
  br label %108

33:                                               ; preds = %1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i64 (...) @ngx_time()
  %39 = trunc i64 %38 to i32
  %40 = sub nsw i32 %37, %39
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp sle i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = call i32 @ngx_http_close_request(%struct.TYPE_12__* %45, i32 0)
  store i32 1, i32* %10, align 4
  br label %108

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %76, %47
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i64 (%struct.TYPE_15__*, i32*, i32)*, i64 (%struct.TYPE_15__*, i32*, i32)** %50, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = load i32, i32* @NGX_HTTP_LINGERING_BUFFER_SIZE, align 4
  %54 = call i64 %51(%struct.TYPE_15__* %52, i32* %14, i32 %53)
  store i64 %54, i64* %3, align 8
  %55 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @ngx_log_debug1(i32 %55, i32 %58, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* @NGX_AGAIN, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %48
  br label %81

65:                                               ; preds = %48
  %66 = load i64, i64* %3, align 8
  %67 = load i64, i64* @NGX_ERROR, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %3, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69, %65
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = call i32 @ngx_http_close_request(%struct.TYPE_12__* %73, i32 0)
  store i32 1, i32* %10, align 4
  br label %108

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %48, label %81

81:                                               ; preds = %76, %64
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %83 = call i64 @ngx_handle_read_event(%struct.TYPE_14__* %82, i32 0)
  %84 = load i64, i64* @NGX_OK, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %88 = call i32 @ngx_http_close_request(%struct.TYPE_12__* %87, i32 0)
  store i32 1, i32* %10, align 4
  br label %108

89:                                               ; preds = %81
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %91 = load i32, i32* @ngx_http_core_module, align 4
  %92 = call %struct.TYPE_13__* @ngx_http_get_module_loc_conf(%struct.TYPE_12__* %90, i32 %91)
  store %struct.TYPE_13__* %92, %struct.TYPE_13__** %7, align 8
  %93 = load i32, i32* %4, align 4
  %94 = mul nsw i32 %93, 1000
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %95, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %89
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %100, %89
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @ngx_add_timer(%struct.TYPE_14__* %105, i32 %106)
  store i32 0, i32* %10, align 4
  br label %108

108:                                              ; preds = %104, %86, %72, %44, %30
  %109 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %10, align 4
  switch i32 %110, label %112 [
    i32 0, label %111
    i32 1, label %111
  ]

111:                                              ; preds = %108, %108
  ret void

112:                                              ; preds = %108
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #2

declare dso_local i32 @ngx_http_close_request(%struct.TYPE_12__*, i32) #2

declare dso_local i64 @ngx_time(...) #2

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #2

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_14__*, i32) #2

declare dso_local %struct.TYPE_13__* @ngx_http_get_module_loc_conf(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @ngx_add_timer(%struct.TYPE_14__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
