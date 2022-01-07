; ModuleID = '/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_idle_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_idle_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 (%struct.TYPE_24__*)*, i32, i64, i64, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_21__*, i64, %struct.TYPE_18__*, i32, %struct.TYPE_17__*, i64, %struct.TYPE_23__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_23__ = type { i32*, %struct.TYPE_20__*, i32, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"http2 idle handler\00", align 1
@NGX_HTTP_V2_NO_ERROR = common dso_local global i32 0, align 4
@ngx_http_v2_module = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"http2 flood detected\00", align 1
@NGX_HTTP_V2_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ngx_http_v2_write_handler = common dso_local global i32 0, align 4
@NGX_USE_KQUEUE_EVENT = common dso_local global i32 0, align 4
@ngx_event_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*)* @ngx_http_v2_idle_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_v2_idle_handler(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  %6 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 4
  %8 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  store %struct.TYPE_25__* %8, %struct.TYPE_25__** %3, align 8
  %9 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 6
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_23__* %11, %struct.TYPE_23__** %5, align 8
  %12 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %16 = call i32 @ngx_log_debug0(i32 %12, %struct.TYPE_17__* %15, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21, %1
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %28 = load i32, i32* @NGX_HTTP_V2_NO_ERROR, align 4
  %29 = call i32 @ngx_http_v2_finalize_connection(%struct.TYPE_23__* %27, i32 %28)
  br label %94

30:                                               ; preds = %21
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ngx_http_v2_module, align 4
  %37 = call %struct.TYPE_22__* @ngx_http_get_module_srv_conf(i32 %35, i32 %36)
  store %struct.TYPE_22__* %37, %struct.TYPE_22__** %4, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 10, %44
  %46 = icmp sgt i32 %40, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %30
  %48 = load i32, i32* @NGX_LOG_INFO, align 4
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to %struct.TYPE_17__*
  %56 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ngx_log_error(i32 %48, %struct.TYPE_17__* %55, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %58 = load i32, i32* @NGX_HTTP_V2_NO_ERROR, align 4
  %59 = call i32 @ngx_http_v2_finalize_connection(%struct.TYPE_23__* %57, i32 %58)
  br label %94

60:                                               ; preds = %30
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %64 = call i32 @ngx_reusable_connection(%struct.TYPE_25__* %63, i32 0)
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32* @ngx_create_pool(i32 %67, i32 %72)
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  store i32* %73, i32** %75, align 8
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %60
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %82 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %83 = call i32 @ngx_http_v2_finalize_connection(%struct.TYPE_23__* %81, i32 %82)
  br label %94

84:                                               ; preds = %60
  %85 = load i32, i32* @ngx_http_v2_write_handler, align 4
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 4
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 0
  store i32 (%struct.TYPE_24__*)* @ngx_http_v2_read_handler, i32 (%struct.TYPE_24__*)** %91, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %93 = call i32 @ngx_http_v2_read_handler(%struct.TYPE_24__* %92)
  br label %94

94:                                               ; preds = %84, %80, %47, %26
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, %struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @ngx_http_v2_finalize_connection(%struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_22__* @ngx_http_get_module_srv_conf(i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_17__*, i32, i8*, ...) #1

declare dso_local i32 @ngx_reusable_connection(%struct.TYPE_25__*, i32) #1

declare dso_local i32* @ngx_create_pool(i32, i32) #1

declare dso_local i32 @ngx_http_v2_read_handler(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
