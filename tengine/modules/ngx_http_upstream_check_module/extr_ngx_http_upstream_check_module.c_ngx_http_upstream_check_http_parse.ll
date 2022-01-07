; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_http_parse.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_http_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__, %struct.TYPE_15__*, %struct.TYPE_21__*, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_13__, %struct.TYPE_22__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_14__* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"http parse status line error with peer: %V \00", align 1
@NGX_CHECK_HTTP_1XX = common dso_local global i32 0, align 4
@NGX_CHECK_HTTP_2XX = common dso_local global i32 0, align 4
@NGX_CHECK_HTTP_3XX = common dso_local global i32 0, align 4
@NGX_CHECK_HTTP_4XX = common dso_local global i32 0, align 4
@NGX_CHECK_HTTP_5XX = common dso_local global i32 0, align 4
@NGX_CHECK_HTTP_ERR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"http_parse: code_n: %ui, conf: %ui\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*)* @ngx_http_upstream_check_http_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_upstream_check_http_parse(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %8, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %7, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %18, %22
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %139

25:                                               ; preds = %1
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = call i64 @ngx_http_upstream_check_parse_status_line(%struct.TYPE_21__* %26, %struct.TYPE_22__* %28, %struct.TYPE_13__* %30)
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @NGX_AGAIN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i64, i64* %4, align 8
  store i64 %36, i64* %2, align 8
  br label %141

37:                                               ; preds = %25
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @NGX_ERROR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i32, i32* @NGX_LOG_ERR, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_cycle, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = call i32 @ngx_log_error(i32 %42, i32 %45, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32* %49)
  %51 = load i64, i64* %4, align 8
  store i64 %51, i64* %2, align 8
  br label %141

52:                                               ; preds = %37
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 200
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @NGX_CHECK_HTTP_1XX, align 4
  store i32 %63, i32* %6, align 4
  br label %117

64:                                               ; preds = %59, %52
  %65 = load i32, i32* %5, align 4
  %66 = icmp sge i32 %65, 200
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 300
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* @NGX_CHECK_HTTP_2XX, align 4
  store i32 %71, i32* %6, align 4
  br label %116

72:                                               ; preds = %67, %64
  %73 = load i32, i32* %5, align 4
  %74 = icmp sge i32 %73, 300
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %76, 400
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* @NGX_CHECK_HTTP_3XX, align 4
  store i32 %79, i32* %6, align 4
  br label %115

80:                                               ; preds = %75, %72
  %81 = load i32, i32* %5, align 4
  %82 = icmp sge i32 %81, 400
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %84, 500
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 4
  %92 = load i32, i32* @NGX_CHECK_HTTP_4XX, align 4
  store i32 %92, i32* %6, align 4
  br label %114

93:                                               ; preds = %83, %80
  %94 = load i32, i32* %5, align 4
  %95 = icmp sge i32 %94, 500
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load i32, i32* %5, align 4
  %98 = icmp slt i32 %97, 600
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 4
  %105 = load i32, i32* @NGX_CHECK_HTTP_5XX, align 4
  store i32 %105, i32* %6, align 4
  br label %113

106:                                              ; preds = %96, %93
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  store i32 1, i32* %111, align 4
  %112 = load i32, i32* @NGX_CHECK_HTTP_ERR, align 4
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %106, %99
  br label %114

114:                                              ; preds = %113, %86
  br label %115

115:                                              ; preds = %114, %78
  br label %116

116:                                              ; preds = %115, %70
  br label %117

117:                                              ; preds = %116, %62
  %118 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_cycle, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ngx_log_debug2(i32 %118, i32 %121, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %122, i32 %126)
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %128, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %117
  %136 = load i64, i64* @NGX_OK, align 8
  store i64 %136, i64* %2, align 8
  br label %141

137:                                              ; preds = %117
  %138 = load i64, i64* @NGX_ERROR, align 8
  store i64 %138, i64* %2, align 8
  br label %141

139:                                              ; preds = %1
  %140 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %140, i64* %2, align 8
  br label %141

141:                                              ; preds = %139, %137, %135, %41, %35
  %142 = load i64, i64* %2, align 8
  ret i64 %142
}

declare dso_local i64 @ngx_http_upstream_check_parse_status_line(%struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_13__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
