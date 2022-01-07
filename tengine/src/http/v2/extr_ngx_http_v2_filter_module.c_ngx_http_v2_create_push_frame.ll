; ModuleID = '/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2_filter_module.c_ngx_http_v2_create_push_frame.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2_filter_module.c_ngx_http_v2_create_push_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_22__*, %struct.TYPE_22__*, i64, %struct.TYPE_18__*, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_22__*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64*, i64*, i64*, i64*, i32, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_20__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_16__*, i32, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32 }

@NGX_HTTP_V2_STREAM_ID_SIZE = common dso_local global i32 0, align 4
@ngx_http_v2_push_frame_handler = common dso_local global i32 0, align 4
@NGX_HTTP_V2_PUSH_PROMISE_FRAME = common dso_local global i64 0, align 8
@NGX_HTTP_V2_NO_FLAG = common dso_local global i64 0, align 8
@NGX_HTTP_V2_END_HEADERS_FLAG = common dso_local global i64 0, align 8
@NGX_HTTP_V2_FRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@ngx_http_v2_module = common dso_local global i32 0, align 4
@NGX_HTTP_V2_CONTINUATION_FRAME = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"http2:%ui create PUSH_PROMISE frame %p: sid:%ui len:%uz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_21__*, i64*, i64*)* @ngx_http_v2_create_push_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @ngx_http_v2_create_push_frame(%struct.TYPE_21__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca %struct.TYPE_22__**, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %16, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %18, align 8
  %25 = load i32, i32* @NGX_HTTP_V2_STREAM_ID_SIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64*, i64** %7, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = ptrtoint i64* %27 to i64
  %30 = ptrtoint i64* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 8
  %33 = add nsw i64 %26, %32
  store i64 %33, i64* %10, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.TYPE_19__* @ngx_palloc(i32 %36, i32 56)
  store %struct.TYPE_19__* %37, %struct.TYPE_19__** %17, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %39 = icmp eq %struct.TYPE_19__* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %3
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %240

41:                                               ; preds = %3
  %42 = load i32, i32* @ngx_http_v2_push_frame_handler, align 4
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 5
  store %struct.TYPE_18__* %45, %struct.TYPE_18__** %47, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 1
  store i32 1, i32* %52, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 3
  store %struct.TYPE_22__** %56, %struct.TYPE_22__*** %15, align 8
  %57 = load i64, i64* @NGX_HTTP_V2_PUSH_PROMISE_FRAME, align 8
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* @NGX_HTTP_V2_NO_FLAG, align 8
  store i64 %58, i64* %9, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %11, align 8
  br label %62

62:                                               ; preds = %207, %41
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp ule i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i64, i64* %10, align 8
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* @NGX_HTTP_V2_END_HEADERS_FLAG, align 8
  %69 = load i64, i64* %9, align 8
  %70 = or i64 %69, %68
  store i64 %70, i64* %9, align 8
  br label %71

71:                                               ; preds = %66, %62
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* @NGX_HTTP_V2_FRAME_HEADER_SIZE, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @NGX_HTTP_V2_PUSH_PROMISE_FRAME, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* @NGX_HTTP_V2_STREAM_ID_SIZE, align 4
  br label %82

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 0, %81 ]
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %75, %84
  %86 = call %struct.TYPE_23__* @ngx_create_temp_buf(i32 %74, i64 %85)
  store %struct.TYPE_23__* %86, %struct.TYPE_23__** %13, align 8
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %88 = icmp eq %struct.TYPE_23__* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %240

90:                                               ; preds = %82
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i64* @ngx_http_v2_write_len_and_type(i64* %93, i64 %94, i64 %95)
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 0
  store i64* %96, i64** %98, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i32 1
  store i64* %103, i64** %101, align 8
  store i64 %99, i64* %102, align 8
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @ngx_http_v2_write_sid(i64* %106, i32 %111)
  %113 = bitcast i8* %112 to i64*
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 0
  store i64* %113, i64** %115, align 8
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 5
  store i64 ptrtoint (i32* @ngx_http_v2_module to i64), i64* %117, align 8
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* @NGX_HTTP_V2_PUSH_PROMISE_FRAME, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %140

