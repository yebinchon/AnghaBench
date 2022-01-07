; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_multi_upstream_module/extr_ngx_http_multi_upstream.c_ngx_http_multi_upstream_process_non_buffered_request.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_multi_upstream_module/extr_ngx_http_multi_upstream.c_ngx_http_multi_upstream_process_non_buffered_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_26__*, i32, %struct.TYPE_23__* }
%struct.TYPE_26__ = type { %struct.TYPE_20__*, %struct.TYPE_24__*, i32, i64 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_22__*, i32, i32*, %struct.TYPE_21__, i64, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"multi: http upstream send body: %p, %p\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"http multi upstream finalize: %p, %p\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@upstream = common dso_local global %struct.TYPE_27__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_multi_upstream_process_non_buffered_request(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  %7 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_23__* %9, %struct.TYPE_23__** %4, align 8
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %12, %struct.TYPE_26__** %6, align 8
  %13 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %21 = call i32 @ngx_log_debug2(i32 %13, i32 %18, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.TYPE_24__* %19, %struct.TYPE_23__* %20)
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %1
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %31, %26, %1
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @ngx_http_output_filter(%struct.TYPE_24__* %37, i64 %40)
  store i64 %41, i64* %3, align 8
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* @NGX_ERROR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %48 = load i64, i64* @NGX_ERROR, align 8
  %49 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_24__* %46, %struct.TYPE_23__* %47, i64 %48)
  br label %153

50:                                               ; preds = %36
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 6
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 5
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ngx_chain_update_chains(i32 %53, i32* %55, i32** %57, i64* %59, i32 %63)
  br label %65

65:                                               ; preds = %50, %31
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %93

70:                                               ; preds = %65
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %84 = call i32 @ngx_log_debug2(i32 %76, i32 %81, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_24__* %82, %struct.TYPE_23__* %83)
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %87 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_24__* %85, %struct.TYPE_23__* %86, i64 0)
  br label %153

88:                                               ; preds = %70
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @ngx_reset_pool(i32 %91)
  br label %93

93:                                               ; preds = %88, %65
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %95 = load i32, i32* @ngx_http_core_module, align 4
  %96 = call %struct.TYPE_25__* @ngx_http_get_module_loc_conf(%struct.TYPE_24__* %94, i32 %95)
  store %struct.TYPE_25__* %96, %struct.TYPE_25__** %5, align 8
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %98, align 8
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %101 = icmp eq %struct.TYPE_24__* %99, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %93
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %104, align 8
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @ngx_handle_write_event(%struct.TYPE_20__* %105, i32 %108)
  %110 = load i64, i64* @NGX_OK, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %102
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %115 = load i64, i64* @NGX_ERROR, align 8
  %116 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_24__* %113, %struct.TYPE_23__* %114, i64 %115)
  br label %153

117:                                              ; preds = %102
  br label %118

118:                                              ; preds = %117, %93
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %118
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %125
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %134, align 8
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ngx_add_timer(%struct.TYPE_20__* %135, i32 %138)
  br label %153

140:                                              ; preds = %125, %118
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %140
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %149, align 8
  %151 = call i32 @ngx_del_timer(%struct.TYPE_20__* %150)
  br label %152

152:                                              ; preds = %147, %140
  br label %153

153:                                              ; preds = %45, %75, %112, %152, %132
  ret void
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, %struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i64 @ngx_http_output_filter(%struct.TYPE_24__*, i64) #1

declare dso_local i32 @ngx_http_upstream_finalize_request(%struct.TYPE_24__*, %struct.TYPE_23__*, i64) #1

declare dso_local i32 @ngx_chain_update_chains(i32, i32*, i32**, i64*, i32) #1

declare dso_local i32 @ngx_reset_pool(i32) #1

declare dso_local %struct.TYPE_25__* @ngx_http_get_module_loc_conf(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @ngx_handle_write_event(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
