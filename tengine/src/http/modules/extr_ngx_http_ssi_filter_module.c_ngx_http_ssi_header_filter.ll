; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_ssi_filter_module.c_ngx_http_ssi_header_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_ssi_filter_module.c_ngx_http_ssi_header_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_23__*, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32, i32, %struct.TYPE_20__, i32, i32, i32, i32*, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }

@ngx_http_ssi_filter_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_SSI_ENTITY_ENCODING = common dso_local global i32 0, align 4
@NGX_HTTP_SSI_PARAMS_N = common dso_local global i32 0, align 4
@ngx_http_ssi_timefmt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"[an error occurred while processing the directive]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*)* @ngx_http_ssi_header_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_ssi_header_filter(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %6 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %7 = load i32, i32* @ngx_http_ssi_filter_module, align 4
  %8 = call %struct.TYPE_21__* @ngx_http_get_module_loc_conf(%struct.TYPE_23__* %6, i32 %7)
  store %struct.TYPE_21__* %8, %struct.TYPE_21__** %5, align 8
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 2
  %23 = call i32* @ngx_http_test_content_type(%struct.TYPE_23__* %20, i32* %22)
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %13, %1
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %27 = call i32 @ngx_http_next_header_filter(%struct.TYPE_23__* %26)
  store i32 %27, i32* %2, align 4
  br label %111

28:                                               ; preds = %19
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.TYPE_22__* @ngx_pcalloc(i32 %31, i32 56)
  store %struct.TYPE_22__* %32, %struct.TYPE_22__** %4, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %34 = icmp eq %struct.TYPE_22__* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @NGX_ERROR, align 4
  store i32 %36, i32* %2, align 4
  br label %111

37:                                               ; preds = %28
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %40 = load i32, i32* @ngx_http_ssi_filter_module, align 4
  %41 = call i32 @ngx_http_set_ctx(%struct.TYPE_23__* %38, %struct.TYPE_22__* %39, i32 %40)
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 6
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 7
  store i32* %48, i32** %50, align 8
  %51 = load i32, i32* @NGX_HTTP_SSI_ENTITY_ENCODING, align 4
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 4
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  store i32 4, i32* %64, align 4
  %65 = load i32, i32* @NGX_HTTP_SSI_PARAMS_N, align 4
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 4
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @ngx_http_ssi_timefmt, align 4
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 1
  %80 = call i32 @ngx_str_set(i32* %79, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %85, align 8
  %87 = icmp eq %struct.TYPE_23__* %83, %86
  br i1 %87, label %88, label %108

88:                                               ; preds = %37
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %90 = call i32 @ngx_http_clear_content_length(%struct.TYPE_23__* %89)
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %92 = call i32 @ngx_http_clear_accept_ranges(%struct.TYPE_23__* %91)
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %88
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %101 = call i32 @ngx_http_clear_last_modified(%struct.TYPE_23__* %100)
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %103 = call i32 @ngx_http_clear_etag(%struct.TYPE_23__* %102)
  br label %107

104:                                              ; preds = %88
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %106 = call i32 @ngx_http_weak_etag(%struct.TYPE_23__* %105)
  br label %107

107:                                              ; preds = %104, %99
  br label %108

108:                                              ; preds = %107, %37
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %110 = call i32 @ngx_http_next_header_filter(%struct.TYPE_23__* %109)
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %108, %35, %25
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.TYPE_21__* @ngx_http_get_module_loc_conf(%struct.TYPE_23__*, i32) #1

declare dso_local i32* @ngx_http_test_content_type(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @ngx_http_next_header_filter(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_23__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

declare dso_local i32 @ngx_http_clear_content_length(%struct.TYPE_23__*) #1

declare dso_local i32 @ngx_http_clear_accept_ranges(%struct.TYPE_23__*) #1

declare dso_local i32 @ngx_http_clear_last_modified(%struct.TYPE_23__*) #1

declare dso_local i32 @ngx_http_clear_etag(%struct.TYPE_23__*) #1

declare dso_local i32 @ngx_http_weak_etag(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
