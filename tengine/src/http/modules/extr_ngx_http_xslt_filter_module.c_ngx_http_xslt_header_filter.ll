; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_xslt_filter_module.c_ngx_http_xslt_header_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_xslt_filter_module.c_ngx_http_xslt_header_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_15__, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"xslt filter header\00", align 1
@NGX_HTTP_NOT_MODIFIED = common dso_local global i64 0, align 8
@ngx_http_xslt_filter_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @ngx_http_xslt_header_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_xslt_header_filter(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %6 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ngx_log_debug0(i32 %6, i32 %11, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NGX_HTTP_NOT_MODIFIED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %21 = call i32 @ngx_http_next_header_filter(%struct.TYPE_17__* %20)
  store i32 %21, i32* %2, align 4
  br label %66

22:                                               ; preds = %1
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = load i32, i32* @ngx_http_xslt_filter_module, align 4
  %25 = call %struct.TYPE_16__* @ngx_http_get_module_loc_conf(%struct.TYPE_17__* %23, i32 %24)
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %5, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %22
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = call i32* @ngx_http_test_content_type(%struct.TYPE_17__* %32, i32* %34)
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31, %22
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %39 = call i32 @ngx_http_next_header_filter(%struct.TYPE_17__* %38)
  store i32 %39, i32* %2, align 4
  br label %66

40:                                               ; preds = %31
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %42 = load i32, i32* @ngx_http_xslt_filter_module, align 4
  %43 = call i32* @ngx_http_get_module_ctx(%struct.TYPE_17__* %41, i32 %42)
  store i32* %43, i32** %4, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %48 = call i32 @ngx_http_next_header_filter(%struct.TYPE_17__* %47)
  store i32 %48, i32* %2, align 4
  br label %66

49:                                               ; preds = %40
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32* @ngx_pcalloc(i32 %52, i32 4)
  store i32* %53, i32** %4, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @NGX_ERROR, align 4
  store i32 %57, i32* %2, align 4
  br label %66

58:                                               ; preds = %49
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* @ngx_http_xslt_filter_module, align 4
  %62 = call i32 @ngx_http_set_ctx(%struct.TYPE_17__* %59, i32* %60, i32 %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load i32, i32* @NGX_OK, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %58, %56, %46, %37, %19
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_next_header_filter(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_16__* @ngx_http_get_module_loc_conf(%struct.TYPE_17__*, i32) #1

declare dso_local i32* @ngx_http_test_content_type(%struct.TYPE_17__*, i32*) #1

declare dso_local i32* @ngx_http_get_module_ctx(%struct.TYPE_17__*, i32) #1

declare dso_local i32* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_17__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
