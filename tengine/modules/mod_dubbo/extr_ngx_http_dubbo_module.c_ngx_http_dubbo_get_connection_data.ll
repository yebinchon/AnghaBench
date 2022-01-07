; ModuleID = '/home/carl/AnghaBench/tengine/modules/mod_dubbo/extr_ngx_http_dubbo_module.c_ngx_http_dubbo_get_connection_data.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/mod_dubbo/extr_ngx_http_dubbo_module.c_ngx_http_dubbo_get_connection_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32*, %struct.TYPE_11__* }

@ngx_http_dubbo_cleanup = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_dubbo_ping_handler = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"dubbo: pc %p create dubbo connection %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_13__*, %struct.TYPE_12__*)* @ngx_http_dubbo_get_connection_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_dubbo_get_connection_data(i32* %0, %struct.TYPE_13__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %8, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %9, align 8
  br label %18

18:                                               ; preds = %34, %3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %20 = icmp ne %struct.TYPE_11__* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ngx_http_dubbo_cleanup, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  br label %38

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %9, align 8
  br label %18

38:                                               ; preds = %27, %18
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %81

43:                                               ; preds = %38
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = call %struct.TYPE_11__* @ngx_pool_cleanup_add(%struct.TYPE_15__* %46, i32 4)
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %9, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %49 = icmp eq %struct.TYPE_11__* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i64, i64* @NGX_ERROR, align 8
  store i64 %51, i64* %4, align 8
  br label %83

52:                                               ; preds = %43
  %53 = load i64, i64* @ngx_http_dubbo_cleanup, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  %61 = load i64, i64* @NGX_OK, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %66 = load i32, i32* @ngx_http_dubbo_ping_handler, align 4
  %67 = call i64 @ngx_dubbo_init_connection(i32* %64, %struct.TYPE_14__* %65, i32 %66)
  %68 = icmp ne i64 %61, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %52
  %70 = load i64, i64* @NGX_ERROR, align 8
  store i64 %70, i64* %4, align 8
  br label %83

71:                                               ; preds = %52
  %72 = load i32, i32* @NGX_LOG_INFO, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @ngx_log_error(i32 %72, i32 %75, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %76, i32* %79)
  br label %81

81:                                               ; preds = %71, %38
  %82 = load i64, i64* @NGX_OK, align 8
  store i64 %82, i64* %4, align 8
  br label %83

83:                                               ; preds = %81, %69, %50
  %84 = load i64, i64* %4, align 8
  ret i64 %84
}

declare dso_local %struct.TYPE_11__* @ngx_pool_cleanup_add(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @ngx_dubbo_init_connection(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
