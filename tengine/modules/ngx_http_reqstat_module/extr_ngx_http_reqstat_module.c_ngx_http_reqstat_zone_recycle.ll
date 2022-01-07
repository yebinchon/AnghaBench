; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_reqstat_module/extr_ngx_http_reqstat_module.c_ngx_http_reqstat_zone_recycle.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_reqstat_module/extr_ngx_http_reqstat_module.c_ngx_http_reqstat_zone_recycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@ngx_http_reqstat_module = common dso_local global i32 0, align 4
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"zone \22%V\22 should be defined first\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid threshold\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"invalid scale\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_15__*, i32*, i8*)* @ngx_http_reqstat_zone_recycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_reqstat_zone_recycle(%struct.TYPE_15__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %10, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i64 1
  %21 = call %struct.TYPE_13__* @ngx_shared_memory_add(%struct.TYPE_15__* %18, %struct.TYPE_12__* %20, i32 0, i32* @ngx_http_reqstat_module)
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %11, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %23 = icmp eq %struct.TYPE_13__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %25, i8** %4, align 8
  br label %85

26:                                               ; preds = %3
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = icmp eq %struct.TYPE_14__* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i32, i32* @NGX_LOG_EMERG, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i64 1
  %36 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, ...) @ngx_conf_log_error(i32 %32, %struct.TYPE_15__* %33, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %35)
  %37 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %37, i8** %4, align 8
  br label %85

38:                                               ; preds = %26
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %12, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i64 2
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i64 2
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ngx_atoi(i32 %45, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @NGX_ERROR, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %38
  %55 = load i32, i32* @NGX_LOG_EMERG, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, ...) @ngx_conf_log_error(i32 %55, %struct.TYPE_15__* %56, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %58, i8** %4, align 8
  br label %85

59:                                               ; preds = %38
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i64 3
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i64 3
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ngx_atoi(i32 %63, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @NGX_ERROR, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %59
  %73 = load i32, i32* @NGX_LOG_EMERG, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, ...) @ngx_conf_log_error(i32 %73, %struct.TYPE_15__* %74, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %76, i8** %4, align 8
  br label %85

77:                                               ; preds = %59
  %78 = load i32, i32* %8, align 4
  %79 = mul nsw i32 %78, 1000
  %80 = load i32, i32* %9, align 4
  %81 = sdiv i32 %79, %80
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %84, i8** %4, align 8
  br label %85

85:                                               ; preds = %77, %72, %54, %31, %24
  %86 = load i8*, i8** %4, align 8
  ret i8* %86
}

declare dso_local %struct.TYPE_13__* @ngx_shared_memory_add(%struct.TYPE_15__*, %struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i32 @ngx_atoi(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
