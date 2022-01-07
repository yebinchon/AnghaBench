; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_gunzip_filter_module.c_ngx_http_gunzip_header_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_gunzip_filter_module.c_ngx_http_gunzip_header_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_20__, i32, i64, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_23__ = type { i32 }

@ngx_http_gunzip_filter_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*)* @ngx_http_gunzip_header_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_gunzip_header_filter(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %6 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %7 = load i32, i32* @ngx_http_gunzip_filter_module, align 4
  %8 = call %struct.TYPE_23__* @ngx_http_get_module_loc_conf(%struct.TYPE_21__* %6, i32 %7)
  store %struct.TYPE_23__* %8, %struct.TYPE_23__** %5, align 8
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %18 = icmp eq %struct.TYPE_19__* %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 4
  br i1 %27, label %38, label %28

28:                                               ; preds = %19
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ngx_strncasecmp(i32 %35, i32* bitcast ([5 x i8]* @.str to i32*), i32 4)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %28, %19, %13, %1
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %40 = call i32 @ngx_http_next_header_filter(%struct.TYPE_21__* %39)
  store i32 %40, i32* %2, align 4
  br label %101

41:                                               ; preds = %28
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %41
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %50 = call i64 @ngx_http_gzip_ok(%struct.TYPE_21__* %49)
  %51 = load i64, i64* @NGX_OK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %55 = call i32 @ngx_http_next_header_filter(%struct.TYPE_21__* %54)
  store i32 %55, i32* %2, align 4
  br label %101

56:                                               ; preds = %48
  br label %66

57:                                               ; preds = %41
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %64 = call i32 @ngx_http_next_header_filter(%struct.TYPE_21__* %63)
  store i32 %64, i32* %2, align 4
  br label %101

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %56
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call %struct.TYPE_22__* @ngx_pcalloc(i32 %69, i32 8)
  store %struct.TYPE_22__* %70, %struct.TYPE_22__** %4, align 8
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %72 = icmp eq %struct.TYPE_22__* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @NGX_ERROR, align 4
  store i32 %74, i32* %2, align 4
  br label %101

75:                                               ; preds = %66
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %78 = load i32, i32* @ngx_http_gunzip_filter_module, align 4
  %79 = call i32 @ngx_http_set_ctx(%struct.TYPE_21__* %76, %struct.TYPE_22__* %77, i32 %78)
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  store %struct.TYPE_21__* %80, %struct.TYPE_21__** %82, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %92, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %94 = call i32 @ngx_http_clear_content_length(%struct.TYPE_21__* %93)
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %96 = call i32 @ngx_http_clear_accept_ranges(%struct.TYPE_21__* %95)
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %98 = call i32 @ngx_http_weak_etag(%struct.TYPE_21__* %97)
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %100 = call i32 @ngx_http_next_header_filter(%struct.TYPE_21__* %99)
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %75, %73, %62, %53, %38
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.TYPE_23__* @ngx_http_get_module_loc_conf(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @ngx_strncasecmp(i32, i32*, i32) #1

declare dso_local i32 @ngx_http_next_header_filter(%struct.TYPE_21__*) #1

declare dso_local i64 @ngx_http_gzip_ok(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_21__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @ngx_http_clear_content_length(%struct.TYPE_21__*) #1

declare dso_local i32 @ngx_http_clear_accept_ranges(%struct.TYPE_21__*) #1

declare dso_local i32 @ngx_http_weak_etag(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