121:                                              ; preds = %90
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 2
  store i32 %125, i32* %123, align 8
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i8* @ngx_http_v2_write_sid(i64* %128, i32 %131)
  %133 = bitcast i8* %132 to i64*
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 0
  store i64* %133, i64** %135, align 8
  %136 = load i64, i64* %11, align 8
  %137 = load i32, i32* @NGX_HTTP_V2_STREAM_ID_SIZE, align 4
  %138 = sext i32 %137 to i64
  %139 = sub i64 %136, %138
  store i64 %139, i64* %12, align 8
  br label %142

140:                                              ; preds = %90
  %141 = load i64, i64* %11, align 8
  store i64 %141, i64* %12, align 8
  br label %142

142:                                              ; preds = %140, %121
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call %struct.TYPE_22__* @ngx_alloc_chain_link(i32 %145)
  store %struct.TYPE_22__* %146, %struct.TYPE_22__** %14, align 8
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %148 = icmp eq %struct.TYPE_22__* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %240

150:                                              ; preds = %142
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 1
  store %struct.TYPE_23__* %151, %struct.TYPE_23__** %153, align 8
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %155 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %15, align 8
  store %struct.TYPE_22__* %154, %struct.TYPE_22__** %155, align 8
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 0
  store %struct.TYPE_22__** %157, %struct.TYPE_22__*** %15, align 8
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call %struct.TYPE_23__* @ngx_calloc_buf(i32 %160)
  store %struct.TYPE_23__* %161, %struct.TYPE_23__** %13, align 8
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %163 = icmp eq %struct.TYPE_23__* %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %150
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %240

165:                                              ; preds = %150
  %166 = load i64*, i64** %6, align 8
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 1
  store i64* %166, i64** %168, align 8
  %169 = load i64, i64* %12, align 8
  %170 = load i64*, i64** %6, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 %169
  store i64* %171, i64** %6, align 8
  %172 = load i64*, i64** %6, align 8
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 0
  store i64* %172, i64** %174, align 8
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 1
  %177 = load i64*, i64** %176, align 8
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 2
  store i64* %177, i64** %179, align 8
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 0
  %182 = load i64*, i64** %181, align 8
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 3
  store i64* %182, i64** %184, align 8
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 4
  store i32 1, i32* %186, align 8
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = call %struct.TYPE_22__* @ngx_alloc_chain_link(i32 %189)
  store %struct.TYPE_22__* %190, %struct.TYPE_22__** %14, align 8
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %192 = icmp eq %struct.TYPE_22__* %191, null
  br i1 %192, label %193, label %194

193:                                              ; preds = %165
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %240

194:                                              ; preds = %165
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 1
  store %struct.TYPE_23__* %195, %struct.TYPE_23__** %197, align 8
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %199 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %15, align 8
  store %struct.TYPE_22__* %198, %struct.TYPE_22__** %199, align 8
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 0
  store %struct.TYPE_22__** %201, %struct.TYPE_22__*** %15, align 8
  %202 = load i64, i64* %11, align 8
  %203 = load i64, i64* %10, align 8
  %204 = sub i64 %203, %202
  store i64 %204, i64* %10, align 8
  %205 = load i64, i64* %10, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %194
  %208 = load i64, i64* @NGX_HTTP_V2_FRAME_HEADER_SIZE, align 8
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = add i64 %211, %208
  store i64 %212, i64* %210, align 8
  %213 = load i64, i64* @NGX_HTTP_V2_CONTINUATION_FRAME, align 8
  store i64 %213, i64* %8, align 8
  br label %62

214:                                              ; preds = %194
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 0
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %216, align 8
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 2
  store %struct.TYPE_22__* %217, %struct.TYPE_22__** %219, align 8
  %220 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @ngx_log_debug4(i32 %220, i32 %225, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %230, %struct.TYPE_19__* %231, i32 %234, i64 %237)
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %239, %struct.TYPE_19__** %4, align 8
  br label %240

240:                                              ; preds = %214, %193, %164, %149, %89, %40
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  ret %struct.TYPE_19__* %241
}

declare dso_local %struct.TYPE_19__* @ngx_palloc(i32, i32) #1

declare dso_local %struct.TYPE_23__* @ngx_create_temp_buf(i32, i64) #1

declare dso_local i64* @ngx_http_v2_write_len_and_type(i64*, i64, i64) #1

declare dso_local i8* @ngx_http_v2_write_sid(i64*, i32) #1

declare dso_local %struct.TYPE_22__* @ngx_alloc_chain_link(i32) #1

declare dso_local %struct.TYPE_23__* @ngx_calloc_buf(i32) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i32, %struct.TYPE_19__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
