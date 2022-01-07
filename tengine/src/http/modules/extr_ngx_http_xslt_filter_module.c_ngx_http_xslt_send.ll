; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_xslt_filter_module.c_ngx_http_xslt_send.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_xslt_filter_module.c_ngx_http_xslt_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, %struct.TYPE_23__, %struct.TYPE_27__*, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__*, i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_29__ = type { i64, i64 }
%struct.TYPE_28__ = type { i32*, %struct.TYPE_29__* }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_25__ = type { i32 }

@ngx_http_xslt_filter_module = common dso_local global i32 0, align 4
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_xslt_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_27__*, %struct.TYPE_26__*, %struct.TYPE_29__*)* @ngx_http_xslt_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_xslt_send(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1, %struct.TYPE_29__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_28__, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %7, align 8
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %15 = icmp eq %struct.TYPE_29__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %18 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %19 = call i64 @ngx_http_filter_finalize_request(%struct.TYPE_27__* %17, i32* @ngx_http_xslt_filter_module, i32 %18)
  store i64 %19, i64* %4, align 8
  br label %118

20:                                               ; preds = %3
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.TYPE_24__* @ngx_pool_cleanup_add(i32 %23, i32 0)
  store %struct.TYPE_24__* %24, %struct.TYPE_24__** %10, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %26 = icmp eq %struct.TYPE_24__* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @ngx_free(i64 %30)
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %33 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %34 = call i64 @ngx_http_filter_finalize_request(%struct.TYPE_27__* %32, i32* @ngx_http_xslt_filter_module, i32 %33)
  store i64 %34, i64* %4, align 8
  br label %118

35:                                               ; preds = %20
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %38, align 8
  %40 = icmp eq %struct.TYPE_27__* %36, %39
  br i1 %40, label %41, label %83

41:                                               ; preds = %35
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 1
  store i64 %48, i64* %51, align 8
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %54, align 8
  %56 = icmp ne %struct.TYPE_22__* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %41
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %65, align 8
  br label %66

66:                                               ; preds = %57, %41
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %68 = load i32, i32* @ngx_http_xslt_filter_module, align 4
  %69 = call %struct.TYPE_25__* @ngx_http_get_module_loc_conf(%struct.TYPE_27__* %67, i32 %68)
  store %struct.TYPE_25__* %69, %struct.TYPE_25__** %11, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %66
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %76 = call i32 @ngx_http_clear_last_modified(%struct.TYPE_27__* %75)
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %78 = call i32 @ngx_http_clear_etag(%struct.TYPE_27__* %77)
  br label %82

79:                                               ; preds = %66
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %81 = call i32 @ngx_http_weak_etag(%struct.TYPE_27__* %80)
  br label %82

82:                                               ; preds = %79, %74
  br label %83

83:                                               ; preds = %82, %35
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %85 = call i64 @ngx_http_next_header_filter(%struct.TYPE_27__* %84)
  store i64 %85, i64* %8, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* @NGX_ERROR, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %98, label %89

89:                                               ; preds = %83
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* @NGX_OK, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %98, label %93

93:                                               ; preds = %89
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93, %89, %83
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @ngx_free(i64 %101)
  %103 = load i64, i64* %8, align 8
  store i64 %103, i64* %4, align 8
  br label %118

104:                                              ; preds = %93
  %105 = load i32, i32* @ngx_http_xslt_cleanup, align 4
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 1
  store %struct.TYPE_29__* %113, %struct.TYPE_29__** %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 0
  store i32* null, i32** %115, align 8
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %117 = call i64 @ngx_http_next_body_filter(%struct.TYPE_27__* %116, %struct.TYPE_28__* %9)
  store i64 %117, i64* %4, align 8
  br label %118

118:                                              ; preds = %104, %98, %27, %16
  %119 = load i64, i64* %4, align 8
  ret i64 %119
}

declare dso_local i64 @ngx_http_filter_finalize_request(%struct.TYPE_27__*, i32*, i32) #1

declare dso_local %struct.TYPE_24__* @ngx_pool_cleanup_add(i32, i32) #1

declare dso_local i32 @ngx_free(i64) #1

declare dso_local %struct.TYPE_25__* @ngx_http_get_module_loc_conf(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @ngx_http_clear_last_modified(%struct.TYPE_27__*) #1

declare dso_local i32 @ngx_http_clear_etag(%struct.TYPE_27__*) #1

declare dso_local i32 @ngx_http_weak_etag(%struct.TYPE_27__*) #1

declare dso_local i64 @ngx_http_next_header_filter(%struct.TYPE_27__*) #1

declare dso_local i64 @ngx_http_next_body_filter(%struct.TYPE_27__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
