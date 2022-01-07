; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_slice_filter_module.c_ngx_http_slice_body_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_slice_filter_module.c_ngx_http_slice_body_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_22__*, i32, i32, i64, i32, %struct.TYPE_25__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_21__*, %struct.TYPE_26__* }
%struct.TYPE_21__ = type { i32, i32, i64 }
%struct.TYPE_24__ = type { i32, i64, i64, %struct.TYPE_27__, i64, %struct.TYPE_25__* }
%struct.TYPE_27__ = type { i64, i64 }
%struct.TYPE_23__ = type { i64 }

@ngx_http_slice_filter_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"missing slice response\00", align 1
@NGX_HTTP_LAST = common dso_local global i32 0, align 4
@NGX_HTTP_SUBREQUEST_CLONE = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"bytes=%O-%O\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"http slice subrequest: \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_25__*, %struct.TYPE_26__*)* @ngx_http_slice_body_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_slice_body_filter(%struct.TYPE_25__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %11 = load i32, i32* @ngx_http_slice_filter_module, align 4
  %12 = call %struct.TYPE_24__* @ngx_http_get_module_ctx(%struct.TYPE_25__* %10, i32 %11)
  store %struct.TYPE_24__* %12, %struct.TYPE_24__** %8, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %14 = icmp eq %struct.TYPE_24__* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %20 = icmp ne %struct.TYPE_25__* %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15, %2
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %24 = call i64 @ngx_http_next_body_filter(%struct.TYPE_25__* %22, %struct.TYPE_26__* %23)
  store i64 %24, i64* %3, align 8
  br label %182

25:                                               ; preds = %15
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_26__* %26, %struct.TYPE_26__** %7, align 8
  br label %27

27:                                               ; preds = %53, %25
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %29 = icmp ne %struct.TYPE_26__* %28, null
  br i1 %29, label %30, label %57

30:                                               ; preds = %27
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %37, %30
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %55, align 8
  store %struct.TYPE_26__* %56, %struct.TYPE_26__** %7, align 8
  br label %27

57:                                               ; preds = %27
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %60 = call i64 @ngx_http_next_body_filter(%struct.TYPE_25__* %58, %struct.TYPE_26__* %59)
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @NGX_ERROR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %57
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %64, %57
  %70 = load i64, i64* %6, align 8
  store i64 %70, i64* %3, align 8
  br label %182

71:                                               ; preds = %64
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 5
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %73, align 8
  %75 = icmp ne %struct.TYPE_25__* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 5
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %76
  %84 = load i64, i64* %6, align 8
  store i64 %84, i64* %3, align 8
  br label %182

85:                                               ; preds = %76, %71
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* @NGX_LOG_ERR, align 4
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ngx_log_error(i32 %91, i32 %96, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %98 = load i64, i64* @NGX_ERROR, align 8
  store i64 %98, i64* %3, align 8
  br label %182

99:                                               ; preds = %85
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp sge i64 %102, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %99
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %109 = load i32, i32* @ngx_http_slice_filter_module, align 4
  %110 = call i32 @ngx_http_set_ctx(%struct.TYPE_25__* %108, %struct.TYPE_24__* null, i32 %109)
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %112 = load i32, i32* @NGX_HTTP_LAST, align 4
  %113 = call i32 @ngx_http_send_special(%struct.TYPE_25__* %111, i32 %112)
  %114 = load i64, i64* %6, align 8
  store i64 %114, i64* %3, align 8
  br label %182

115:                                              ; preds = %99
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i64, i64* %6, align 8
  store i64 %121, i64* %3, align 8
  br label %182

122:                                              ; preds = %115
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 5
  %130 = load i32, i32* @NGX_HTTP_SUBREQUEST_CLONE, align 4
  %131 = call i64 @ngx_http_subrequest(%struct.TYPE_25__* %123, i32* %125, i32* %127, %struct.TYPE_25__** %129, i32* null, i32 %130)
  %132 = load i64, i64* @NGX_OK, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %122
  %135 = load i64, i64* @NGX_ERROR, align 8
  store i64 %135, i64* %3, align 8
  br label %182

136:                                              ; preds = %122
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 5
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %138, align 8
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %141 = load i32, i32* @ngx_http_slice_filter_module, align 4
  %142 = call i32 @ngx_http_set_ctx(%struct.TYPE_25__* %139, %struct.TYPE_24__* %140, i32 %141)
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %144 = load i32, i32* @ngx_http_slice_filter_module, align 4
  %145 = call %struct.TYPE_23__* @ngx_http_get_module_loc_conf(%struct.TYPE_25__* %143, i32 %144)
  store %struct.TYPE_23__* %145, %struct.TYPE_23__** %9, align 8
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %155, %158
  %160 = sub nsw i64 %159, 1
  %161 = call i64 @ngx_sprintf(i64 %149, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %152, i64 %160)
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = sub nsw i64 %161, %165
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 1
  store i64 %166, i64* %169, align 8
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 4
  store i64 0, i64* %171, align 8
  %172 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 3
  %180 = call i32 @ngx_log_debug1(i32 %172, i32 %177, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_27__* %179)
  %181 = load i64, i64* %6, align 8
  store i64 %181, i64* %3, align 8
  br label %182

182:                                              ; preds = %136, %134, %120, %107, %90, %83, %69, %21
  %183 = load i64, i64* %3, align 8
  ret i64 %183
}

declare dso_local %struct.TYPE_24__* @ngx_http_get_module_ctx(%struct.TYPE_25__*, i32) #1

declare dso_local i64 @ngx_http_next_body_filter(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @ngx_http_send_special(%struct.TYPE_25__*, i32) #1

declare dso_local i64 @ngx_http_subrequest(%struct.TYPE_25__*, i32*, i32*, %struct.TYPE_25__**, i32*, i32) #1

declare dso_local %struct.TYPE_23__* @ngx_http_get_module_loc_conf(%struct.TYPE_25__*, i32) #1

declare dso_local i64 @ngx_sprintf(i64, i8*, i64, i64) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
