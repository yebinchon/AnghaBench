; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_addition_filter_module.c_ngx_http_addition_header_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_addition_filter_module.c_ngx_http_addition_header_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_18__*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64 }

@NGX_HTTP_OK = common dso_local global i64 0, align 8
@ngx_http_addition_filter_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @ngx_http_addition_header_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_addition_header_filter(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %6 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NGX_HTTP_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %17 = icmp ne %struct.TYPE_18__* %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12, %1
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = call i32 @ngx_http_next_header_filter(%struct.TYPE_18__* %19)
  store i32 %20, i32* %2, align 4
  br label %72

21:                                               ; preds = %12
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %23 = load i32, i32* @ngx_http_addition_filter_module, align 4
  %24 = call %struct.TYPE_19__* @ngx_http_get_module_loc_conf(%struct.TYPE_18__* %22, i32 %23)
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %5, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %38 = call i32 @ngx_http_next_header_filter(%struct.TYPE_18__* %37)
  store i32 %38, i32* %2, align 4
  br label %72

39:                                               ; preds = %30, %21
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = call i32* @ngx_http_test_content_type(%struct.TYPE_18__* %40, i32* %42)
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %47 = call i32 @ngx_http_next_header_filter(%struct.TYPE_18__* %46)
  store i32 %47, i32* %2, align 4
  br label %72

48:                                               ; preds = %39
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32* @ngx_pcalloc(i32 %51, i32 4)
  store i32* %52, i32** %4, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @NGX_ERROR, align 4
  store i32 %56, i32* %2, align 4
  br label %72

57:                                               ; preds = %48
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* @ngx_http_addition_filter_module, align 4
  %61 = call i32 @ngx_http_set_ctx(%struct.TYPE_18__* %58, i32* %59, i32 %60)
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %63 = call i32 @ngx_http_clear_content_length(%struct.TYPE_18__* %62)
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %65 = call i32 @ngx_http_clear_accept_ranges(%struct.TYPE_18__* %64)
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %67 = call i32 @ngx_http_weak_etag(%struct.TYPE_18__* %66)
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %71 = call i32 @ngx_http_next_header_filter(%struct.TYPE_18__* %70)
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %57, %55, %45, %36, %18
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @ngx_http_next_header_filter(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_19__* @ngx_http_get_module_loc_conf(%struct.TYPE_18__*, i32) #1

declare dso_local i32* @ngx_http_test_content_type(%struct.TYPE_18__*, i32*) #1

declare dso_local i32* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @ngx_http_clear_content_length(%struct.TYPE_18__*) #1

declare dso_local i32 @ngx_http_clear_accept_ranges(%struct.TYPE_18__*) #1

declare dso_local i32 @ngx_http_weak_etag(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
