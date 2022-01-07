; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_footer_filter_module/extr_ngx_http_footer_filter_module.c_ngx_http_footer_header_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_footer_filter_module/extr_ngx_http_footer_filter_module.c_ngx_http_footer_header_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_23__, i32, %struct.TYPE_24__*, i64 }
%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_22__*, %struct.TYPE_21__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_26__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_25__ = type { i32*, i32 }

@ngx_http_footer_filter_module = common dso_local global i32 0, align 4
@NGX_HTTP_HEAD = common dso_local global i32 0, align 4
@NGX_HTTP_NO_CONTENT = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*)* @ngx_http_footer_header_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_footer_header_filter(%struct.TYPE_24__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %6 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %7 = load i32, i32* @ngx_http_footer_filter_module, align 4
  %8 = call %struct.TYPE_25__* @ngx_http_get_module_loc_conf(%struct.TYPE_24__* %6, i32 %7)
  store %struct.TYPE_25__* %8, %struct.TYPE_25__** %5, align 8
  %9 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, inttoptr (i64 -1 to i32*)
  br i1 %12, label %59, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %59, label %18

18:                                               ; preds = %13
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @NGX_HTTP_HEAD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %59, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %30 = icmp ne %struct.TYPE_24__* %26, %29
  br i1 %30, label %59, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NGX_HTTP_NO_CONTENT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %59, label %38

38:                                               ; preds = %31
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %41, align 8
  %43 = icmp ne %struct.TYPE_21__* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %44, %38
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 1
  %57 = call i32* @ngx_http_test_content_type(%struct.TYPE_24__* %54, i32* %56)
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %53, %44, %31, %25, %18, %13, %1
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %61 = call i32 @ngx_http_next_header_filter(%struct.TYPE_24__* %60)
  store i32 %61, i32* %2, align 4
  br label %125

62:                                               ; preds = %53
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.TYPE_26__* @ngx_pcalloc(i32 %65, i32 8)
  store %struct.TYPE_26__* %66, %struct.TYPE_26__** %4, align 8
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %68 = icmp eq %struct.TYPE_26__* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @NGX_ERROR, align 4
  store i32 %70, i32* %2, align 4
  br label %125

71:                                               ; preds = %62
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 0
  %78 = call i64 @ngx_http_complex_value(%struct.TYPE_24__* %72, i32* %75, %struct.TYPE_19__* %77)
  %79 = load i64, i64* @NGX_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load i32, i32* @NGX_ERROR, align 4
  store i32 %82, i32* %2, align 4
  br label %125

83:                                               ; preds = %71
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %86 = load i32, i32* @ngx_http_footer_filter_module, align 4
  %87 = call i32 @ngx_http_set_ctx(%struct.TYPE_24__* %84, %struct.TYPE_26__* %85, i32 %86)
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, -1
  br i1 %92, label %93, label %105

93:                                               ; preds = %83
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %97
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 8
  br label %105

105:                                              ; preds = %93, %83
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %108, align 8
  %110 = icmp ne %struct.TYPE_22__* %109, null
  br i1 %110, label %111, label %120

111:                                              ; preds = %105
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  store i64 0, i64* %116, align 8
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 2
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %119, align 8
  br label %120

120:                                              ; preds = %111, %105
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %122 = call i32 @ngx_http_clear_accept_ranges(%struct.TYPE_24__* %121)
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %124 = call i32 @ngx_http_next_header_filter(%struct.TYPE_24__* %123)
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %120, %81, %69, %59
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.TYPE_25__* @ngx_http_get_module_loc_conf(%struct.TYPE_24__*, i32) #1

declare dso_local i32* @ngx_http_test_content_type(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @ngx_http_next_header_filter(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_26__* @ngx_pcalloc(i32, i32) #1

declare dso_local i64 @ngx_http_complex_value(%struct.TYPE_24__*, i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_24__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @ngx_http_clear_accept_ranges(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
