; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_dyups_do_update.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_dyups_do_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }

@ngx_cycle = common dso_local global %struct.TYPE_16__* null, align 8
@ngx_http_upstream_module = common dso_local global i32 0, align 4
@ngx_http_dyups_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"[dyups] upstream reuse, idx: [%i]\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"[dyups] upstream delete first\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"[dyups] find another, idx: [%i]\00", align 1
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"[dyups] create upstream %V\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"init upstream failed\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"add server failed\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@NGX_HTTP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @ngx_dyups_do_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_dyups_do_update(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** @ngx_cycle, align 8
  %15 = load i32, i32* @ngx_http_upstream_module, align 4
  %16 = call i8* @ngx_http_cycle_get_module_main_conf(%struct.TYPE_16__* %14, i32 %15)
  %17 = bitcast i8* %16 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %13, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** @ngx_cycle, align 8
  %19 = load i32, i32* @ngx_http_dyups_module, align 4
  %20 = call i8* @ngx_http_cycle_get_module_main_conf(%struct.TYPE_16__* %18, i32 %19)
  %21 = bitcast i8* %20 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %11, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call %struct.TYPE_14__* @ngx_dyups_find_upstream(i32* %22, i32* %9)
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %10, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %25 = icmp ne %struct.TYPE_14__* %24, null
  br i1 %25, label %26, label %54

26:                                               ; preds = %3
  %27 = load i32, i32* @NGX_LOG_DEBUG, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** @ngx_cycle, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %27, i32 %30, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %26
  %38 = load i32, i32* @NGX_LOG_DEBUG, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** @ngx_cycle, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %38, i32 %41, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %44 = call i32 @ngx_dyups_mark_upstream_delete(%struct.TYPE_14__* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = call %struct.TYPE_14__* @ngx_dyups_find_upstream(i32* %45, i32* %9)
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %10, align 8
  %47 = load i32, i32* @NGX_LOG_DEBUG, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** @ngx_cycle, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %47, i32 %50, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %37, %26
  br label %54

54:                                               ; preds = %53, %3
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %93

57:                                               ; preds = %54
  %58 = load i32, i32* @NGX_LOG_INFO, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** @ngx_cycle, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %58, i32 %61, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32* %62)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = call i8* @ngx_array_push(%struct.TYPE_12__* %65)
  %67 = bitcast i8* %66 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %67, %struct.TYPE_14__** %10, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %69 = icmp eq %struct.TYPE_14__* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %57
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @ngx_str_set(i32* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  store i32 %73, i32* %4, align 4
  br label %123

74:                                               ; preds = %57
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = call i8* @ngx_array_push(%struct.TYPE_12__* %76)
  %78 = bitcast i8* %77 to i32**
  store i32** %78, i32*** %12, align 8
  %79 = load i32**, i32*** %12, align 8
  %80 = icmp eq i32** %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @ngx_str_set(i32* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  store i32 %84, i32* %4, align 4
  br label %123

85:                                               ; preds = %74
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %87 = call i32 @ngx_memzero(%struct.TYPE_14__* %86, i32 8)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %85, %54
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @ngx_dyups_init_upstream(%struct.TYPE_14__* %97, i32* %98, i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @NGX_OK, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %93
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @ngx_str_set(i32* %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %107 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  store i32 %107, i32* %4, align 4
  br label %123

108:                                              ; preds = %93
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @ngx_dyups_add_server(%struct.TYPE_14__* %109, i32* %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @NGX_OK, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @ngx_str_set(i32* %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %118 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  store i32 %118, i32* %4, align 4
  br label %123

119:                                              ; preds = %108
  %120 = load i32*, i32** %7, align 8
  %121 = call i32 @ngx_str_set(i32* %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %122 = load i32, i32* @NGX_HTTP_OK, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %119, %115, %104, %81, %70
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i8* @ngx_http_cycle_get_module_main_conf(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_14__* @ngx_dyups_find_upstream(i32*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @ngx_dyups_mark_upstream_delete(%struct.TYPE_14__*) #1

declare dso_local i8* @ngx_array_push(%struct.TYPE_12__*) #1

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ngx_dyups_init_upstream(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @ngx_dyups_add_server(%struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
