; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_log_module.c_ngx_http_log_init.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_log_module.c_ngx_http_log_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@ngx_http_log_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_combined_fmt = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i64 0, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_HTTP_LOG_PHASE = common dso_local global i64 0, align 8
@ngx_http_log_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*)* @ngx_http_log_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_log_init(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %11 = load i32, i32* @ngx_http_log_module, align 4
  %12 = call i8* @ngx_http_conf_get_module_main_conf(%struct.TYPE_15__* %10, i32 %11)
  %13 = bitcast i8* %12 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %8, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %1
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ngx_array_init(i32* %5, i32 %21, i32 1, i32 4)
  %23 = load i64, i64* @NGX_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i64, i64* @NGX_ERROR, align 8
  store i64 %26, i64* %2, align 8
  br label %72

27:                                               ; preds = %18
  %28 = call i8* @ngx_array_push(i32* %5)
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %4, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i64, i64* @NGX_ERROR, align 8
  store i64 %33, i64* %2, align 8
  br label %72

34:                                               ; preds = %27
  %35 = load i32, i32* @ngx_http_combined_fmt, align 4
  %36 = load i32*, i32** %4, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %7, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @ngx_http_log_compile_format(%struct.TYPE_15__* %41, i32* null, i32 %44, i32* %5, i32 0)
  %46 = load i64, i64* @NGX_CONF_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i64, i64* @NGX_ERROR, align 8
  store i64 %49, i64* %2, align 8
  br label %72

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %53 = load i32, i32* @ngx_http_core_module, align 4
  %54 = call i8* @ngx_http_conf_get_module_main_conf(%struct.TYPE_15__* %52, i32 %53)
  %55 = bitcast i8* %54 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %9, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = load i64, i64* @NGX_HTTP_LOG_PHASE, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = call i8* @ngx_array_push(i32* %61)
  %63 = bitcast i8* %62 to i32*
  store i32* %63, i32** %6, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %51
  %67 = load i64, i64* @NGX_ERROR, align 8
  store i64 %67, i64* %2, align 8
  br label %72

68:                                               ; preds = %51
  %69 = load i32, i32* @ngx_http_log_handler, align 4
  %70 = load i32*, i32** %6, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i64, i64* @NGX_OK, align 8
  store i64 %71, i64* %2, align 8
  br label %72

72:                                               ; preds = %68, %66, %48, %32, %25
  %73 = load i64, i64* %2, align 8
  ret i64 %73
}

declare dso_local i8* @ngx_http_conf_get_module_main_conf(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @ngx_array_init(i32*, i32, i32, i32) #1

declare dso_local i8* @ngx_array_push(i32*) #1

declare dso_local i64 @ngx_http_log_compile_format(%struct.TYPE_15__*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
