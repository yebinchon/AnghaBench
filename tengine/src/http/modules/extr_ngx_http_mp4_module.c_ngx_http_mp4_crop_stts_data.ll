; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_crop_stts_data.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_crop_stts_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32*, i32* }
%struct.TYPE_13__ = type { i32, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"mp4 stts crop start_time:%ui\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"mp4 stts crop end_time:%ui\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@NGX_HTTP_MP4_STTS_DATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"time:%uL, count:%uD, duration:%uD\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"start time is out mp4 stts samples in \22%s\22\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"end_sample:%ui\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"start_sample:%ui, new count:%uD\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"end_sample:%ui, new count:%uD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i32)* @ngx_http_mp4_crop_stts_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_mp4_crop_stts_data(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %3
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %15, align 4
  %30 = call i32 @ngx_log_debug1(i32 %24, i32 %28, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %50

31:                                               ; preds = %3
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @ngx_log_debug1(i32 %40, i32 %44, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %49

47:                                               ; preds = %31
  %48 = load i32, i32* @NGX_OK, align 4
  store i32 %48, i32* %4, align 4
  br label %227

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %20
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = load i64, i64* @NGX_HTTP_MP4_STTS_DATA, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  store %struct.TYPE_16__* %57, %struct.TYPE_16__** %12, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %58, %61
  %63 = sdiv i32 %62, 1000
  store i32 %63, i32* %11, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = bitcast i32* %69 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %16, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = bitcast i32* %73 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %74, %struct.TYPE_13__** %17, align 8
  br label %75

75:                                               ; preds = %111, %50
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %78 = icmp ult %struct.TYPE_13__* %76, %77
  br i1 %78, label %79, label %124

79:                                               ; preds = %75
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ngx_mp4_get_32value(i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ngx_mp4_get_32value(i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @ngx_log_debug3(i32 %88, i32 %92, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %94, i32 %95)
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = mul nsw i32 %98, %99
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %79
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %9, align 4
  %105 = sdiv i32 %103, %104
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %9, align 4
  %110 = sdiv i32 %108, %109
  store i32 %110, i32* %10, align 4
  br label %158

111:                                              ; preds = %79
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %9, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load i32, i32* %11, align 4
  %119 = sub nsw i32 %118, %117
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %14, align 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 1
  store %struct.TYPE_13__* %123, %struct.TYPE_13__** %16, align 8
  br label %75

124:                                              ; preds = %75
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  %128 = load i32, i32* @NGX_LOG_ERR, align 4
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ngx_log_error(i32 %128, i32 %132, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @NGX_ERROR, align 4
  store i32 %139, i32* %4, align 4
  br label %227

140:                                              ; preds = %124
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %143, %144
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @ngx_log_debug1(i32 %148, i32 %152, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @NGX_OK, align 4
  store i32 %157, i32* %4, align 4
  br label %227

158:                                              ; preds = %102
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %191

161:                                              ; preds = %158
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %10, align 4
  %167 = sub nsw i32 %165, %166
  %168 = call i32 @ngx_mp4_set_32value(i32 %164, i32 %167)
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %170 = bitcast %struct.TYPE_13__* %169 to i32*
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 1
  store i32* %170, i32** %172, align 8
  %173 = load i32, i32* %14, align 4
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* %13, align 4
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* %10, align 4
  %189 = sub nsw i32 %187, %188
  %190 = call i32 @ngx_log_debug2(i32 %179, i32 %183, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %186, i32 %189)
  br label %225

191:                                              ; preds = %158
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %10, align 4
  %196 = call i32 @ngx_mp4_set_32value(i32 %194, i32 %195)
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i64 1
  %199 = bitcast %struct.TYPE_13__* %198 to i32*
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 0
  store i32* %199, i32** %201, align 8
  %202 = load i32, i32* %14, align 4
  %203 = sub nsw i32 %202, 1
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = sub nsw i32 %206, %203
  store i32 %207, i32* %205, align 4
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %13, align 4
  %212 = add nsw i32 %210, %211
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 8
  %215 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %10, align 4
  %224 = call i32 @ngx_log_debug2(i32 %215, i32 %219, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %191, %161
  %226 = load i32, i32* @NGX_OK, align 4
  store i32 %226, i32* %4, align 4
  br label %227

227:                                              ; preds = %225, %140, %127, %47
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_mp4_get_32value(i32) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_mp4_set_32value(i32, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
