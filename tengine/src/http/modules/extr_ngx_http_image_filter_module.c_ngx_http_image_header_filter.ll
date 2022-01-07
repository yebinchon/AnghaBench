; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_image_filter_module.c_ngx_http_image_header_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_image_filter_module.c_ngx_http_image_header_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i64, %struct.TYPE_20__, %struct.TYPE_18__*, i32 }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_19__*, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i64, i64 }

@NGX_HTTP_NOT_MODIFIED = common dso_local global i64 0, align 8
@ngx_http_image_filter_module = common dso_local global i32 0, align 4
@NGX_HTTP_IMAGE_OFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"multipart/x-mixed-replace\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"image filter: multipart/x-mixed-replace response\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"image filter: too big response: %O\00", align 1
@NGX_HTTP_UNSUPPORTED_MEDIA_TYPE = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*)* @ngx_http_image_header_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_image_header_filter(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NGX_HTTP_NOT_MODIFIED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %15 = call i32 @ngx_http_next_header_filter(%struct.TYPE_21__* %14)
  store i32 %15, i32* %2, align 4
  br label %134

16:                                               ; preds = %1
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %18 = load i32, i32* @ngx_http_image_filter_module, align 4
  %19 = call %struct.TYPE_22__* @ngx_http_get_module_ctx(%struct.TYPE_21__* %17, i32 %18)
  store %struct.TYPE_22__* %19, %struct.TYPE_22__** %5, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %21 = icmp ne %struct.TYPE_22__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %24 = load i32, i32* @ngx_http_image_filter_module, align 4
  %25 = call i32 @ngx_http_set_ctx(%struct.TYPE_21__* %23, %struct.TYPE_22__* null, i32 %24)
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %27 = call i32 @ngx_http_next_header_filter(%struct.TYPE_21__* %26)
  store i32 %27, i32* %2, align 4
  br label %134

28:                                               ; preds = %16
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %30 = load i32, i32* @ngx_http_image_filter_module, align 4
  %31 = call %struct.TYPE_23__* @ngx_http_get_module_loc_conf(%struct.TYPE_21__* %29, i32 %30)
  store %struct.TYPE_23__* %31, %struct.TYPE_23__** %6, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NGX_HTTP_IMAGE_OFF, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %39 = call i32 @ngx_http_next_header_filter(%struct.TYPE_21__* %38)
  store i32 %39, i32* %2, align 4
  br label %134

40:                                               ; preds = %28
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = icmp uge i64 %46, 25
  br i1 %47, label %48, label %65

48:                                               ; preds = %40
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ngx_strncasecmp(i32 %53, i32* bitcast ([26 x i8]* @.str to i32*), i32 25)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %48
  %57 = load i32, i32* @NGX_LOG_ERR, align 4
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %57, i32 %62, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @NGX_ERROR, align 4
  store i32 %64, i32* %2, align 4
  br label %134

65:                                               ; preds = %48, %40
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.TYPE_22__* @ngx_pcalloc(i32 %68, i32 8)
  store %struct.TYPE_22__* %69, %struct.TYPE_22__** %5, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %71 = icmp eq %struct.TYPE_22__* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @NGX_ERROR, align 4
  store i32 %73, i32* %2, align 4
  br label %134

74:                                               ; preds = %65
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %77 = load i32, i32* @ngx_http_image_filter_module, align 4
  %78 = call i32 @ngx_http_set_ctx(%struct.TYPE_21__* %75, %struct.TYPE_22__* %76, i32 %77)
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, -1
  br i1 %84, label %85, label %102

85:                                               ; preds = %74
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = icmp sgt i32 %86, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %85
  %93 = load i32, i32* @NGX_LOG_ERR, align 4
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %93, i32 %98, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @NGX_HTTP_UNSUPPORTED_MEDIA_TYPE, align 4
  store i32 %101, i32* %2, align 4
  br label %134

102:                                              ; preds = %85, %74
  %103 = load i32, i32* %4, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  br label %116

111:                                              ; preds = %102
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %111, %105
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %119, align 8
  %121 = icmp ne %struct.TYPE_19__* %120, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  store i64 0, i64* %127, align 8
  br label %128

128:                                              ; preds = %122, %116
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  store i32 1, i32* %130, align 8
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  %133 = load i32, i32* @NGX_OK, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %128, %92, %72, %56, %37, %22, %13
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @ngx_http_next_header_filter(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @ngx_http_get_module_ctx(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_21__*, %struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_23__* @ngx_http_get_module_loc_conf(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @ngx_strncasecmp(i32, i32*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local %struct.TYPE_22__* @ngx_pcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
