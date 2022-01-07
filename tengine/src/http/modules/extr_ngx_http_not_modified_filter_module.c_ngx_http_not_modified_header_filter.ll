; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_not_modified_filter_module.c_ngx_http_not_modified_header_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_not_modified_filter_module.c_ngx_http_not_modified_header_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_15__, i64, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__*, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64, i64, i64, i64 }

@NGX_HTTP_OK = common dso_local global i64 0, align 8
@NGX_HTTP_PRECONDITION_FAILED = common dso_local global i32 0, align 4
@NGX_HTTP_NOT_MODIFIED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @ngx_http_not_modified_header_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_not_modified_header_filter(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %4 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NGX_HTTP_OK, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %21, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %15 = icmp ne %struct.TYPE_20__* %11, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16, %10, %1
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %23 = call i32 @ngx_http_next_header_filter(%struct.TYPE_20__* %22)
  store i32 %23, i32* %2, align 4
  br label %135

24:                                               ; preds = %16
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %32 = call i32 @ngx_http_test_if_unmodified(%struct.TYPE_20__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %36 = load i32, i32* @NGX_HTTP_PRECONDITION_FAILED, align 4
  %37 = call i32 @ngx_http_filter_finalize_request(%struct.TYPE_20__* %35, i32* null, i32 %36)
  store i32 %37, i32* %2, align 4
  br label %135

38:                                               ; preds = %30, %24
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @ngx_http_test_if_match(%struct.TYPE_20__* %45, i64 %49, i32 0)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %44
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %54 = load i32, i32* @NGX_HTTP_PRECONDITION_FAILED, align 4
  %55 = call i32 @ngx_http_filter_finalize_request(%struct.TYPE_20__* %53, i32* null, i32 %54)
  store i32 %55, i32* %2, align 4
  br label %135

56:                                               ; preds = %44, %38
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %132

68:                                               ; preds = %62, %56
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %76 = call i64 @ngx_http_test_if_modified(%struct.TYPE_20__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %80 = call i32 @ngx_http_next_header_filter(%struct.TYPE_20__* %79)
  store i32 %80, i32* %2, align 4
  br label %135

81:                                               ; preds = %74, %68
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %81
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @ngx_http_test_if_match(%struct.TYPE_20__* %88, i64 %92, i32 1)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %87
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %97 = call i32 @ngx_http_next_header_filter(%struct.TYPE_20__* %96)
  store i32 %97, i32* %2, align 4
  br label %135

98:                                               ; preds = %87, %81
  %99 = load i64, i64* @NGX_HTTP_NOT_MODIFIED, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  store i64 %99, i64* %102, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %112 = call i32 @ngx_http_clear_content_length(%struct.TYPE_20__* %111)
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %114 = call i32 @ngx_http_clear_accept_ranges(%struct.TYPE_20__* %113)
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = icmp ne %struct.TYPE_18__* %118, null
  br i1 %119, label %120, label %129

120:                                              ; preds = %98
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  store i64 0, i64* %125, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %128, align 8
  br label %129

129:                                              ; preds = %120, %98
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %131 = call i32 @ngx_http_next_header_filter(%struct.TYPE_20__* %130)
  store i32 %131, i32* %2, align 4
  br label %135

132:                                              ; preds = %62
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %134 = call i32 @ngx_http_next_header_filter(%struct.TYPE_20__* %133)
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %132, %129, %95, %78, %52, %34, %21
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @ngx_http_next_header_filter(%struct.TYPE_20__*) #1

declare dso_local i32 @ngx_http_test_if_unmodified(%struct.TYPE_20__*) #1

declare dso_local i32 @ngx_http_filter_finalize_request(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @ngx_http_test_if_match(%struct.TYPE_20__*, i64, i32) #1

declare dso_local i64 @ngx_http_test_if_modified(%struct.TYPE_20__*) #1

declare dso_local i32 @ngx_http_clear_content_length(%struct.TYPE_20__*) #1

declare dso_local i32 @ngx_http_clear_accept_ranges(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
