; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_chunked_filter_module.c_ngx_http_chunked_header_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_chunked_filter_module.c_ngx_http_chunked_header_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i32, i64, %struct.TYPE_10__, i32, i64, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64 }

@NGX_HTTP_NOT_MODIFIED = common dso_local global i64 0, align 8
@NGX_HTTP_NO_CONTENT = common dso_local global i64 0, align 8
@NGX_HTTP_OK = common dso_local global i64 0, align 8
@NGX_HTTP_HEAD = common dso_local global i64 0, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_HTTP_VERSION_11 = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@ngx_http_chunked_filter_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @ngx_http_chunked_header_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_chunked_header_filter(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NGX_HTTP_NOT_MODIFIED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %38, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NGX_HTTP_NO_CONTENT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %38, label %19

19:                                               ; preds = %12
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NGX_HTTP_OK, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %19
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 7
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = icmp ne %struct.TYPE_11__* %27, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NGX_HTTP_HEAD, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32, %26, %19, %12, %1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = call i32 @ngx_http_next_header_filter(%struct.TYPE_11__* %39)
  store i32 %40, i32* %2, align 4
  br label %104

41:                                               ; preds = %32
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %101

52:                                               ; preds = %47, %41
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = load i32, i32* @ngx_http_core_module, align 4
  %55 = call %struct.TYPE_12__* @ngx_http_get_module_loc_conf(%struct.TYPE_11__* %53, i32 %54)
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %4, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NGX_HTTP_VERSION_11, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %61, label %90

61:                                               ; preds = %52
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %61
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = call i32 @ngx_http_clear_content_length(%struct.TYPE_11__* %72)
  br label %74

74:                                               ; preds = %71, %66
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  store i32 1, i32* %76, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = call i32* @ngx_pcalloc(i32 %79, i32 4)
  store i32* %80, i32** %5, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = load i32, i32* @NGX_ERROR, align 4
  store i32 %84, i32* %2, align 4
  br label %104

85:                                               ; preds = %74
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* @ngx_http_chunked_filter_module, align 4
  %89 = call i32 @ngx_http_set_ctx(%struct.TYPE_11__* %86, i32* %87, i32 %88)
  br label %100

90:                                               ; preds = %61, %52
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 3
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %96, %90
  br label %100

100:                                              ; preds = %99, %85
  br label %101

101:                                              ; preds = %100, %47
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %103 = call i32 @ngx_http_next_header_filter(%struct.TYPE_11__* %102)
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %101, %83, %38
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @ngx_http_next_header_filter(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__* @ngx_http_get_module_loc_conf(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ngx_http_clear_content_length(%struct.TYPE_11__*) #1

declare dso_local i32* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_11__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
