; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_clean_event.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_clean_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__*, i32 (%struct.TYPE_19__*)*, i32*, i32, %struct.TYPE_13__, %struct.TYPE_16__, i32, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64, %struct.TYPE_15__*, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"http check clean event: index:%i, fd: %d\00", align 1
@ngx_http_upstream_check_dummy_handler = common dso_local global i32 0, align 4
@ngx_http_upstream_check_discard_handler = common dso_local global i32 0, align 4
@NGX_HTTP_CHECK_ALL_DONE = common dso_local global i32 0, align 4
@NGX_INVALID_PID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @ngx_http_upstream_check_clean_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_upstream_check_clean_event(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %6 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_20__* %9, %struct.TYPE_20__** %3, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 7
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %4, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  store %struct.TYPE_21__* %15, %struct.TYPE_21__** %5, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = icmp ne %struct.TYPE_20__* %16, null
  br i1 %17, label %18, label %65

18:                                               ; preds = %1
  %19 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ngx_log_debug2(i32 %19, i32 %22, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %18
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %34
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %39
  %48 = load i32, i32* @ngx_http_upstream_check_dummy_handler, align 4
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* @ngx_http_upstream_check_discard_handler, align 4
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  br label %64

58:                                               ; preds = %39, %34, %18
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %60 = call i32 @ngx_close_connection(%struct.TYPE_20__* %59)
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %63, align 8
  br label %64

64:                                               ; preds = %58, %47
  br label %65

65:                                               ; preds = %64, %1
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 4
  %74 = call i32 @ngx_del_timer(%struct.TYPE_13__* %73)
  br label %75

75:                                               ; preds = %71, %65
  %76 = load i32, i32* @NGX_HTTP_CHECK_ALL_DONE, align 4
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %75
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 1
  %86 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %85, align 8
  %87 = icmp ne i32 (%struct.TYPE_19__*)* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 1
  %91 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %90, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %93 = call i32 %91(%struct.TYPE_19__* %92)
  br label %94

94:                                               ; preds = %88, %83, %75
  %95 = load i32, i32* @NGX_INVALID_PID, align 4
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 4
  ret void
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_close_connection(%struct.TYPE_20__*) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
