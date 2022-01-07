; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_dyups_find_upstream.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_dyups_find_upstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64*, %struct.TYPE_15__*, i32*, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_16__* }

@ngx_cycle = common dso_local global %struct.TYPE_18__* null, align 8
@ngx_http_dyups_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"[dyups] find dynamic upstream\00", align 1
@NGX_DYUPS_DELETING = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"[dyups] find upstream idx: %ui ref: %ui on %V deleting\00", align 1
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"[dyups] free dynamic upstream in find upstream %ui\00", align 1
@NGX_DYUPS_DELETED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_14__*, i32*)* @ngx_dyups_find_upstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @ngx_dyups_find_upstream(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ngx_cycle, align 8
  %13 = load i32, i32* @ngx_http_dyups_module, align 4
  %14 = call %struct.TYPE_17__* @ngx_http_cycle_get_module_main_conf(%struct.TYPE_18__* %12, i32 %13)
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %10, align 8
  %15 = load i32*, i32** %5, align 8
  store i32 -1, i32* %15, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %9, align 8
  %16 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ngx_cycle, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ngx_log_debug0(i32 %16, i32 %19, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %7, align 8
  store i64 0, i64* %6, align 8
  br label %25

25:                                               ; preds = %143, %2
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %26, %30
  br i1 %31, label %32, label %146

32:                                               ; preds = %25
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i64 %34
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %8, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %143

41:                                               ; preds = %32
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NGX_DYUPS_DELETING, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %93

47:                                               ; preds = %41
  %48 = load i32, i32* @NGX_LOG_DEBUG, align 4
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ngx_cycle, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = call i32 (i32, i32, i32, i8*, i64, ...) @ngx_log_error(i32 %48, i32 %51, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %52, i64 %56, %struct.TYPE_13__* %60)
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %47
  %68 = load i32, i32* @NGX_LOG_INFO, align 4
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ngx_cycle, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = call i32 (i32, i32, i32, i8*, i64, ...) @ngx_log_error(i32 %68, i32 %71, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %75)
  %77 = load i64, i64* @NGX_DYUPS_DELETED, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %67
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @ngx_destroy_pool(i32* %87)
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 3
  store i32* null, i32** %90, align 8
  br label %91

91:                                               ; preds = %84, %67
  br label %92

92:                                               ; preds = %91, %47
  br label %93

93:                                               ; preds = %92, %41
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @NGX_DYUPS_DELETING, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %143

100:                                              ; preds = %93
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @NGX_DYUPS_DELETED, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load i64, i64* %6, align 8
  %108 = trunc i64 %107 to i32
  %109 = load i32*, i32** %5, align 8
  store i32 %108, i32* %109, align 4
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %110, %struct.TYPE_16__** %9, align 8
  br label %143

111:                                              ; preds = %100
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  store %struct.TYPE_15__* %114, %struct.TYPE_15__** %11, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %118, %121
  br i1 %122, label %137, label %123

123:                                              ; preds = %111
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i64 @ngx_strncasecmp(i32 %127, i32 %130, i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %123, %111
  br label %143

138:                                              ; preds = %123
  %139 = load i64, i64* %6, align 8
  %140 = trunc i64 %139 to i32
  %141 = load i32*, i32** %5, align 8
  store i32 %140, i32* %141, align 4
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %142, %struct.TYPE_16__** %3, align 8
  br label %148

143:                                              ; preds = %137, %106, %99, %40
  %144 = load i64, i64* %6, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %6, align 8
  br label %25

146:                                              ; preds = %25
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* %147, %struct.TYPE_16__** %3, align 8
  br label %148

148:                                              ; preds = %146, %138
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  ret %struct.TYPE_16__* %149
}

declare dso_local %struct.TYPE_17__* @ngx_http_cycle_get_module_main_conf(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64, ...) #1

declare dso_local i32 @ngx_destroy_pool(i32*) #1

declare dso_local i64 @ngx_strncasecmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
