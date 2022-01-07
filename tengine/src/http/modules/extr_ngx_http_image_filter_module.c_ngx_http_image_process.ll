; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_image_filter_module.c_ngx_http_image_process.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_image_filter_module.c_ngx_http_image_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32, i64, i64, i64, i64, i32 }
%struct.TYPE_22__ = type { i64, i32, i32, i32, i32, i32, i32 }

@NGX_HTTP_IMAGE_BUFFERED = common dso_local global i32 0, align 4
@ngx_http_image_filter_module = common dso_local global i32 0, align 4
@NGX_HTTP_IMAGE_SIZE = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_IMAGE_ROTATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_20__*)* @ngx_http_image_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_http_image_process(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %7 = load i32, i32* @NGX_HTTP_IMAGE_BUFFERED, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %8
  store i32 %14, i32* %12, align 4
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %16 = load i32, i32* @ngx_http_image_filter_module, align 4
  %17 = call %struct.TYPE_21__* @ngx_http_get_module_ctx(%struct.TYPE_20__* %15, i32 %16)
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %5, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %20 = call i64 @ngx_http_image_size(%struct.TYPE_20__* %18, %struct.TYPE_21__* %19)
  store i64 %20, i64* %4, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %22 = load i32, i32* @ngx_http_image_filter_module, align 4
  %23 = call %struct.TYPE_22__* @ngx_http_get_module_loc_conf(%struct.TYPE_20__* %21, i32 %22)
  store %struct.TYPE_22__* %23, %struct.TYPE_22__** %6, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NGX_HTTP_IMAGE_SIZE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %1
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @NGX_OK, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  br label %37

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi %struct.TYPE_21__* [ %35, %34 ], [ null, %36 ]
  %39 = call i32* @ngx_http_image_json(%struct.TYPE_20__* %30, %struct.TYPE_21__* %38)
  store i32* %39, i32** %2, align 8
  br label %149

40:                                               ; preds = %1
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @ngx_http_image_filter_get_value(%struct.TYPE_20__* %41, i32 %44, i32 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NGX_HTTP_IMAGE_ROTATE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %40
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 90
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 180
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 270
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32* null, i32** %2, align 8
  br label %149

73:                                               ; preds = %67, %62, %57
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %76 = call i32* @ngx_http_image_resize(%struct.TYPE_20__* %74, %struct.TYPE_21__* %75)
  store i32* %76, i32** %2, align 8
  br label %149

77:                                               ; preds = %40
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @ngx_http_image_filter_get_value(%struct.TYPE_20__* %78, i32 %81, i32 %84)
  %86 = ptrtoint i8* %85 to i64
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %77
  store i32* null, i32** %2, align 8
  br label %149

94:                                               ; preds = %77
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i8* @ngx_http_image_filter_get_value(%struct.TYPE_20__* %95, i32 %98, i32 %101)
  %103 = ptrtoint i8* %102 to i64
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 2
  store i64 %103, i64* %105, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %94
  store i32* null, i32** %2, align 8
  br label %149

111:                                              ; preds = %94
  %112 = load i64, i64* %4, align 8
  %113 = load i64, i64* @NGX_OK, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %145

115:                                              ; preds = %111
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp sle i64 %118, %121
  br i1 %122, label %123, label %145

123:                                              ; preds = %115
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp sle i64 %126, %129
  br i1 %130, label %131, label %145

131:                                              ; preds = %123
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %131
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %136
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %144 = call i32* @ngx_http_image_asis(%struct.TYPE_20__* %142, %struct.TYPE_21__* %143)
  store i32* %144, i32** %2, align 8
  br label %149

145:                                              ; preds = %136, %131, %123, %115, %111
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %148 = call i32* @ngx_http_image_resize(%struct.TYPE_20__* %146, %struct.TYPE_21__* %147)
  store i32* %148, i32** %2, align 8
  br label %149

149:                                              ; preds = %145, %141, %110, %93, %73, %72, %37
  %150 = load i32*, i32** %2, align 8
  ret i32* %150
}

declare dso_local %struct.TYPE_21__* @ngx_http_get_module_ctx(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @ngx_http_image_size(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @ngx_http_get_module_loc_conf(%struct.TYPE_20__*, i32) #1

declare dso_local i32* @ngx_http_image_json(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i8* @ngx_http_image_filter_get_value(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32* @ngx_http_image_resize(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32* @ngx_http_image_asis(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
