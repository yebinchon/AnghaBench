; ModuleID = '/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2_filter_module.c_ngx_http_v2_filter_get_data_frame.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2_filter_module.c_ngx_http_v2_filter_get_data_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64, i64, %struct.TYPE_20__*, i32, %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, %struct.TYPE_18__*, i32, i32, %struct.TYPE_21__*, %struct.TYPE_22__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_24__*, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i32, i32, i64, i32*, i32*, i32*, i64, i32* }

@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"http2 flood detected\00", align 1
@NGX_HTTP_V2_END_STREAM_FLAG = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"http2:%ui create DATA frame %p: len:%uz flags:%ui\00", align 1
@NGX_HTTP_V2_FRAME_HEADER_SIZE = common dso_local global i32 0, align 4
@ngx_http_v2_module = common dso_local global i32 0, align 4
@NGX_HTTP_V2_DATA_FRAME = common dso_local global i32 0, align 4
@ngx_http_v2_data_frame_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_20__*, i64, %struct.TYPE_23__*, %struct.TYPE_23__*)* @ngx_http_v2_filter_get_data_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @ngx_http_v2_filter_get_data_frame(%struct.TYPE_20__* %0, i64 %1, %struct.TYPE_23__* %2, %struct.TYPE_23__* %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %9, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %13, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %14, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %22 = icmp ne %struct.TYPE_21__* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 7
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 4
  store %struct.TYPE_21__* %26, %struct.TYPE_21__** %28, align 8
  br label %67

29:                                               ; preds = %4
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 10000
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @ngx_palloc(i32 %39, i32 64)
  %41 = bitcast i8* %40 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %41, %struct.TYPE_21__** %13, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %43 = icmp eq %struct.TYPE_21__* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  br label %219

45:                                               ; preds = %34
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  br label %66

54:                                               ; preds = %29
  %55 = load i32, i32* @NGX_LOG_INFO, align 4
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ngx_log_error(i32 %55, i32 %60, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  br label %219

66:                                               ; preds = %45
  br label %67

67:                                               ; preds = %66, %23
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i64, i64* @NGX_HTTP_V2_END_STREAM_FLAG, align 8
  br label %77

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i64 [ %75, %74 ], [ 0, %76 ]
  store i64 %78, i64* %10, align 8
  %79 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %10, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @ngx_log_debug4(i32 %79, i32 %86, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %91, %struct.TYPE_21__* %92, i64 %93, i32 %95)
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 2
  %104 = call %struct.TYPE_23__* @ngx_chain_get_free_buf(i32 %101, i32* %103)
  store %struct.TYPE_23__* %104, %struct.TYPE_23__** %12, align 8
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %106 = icmp eq %struct.TYPE_23__* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %77
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  br label %219

108:                                              ; preds = %77
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %110, align 8
  store %struct.TYPE_24__* %111, %struct.TYPE_24__** %11, align 8
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %150

116:                                              ; preds = %108
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @NGX_HTTP_V2_FRAME_HEADER_SIZE, align 4
  %123 = call i8* @ngx_palloc(i32 %121, i32 %122)
  %124 = bitcast i8* %123 to i32*
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 5
  store i32* %124, i32** %126, align 8
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 5
  %129 = load i32*, i32** %128, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %116
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  br label %219

132:                                              ; preds = %116
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 5
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* @NGX_HTTP_V2_FRAME_HEADER_SIZE, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 7
  store i32* %138, i32** %140, align 8
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 7
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 3
  store i32* %143, i32** %145, align 8
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 6
  store i64 ptrtoint (i32* @ngx_http_v2_module to i64), i64* %147, align 8
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 0
  store i32 1, i32* %149, align 8
  br label %150

150:                                              ; preds = %132, %108
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 5
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 4
  store i32* %153, i32** %155, align 8
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 3
  store i32* %158, i32** %160, align 8
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* %7, align 8
  %165 = load i32, i32* @NGX_HTTP_V2_DATA_FRAME, align 4
  %166 = call i32* @ngx_http_v2_write_len_and_type(i32* %163, i64 %164, i32 %165)
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 3
  store i32* %166, i32** %168, align 8
  %169 = load i64, i64* %10, align 8
  %170 = trunc i64 %169 to i32
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i32 1
  store i32* %174, i32** %172, align 8
  store i32 %170, i32* %173, align 4
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 3
  %177 = load i32*, i32** %176, align 8
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32* @ngx_http_v2_write_sid(i32* %177, i32 %182)
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 3
  store i32* %183, i32** %185, align 8
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 1
  store %struct.TYPE_23__* %186, %struct.TYPE_23__** %188, align 8
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_23__* %189, %struct.TYPE_23__** %8, align 8
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 1
  store i32 1, i32* %193, align 4
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 6
  store %struct.TYPE_23__* %194, %struct.TYPE_23__** %196, align 8
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 5
  store %struct.TYPE_23__* %197, %struct.TYPE_23__** %199, align 8
  %200 = load i32, i32* @ngx_http_v2_data_frame_handler, align 4
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 4
  store i32 %200, i32* %202, align 8
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 3
  store %struct.TYPE_20__* %203, %struct.TYPE_20__** %205, align 8
  %206 = load i64, i64* %7, align 8
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 0
  store i64 %206, i64* %208, align 8
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 2
  store i64 0, i64* %210, align 8
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 1
  store i64 %215, i64* %217, align 8
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_21__* %218, %struct.TYPE_21__** %5, align 8
  br label %219

219:                                              ; preds = %150, %131, %107, %54, %44
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  ret %struct.TYPE_21__* %220
}

declare dso_local i8* @ngx_palloc(i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i32, %struct.TYPE_21__*, i64, i32) #1

declare dso_local %struct.TYPE_23__* @ngx_chain_get_free_buf(i32, i32*) #1

declare dso_local i32* @ngx_http_v2_write_len_and_type(i32*, i64, i32) #1

declare dso_local i32* @ngx_http_v2_write_sid(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
