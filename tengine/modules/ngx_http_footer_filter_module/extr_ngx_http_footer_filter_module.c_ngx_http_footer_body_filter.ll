; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_footer_filter_module/extr_ngx_http_footer_filter_module.c_ngx_http_footer_body_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_footer_filter_module/extr_ngx_http_footer_filter_module.c_ngx_http_footer_body_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_21__*, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i32, i32, i64, i64, i64, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"http footer body filter\00", align 1
@ngx_http_footer_filter_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_20__*)* @ngx_http_footer_body_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_footer_body_filter(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %11 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ngx_log_debug0(i32 %11, i32 %16, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = load i32, i32* @ngx_http_footer_filter_module, align 4
  %20 = call %struct.TYPE_19__* @ngx_http_get_module_ctx(%struct.TYPE_18__* %18, i32 %19)
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %10, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %22 = icmp eq %struct.TYPE_19__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %26 = call i32 @ngx_http_next_body_filter(%struct.TYPE_18__* %24, %struct.TYPE_20__* %25)
  store i32 %26, i32* %3, align 4
  br label %127

27:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %28, %struct.TYPE_20__** %8, align 8
  br label %29

29:                                               ; preds = %41, %27
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %31 = icmp ne %struct.TYPE_20__* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 1, i32* %7, align 4
  br label %45

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %43, align 8
  store %struct.TYPE_20__* %44, %struct.TYPE_20__** %8, align 8
  br label %29

45:                                               ; preds = %39, %29
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %51 = call i32 @ngx_http_next_body_filter(%struct.TYPE_18__* %49, %struct.TYPE_20__* %50)
  store i32 %51, i32* %3, align 4
  br label %127

52:                                               ; preds = %45
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.TYPE_21__* @ngx_calloc_buf(i32 %55)
  store %struct.TYPE_21__* %56, %struct.TYPE_21__** %6, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %58 = icmp eq %struct.TYPE_21__* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @NGX_ERROR, align 4
  store i32 %60, i32* %3, align 4
  br label %127

61:                                               ; preds = %52
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 4
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %70, %74
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 5
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 3
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %93, align 8
  %95 = call i64 @ngx_buf_size(%struct.TYPE_21__* %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %61
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  store %struct.TYPE_21__* %98, %struct.TYPE_21__** %100, align 8
  br label %123

101:                                              ; preds = %61
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call %struct.TYPE_20__* @ngx_alloc_chain_link(i32 %104)
  store %struct.TYPE_20__* %105, %struct.TYPE_20__** %9, align 8
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %107 = icmp eq %struct.TYPE_20__* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* @NGX_ERROR, align 4
  store i32 %109, i32* %3, align 4
  br label %127

110:                                              ; preds = %101
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  store %struct.TYPE_21__* %111, %struct.TYPE_21__** %113, align 8
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 1
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %115, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 1
  store %struct.TYPE_20__* %116, %struct.TYPE_20__** %118, align 8
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  store i32 0, i32* %122, align 8
  br label %123

123:                                              ; preds = %110, %97
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %126 = call i32 @ngx_http_next_body_filter(%struct.TYPE_18__* %124, %struct.TYPE_20__* %125)
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %123, %108, %59, %48, %23
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_19__* @ngx_http_get_module_ctx(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_http_next_body_filter(%struct.TYPE_18__*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_21__* @ngx_calloc_buf(i32) #1

declare dso_local i64 @ngx_buf_size(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_20__* @ngx_alloc_chain_link(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
