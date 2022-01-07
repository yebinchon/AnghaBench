; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_sub_filter_module.c_ngx_http_sub_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_sub_filter_module.c_ngx_http_sub_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_19__, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i32* }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_24__* }

@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"empty search pattern\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"number of search patterns exceeds 255\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_24__*, i32*, i8*)* @ngx_http_sub_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_sub_filter(%struct.TYPE_24__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_23__, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %13, %struct.TYPE_22__** %8, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %9, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i64 1
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, i32* @NGX_LOG_EMERG, align 4
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %27 = call i32 @ngx_conf_log_error(i32 %25, %struct.TYPE_24__* %26, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %28 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %28, i8** %4, align 8
  br label %140

29:                                               ; preds = %3
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = icmp eq %struct.TYPE_16__* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.TYPE_16__* @ngx_array_create(i32 %37, i32 1, i32 48)
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 1
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %40, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = icmp eq %struct.TYPE_16__* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %46, i8** %4, align 8
  br label %140

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %29
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 255
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load i32, i32* @NGX_LOG_EMERG, align 4
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %58 = call i32 @ngx_conf_log_error(i32 %56, %struct.TYPE_24__* %57, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %59, i8** %4, align 8
  br label %140

60:                                               ; preds = %48
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i64 1
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i64 1
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @ngx_strlow(i32 %64, i32 %68, i64 %72)
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = call %struct.TYPE_21__* @ngx_array_push(%struct.TYPE_16__* %76)
  store %struct.TYPE_21__* %77, %struct.TYPE_21__** %10, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %79 = icmp eq %struct.TYPE_21__* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %60
  %81 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %81, i8** %4, align 8
  br label %140

82:                                               ; preds = %60
  %83 = call i32 @ngx_memzero(%struct.TYPE_23__* %11, i32 24)
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 2
  store %struct.TYPE_24__* %84, %struct.TYPE_24__** %85, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i64 1
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 1
  store %struct.TYPE_20__* %87, %struct.TYPE_20__** %88, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  store %struct.TYPE_19__* %90, %struct.TYPE_19__** %91, align 8
  %92 = call i64 @ngx_http_compile_complex_value(%struct.TYPE_23__* %11)
  %93 = load i64, i64* @NGX_OK, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %82
  %96 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %96, i8** %4, align 8
  br label %140

97:                                               ; preds = %82
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  br label %123

106:                                              ; preds = %97
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @ngx_strlow(i32 %111, i32 %116, i64 %121)
  br label %123

123:                                              ; preds = %106, %103
  %124 = call i32 @ngx_memzero(%struct.TYPE_23__* %11, i32 24)
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 2
  store %struct.TYPE_24__* %125, %struct.TYPE_24__** %126, align 8
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i64 2
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 1
  store %struct.TYPE_20__* %128, %struct.TYPE_20__** %129, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  store %struct.TYPE_19__* %131, %struct.TYPE_19__** %132, align 8
  %133 = call i64 @ngx_http_compile_complex_value(%struct.TYPE_23__* %11)
  %134 = load i64, i64* @NGX_OK, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %123
  %137 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %137, i8** %4, align 8
  br label %140

138:                                              ; preds = %123
  %139 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %139, i8** %4, align 8
  br label %140

140:                                              ; preds = %138, %136, %95, %80, %55, %45, %24
  %141 = load i8*, i8** %4, align 8
  ret i8* %141
}

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_24__*, i32, i8*) #1

declare dso_local %struct.TYPE_16__* @ngx_array_create(i32, i32, i32) #1

declare dso_local i32 @ngx_strlow(i32, i32, i64) #1

declare dso_local %struct.TYPE_21__* @ngx_array_push(%struct.TYPE_16__*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @ngx_http_compile_complex_value(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
