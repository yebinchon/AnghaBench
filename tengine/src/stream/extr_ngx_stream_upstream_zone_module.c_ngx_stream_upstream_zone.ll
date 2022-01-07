; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_upstream_zone_module.c_ngx_stream_upstream_zone.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_upstream_zone_module.c_ngx_stream_upstream_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32*, i32 }

@ngx_stream_upstream_module = common dso_local global i32 0, align 4
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid zone name \22%V\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid zone size \22%V\22\00", align 1
@ngx_pagesize = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"zone \22%V\22 is too small\00", align 1
@ngx_stream_upstream_init_zone = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_18__*, i32*, i8*)* @ngx_stream_upstream_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_stream_upstream_zone(%struct.TYPE_18__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %13 = load i32, i32* @ngx_stream_upstream_module, align 4
  %14 = call %struct.TYPE_16__* @ngx_stream_conf_get_module_srv_conf(%struct.TYPE_18__* %12, i32 %13)
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %10, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %16 = load i32, i32* @ngx_stream_upstream_module, align 4
  %17 = call i32* @ngx_stream_conf_get_module_main_conf(%struct.TYPE_18__* %15, i32 %16)
  store i32* %17, i32** %11, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %9, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i64 1
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @NGX_LOG_EMERG, align 4
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i64 1
  %33 = call i32 @ngx_conf_log_error(i32 %29, %struct.TYPE_18__* %30, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %32)
  %34 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %34, i8** %4, align 8
  br label %101

35:                                               ; preds = %3
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %70

42:                                               ; preds = %35
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i64 2
  %45 = call i64 @ngx_parse_size(%struct.TYPE_17__* %44)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @NGX_ERROR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load i32, i32* @NGX_LOG_EMERG, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i64 2
  %54 = call i32 @ngx_conf_log_error(i32 %50, %struct.TYPE_18__* %51, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_17__* %53)
  %55 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %55, i8** %4, align 8
  br label %101

56:                                               ; preds = %42
  %57 = load i64, i64* %8, align 8
  %58 = load i32, i32* @ngx_pagesize, align 4
  %59 = mul nsw i32 8, %58
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %57, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load i32, i32* @NGX_LOG_EMERG, align 4
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i64 1
  %67 = call i32 @ngx_conf_log_error(i32 %63, %struct.TYPE_18__* %64, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_17__* %66)
  %68 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %68, i8** %4, align 8
  br label %101

69:                                               ; preds = %56
  br label %71

70:                                               ; preds = %35
  store i64 0, i64* %8, align 8
  br label %71

71:                                               ; preds = %70, %69
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i64 1
  %75 = load i64, i64* %8, align 8
  %76 = call %struct.TYPE_19__* @ngx_shared_memory_add(%struct.TYPE_18__* %72, %struct.TYPE_17__* %74, i64 %75, i32* @ngx_stream_upstream_module)
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  store %struct.TYPE_19__* %76, %struct.TYPE_19__** %78, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  %82 = icmp eq %struct.TYPE_19__* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %84, i8** %4, align 8
  br label %101

85:                                               ; preds = %71
  %86 = load i32, i32* @ngx_stream_upstream_init_zone, align 4
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 2
  store i32 %86, i32* %90, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  store i32* %91, i32** %95, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %100, i8** %4, align 8
  br label %101

101:                                              ; preds = %85, %83, %62, %49, %28
  %102 = load i8*, i8** %4, align 8
  ret i8* %102
}

declare dso_local %struct.TYPE_16__* @ngx_stream_conf_get_module_srv_conf(%struct.TYPE_18__*, i32) #1

declare dso_local i32* @ngx_stream_conf_get_module_main_conf(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_18__*, i32, i8*, %struct.TYPE_17__*) #1

declare dso_local i64 @ngx_parse_size(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_19__* @ngx_shared_memory_add(%struct.TYPE_18__*, %struct.TYPE_17__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
