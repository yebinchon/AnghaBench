; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_image_filter_module.c_ngx_http_image_body_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_image_filter_module.c_ngx_http_image_body_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_28__, %struct.TYPE_27__* }
%struct.TYPE_28__ = type { i32*, %struct.TYPE_29__, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_33__ = type { i32*, i32* }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_32__ = type { i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"image filter\00", align 1
@ngx_http_image_filter_module = common dso_local global i32 0, align 4
@NGX_HTTP_IMAGE_NONE = common dso_local global i32 0, align 4
@NGX_HTTP_IMAGE_SIZE = common dso_local global i32 0, align 4
@NGX_HTTP_IMAGE_DONE = common dso_local global i32 0, align 4
@NGX_HTTP_UNSUPPORTED_MEDIA_TYPE = common dso_local global i32 0, align 4
@ngx_http_image_types = common dso_local global %struct.TYPE_29__* null, align 8
@NGX_HTTP_IMAGE_TEST = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_30__*, %struct.TYPE_33__*)* @ngx_http_image_body_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_image_body_filter(%struct.TYPE_30__* %0, %struct.TYPE_33__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_33__, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %5, align 8
  %11 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %12 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ngx_log_debug0(i32 %11, i32 %16, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %19 = icmp eq %struct.TYPE_33__* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %22 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %23 = call i32 @ngx_http_next_body_filter(%struct.TYPE_30__* %21, %struct.TYPE_33__* %22)
  store i32 %23, i32* %3, align 4
  br label %168

24:                                               ; preds = %2
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %26 = load i32, i32* @ngx_http_image_filter_module, align 4
  %27 = call %struct.TYPE_31__* @ngx_http_get_module_ctx(%struct.TYPE_30__* %25, i32 %26)
  store %struct.TYPE_31__* %27, %struct.TYPE_31__** %9, align 8
  %28 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %29 = icmp eq %struct.TYPE_31__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %32 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %33 = call i32 @ngx_http_next_body_filter(%struct.TYPE_30__* %31, %struct.TYPE_33__* %32)
  store i32 %33, i32* %3, align 4
  br label %168

34:                                               ; preds = %24
  %35 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %156 [
    i32 128, label %38
    i32 129, label %116
    i32 130, label %134
    i32 131, label %152
  ]

38:                                               ; preds = %34
  %39 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %40 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %41 = call i32 @ngx_http_image_test(%struct.TYPE_30__* %39, %struct.TYPE_33__* %40)
  %42 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %45 = load i32, i32* @ngx_http_image_filter_module, align 4
  %46 = call %struct.TYPE_32__* @ngx_http_get_module_loc_conf(%struct.TYPE_30__* %44, i32 %45)
  store %struct.TYPE_32__* %46, %struct.TYPE_32__** %10, align 8
  %47 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NGX_HTTP_IMAGE_NONE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %38
  %53 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NGX_HTTP_IMAGE_SIZE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %52
  %59 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %60 = call i32* @ngx_http_image_json(%struct.TYPE_30__* %59, i32* null)
  %61 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %8, i32 0, i32 1
  store i32* %60, i32** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %8, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %8, i32 0, i32 0
  store i32* null, i32** %66, align 8
  %67 = load i32, i32* @NGX_HTTP_IMAGE_DONE, align 4
  %68 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %72 = call i32 @ngx_http_image_send(%struct.TYPE_30__* %70, %struct.TYPE_31__* %71, %struct.TYPE_33__* %8)
  store i32 %72, i32* %3, align 4
  br label %168

73:                                               ; preds = %58
  br label %74

74:                                               ; preds = %73, %52
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %76 = load i32, i32* @NGX_HTTP_UNSUPPORTED_MEDIA_TYPE, align 4
  %77 = call i32 @ngx_http_filter_finalize_request(%struct.TYPE_30__* %75, i32* @ngx_http_image_filter_module, i32 %76)
  store i32 %77, i32* %3, align 4
  br label %168

78:                                               ; preds = %38
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** @ngx_http_image_types, align 8
  %80 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i64 %84
  store %struct.TYPE_29__* %85, %struct.TYPE_29__** %7, align 8
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 4
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %96 = bitcast %struct.TYPE_29__* %94 to i8*
  %97 = bitcast %struct.TYPE_29__* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 4 %97, i64 4, i1 false)
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 0
  store i32* null, i32** %100, align 8
  %101 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @NGX_HTTP_IMAGE_TEST, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %78
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %107, i32 0, i32 0
  store i32 131, i32* %108, align 4
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %110 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %111 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %112 = call i32 @ngx_http_image_send(%struct.TYPE_30__* %109, %struct.TYPE_31__* %110, %struct.TYPE_33__* %111)
  store i32 %112, i32* %3, align 4
  br label %168

113:                                              ; preds = %78
  %114 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %114, i32 0, i32 0
  store i32 129, i32* %115, align 4
  br label %116

116:                                              ; preds = %34, %113
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %118 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %119 = call i32 @ngx_http_image_read(%struct.TYPE_30__* %117, %struct.TYPE_33__* %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @NGX_AGAIN, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = load i32, i32* @NGX_OK, align 4
  store i32 %124, i32* %3, align 4
  br label %168

125:                                              ; preds = %116
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @NGX_ERROR, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %131 = load i32, i32* @NGX_HTTP_UNSUPPORTED_MEDIA_TYPE, align 4
  %132 = call i32 @ngx_http_filter_finalize_request(%struct.TYPE_30__* %130, i32* @ngx_http_image_filter_module, i32 %131)
  store i32 %132, i32* %3, align 4
  br label %168

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %34, %133
  %135 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %136 = call i32* @ngx_http_image_process(%struct.TYPE_30__* %135)
  %137 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %8, i32 0, i32 1
  store i32* %136, i32** %137, align 8
  %138 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %8, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %143 = load i32, i32* @NGX_HTTP_UNSUPPORTED_MEDIA_TYPE, align 4
  %144 = call i32 @ngx_http_filter_finalize_request(%struct.TYPE_30__* %142, i32* @ngx_http_image_filter_module, i32 %143)
  store i32 %144, i32* %3, align 4
  br label %168

145:                                              ; preds = %134
  %146 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %8, i32 0, i32 0
  store i32* null, i32** %146, align 8
  %147 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %147, i32 0, i32 0
  store i32 131, i32* %148, align 4
  %149 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %150 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %151 = call i32 @ngx_http_image_send(%struct.TYPE_30__* %149, %struct.TYPE_31__* %150, %struct.TYPE_33__* %8)
  store i32 %151, i32* %3, align 4
  br label %168

152:                                              ; preds = %34
  %153 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %154 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %155 = call i32 @ngx_http_next_body_filter(%struct.TYPE_30__* %153, %struct.TYPE_33__* %154)
  store i32 %155, i32* %3, align 4
  br label %168

156:                                              ; preds = %34
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %158 = call i32 @ngx_http_next_body_filter(%struct.TYPE_30__* %157, %struct.TYPE_33__* null)
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @NGX_OK, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = load i32, i32* @NGX_ERROR, align 4
  br label %166

164:                                              ; preds = %156
  %165 = load i32, i32* %6, align 4
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i32 [ %163, %162 ], [ %165, %164 ]
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %166, %152, %145, %141, %129, %123, %106, %74, %65, %30, %20
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_next_body_filter(%struct.TYPE_30__*, %struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_31__* @ngx_http_get_module_ctx(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @ngx_http_image_test(%struct.TYPE_30__*, %struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_32__* @ngx_http_get_module_loc_conf(%struct.TYPE_30__*, i32) #1

declare dso_local i32* @ngx_http_image_json(%struct.TYPE_30__*, i32*) #1

declare dso_local i32 @ngx_http_image_send(%struct.TYPE_30__*, %struct.TYPE_31__*, %struct.TYPE_33__*) #1

declare dso_local i32 @ngx_http_filter_finalize_request(%struct.TYPE_30__*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_http_image_read(%struct.TYPE_30__*, %struct.TYPE_33__*) #1

declare dso_local i32* @ngx_http_image_process(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
