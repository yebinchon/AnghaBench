; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_gunzip_filter_module.c_ngx_http_gunzip_filter_inflate.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_gunzip_filter_module.c_ngx_http_gunzip_filter_inflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i64, i32, %struct.TYPE_22__**, %struct.TYPE_17__, %struct.TYPE_23__*, i32*, %struct.TYPE_18__*, %struct.TYPE_24__* }
%struct.TYPE_22__ = type { %struct.TYPE_22__*, %struct.TYPE_23__* }
%struct.TYPE_17__ = type { i64, i64, i32, i32* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_24__ = type { i32* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"inflate in: ni:%p no:%p ai:%ud ao:%ud fl:%d redo:%d\00", align 1
@Z_OK = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@Z_BUF_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"inflate() failed: %d, %d\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"inflate out: ni:%p no:%p ai:%ud ao:%ud rc:%d\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"gunzip in_buf:%p pos:%p\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@Z_SYNC_FLUSH = common dso_local global i64 0, align 8
@Z_NO_FLUSH = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@Z_FINISH = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"inflate() returned %d on response end\00", align 1
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"inflateReset() failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, %struct.TYPE_21__*)* @ngx_http_gunzip_filter_inflate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_gunzip_filter_inflate(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %9 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ngx_log_debug6(i32 %9, i32 %14, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32* %18, i32 %22, i64 %26, i64 %30, i64 %33, i32 %36)
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @inflate(%struct.TYPE_17__* %39, i64 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @Z_OK, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %2
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @Z_STREAM_END, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @Z_BUF_ERROR, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load i32, i32* @NGX_LOG_ERR, align 4
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* %6, align 4
  %67 = call i32 (i32, i32, i32, i8*, i32, ...) @ngx_log_error(i32 %56, i32 %61, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load i64, i64* @NGX_ERROR, align 8
  store i64 %68, i64* %3, align 8
  br label %345

69:                                               ; preds = %51, %47, %2
  %70 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @ngx_log_debug5(i32 %70, i32 %75, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32* %79, i32 %83, i64 %87, i64 %91, i32 %92)
  %94 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 7
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %101, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 7
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @ngx_log_debug2(i32 %94, i32 %99, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_24__* %102, i32* %107)
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %133

114:                                              ; preds = %69
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 7
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  store i32* %118, i32** %122, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %114
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 3
  store i32* null, i32** %131, align 8
  br label %132

132:                                              ; preds = %128, %114
  br label %133

133:                                              ; preds = %132, %69
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 1
  store i32 %137, i32* %141, align 4
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %175

147:                                              ; preds = %133
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call %struct.TYPE_22__* @ngx_alloc_chain_link(i32 %150)
  store %struct.TYPE_22__* %151, %struct.TYPE_22__** %8, align 8
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %153 = icmp eq %struct.TYPE_22__* %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = load i64, i64* @NGX_ERROR, align 8
  store i64 %155, i64* %3, align 8
  br label %345

156:                                              ; preds = %147
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 4
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %158, align 8
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 1
  store %struct.TYPE_23__* %159, %struct.TYPE_23__** %161, align 8
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 0
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %163, align 8
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %166, align 8
  store %struct.TYPE_22__* %164, %struct.TYPE_22__** %167, align 8
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 2
  store %struct.TYPE_22__** %169, %struct.TYPE_22__*** %171, align 8
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 1
  store i32 1, i32* %173, align 8
  %174 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %174, i64* %3, align 8
  br label %345

175:                                              ; preds = %133
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 1
  store i32 0, i32* %177, align 8
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @Z_SYNC_FLUSH, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %235

183:                                              ; preds = %175
  %184 = load i64, i64* @Z_NO_FLUSH, align 8
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call %struct.TYPE_22__* @ngx_alloc_chain_link(i32 %189)
  store %struct.TYPE_22__* %190, %struct.TYPE_22__** %8, align 8
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %192 = icmp eq %struct.TYPE_22__* %191, null
  br i1 %192, label %193, label %195

193:                                              ; preds = %183
  %194 = load i64, i64* @NGX_ERROR, align 8
  store i64 %194, i64* %3, align 8
  br label %345

195:                                              ; preds = %183
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 4
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %197, align 8
  store %struct.TYPE_23__* %198, %struct.TYPE_23__** %7, align 8
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %200 = call i64 @ngx_buf_size(%struct.TYPE_23__* %199)
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %214

202:                                              ; preds = %195
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 6
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call %struct.TYPE_23__* @ngx_calloc_buf(i32 %207)
  store %struct.TYPE_23__* %208, %struct.TYPE_23__** %7, align 8
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %210 = icmp eq %struct.TYPE_23__* %209, null
  br i1 %210, label %211, label %213

211:                                              ; preds = %202
  %212 = load i64, i64* @NGX_ERROR, align 8
  store i64 %212, i64* %3, align 8
  br label %345

213:                                              ; preds = %202
  br label %218

214:                                              ; preds = %195
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 1
  store i64 0, i64* %217, align 8
  br label %218

218:                                              ; preds = %214, %213
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 0
  store i32 1, i32* %220, align 4
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 1
  store %struct.TYPE_23__* %221, %struct.TYPE_23__** %223, align 8
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 0
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %225, align 8
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %228, align 8
  store %struct.TYPE_22__* %226, %struct.TYPE_22__** %229, align 8
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i32 0, i32 2
  store %struct.TYPE_22__** %231, %struct.TYPE_22__*** %233, align 8
  %234 = load i64, i64* @NGX_OK, align 8
  store i64 %234, i64* %3, align 8
  br label %345

235:                                              ; preds = %175
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @Z_FINISH, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %271

241:                                              ; preds = %235
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 3
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %271

247:                                              ; preds = %241
  %248 = load i32, i32* %6, align 4
  %249 = load i32, i32* @Z_STREAM_END, align 4
  %250 = icmp ne i32 %248, %249
  br i1 %250, label %251, label %261

251:                                              ; preds = %247
  %252 = load i32, i32* @NGX_LOG_ERR, align 4
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %6, align 4
  %259 = call i32 (i32, i32, i32, i8*, i32, ...) @ngx_log_error(i32 %252, i32 %257, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %258)
  %260 = load i64, i64* @NGX_ERROR, align 8
  store i64 %260, i64* %3, align 8
  br label %345

261:                                              ; preds = %247
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %264 = call i64 @ngx_http_gunzip_filter_inflate_end(%struct.TYPE_20__* %262, %struct.TYPE_21__* %263)
  %265 = load i64, i64* @NGX_OK, align 8
  %266 = icmp ne i64 %264, %265
  br i1 %266, label %267, label %269

267:                                              ; preds = %261
  %268 = load i64, i64* @NGX_ERROR, align 8
  store i64 %268, i64* %3, align 8
  br label %345

269:                                              ; preds = %261
  %270 = load i64, i64* @NGX_OK, align 8
  store i64 %270, i64* %3, align 8
  br label %345

271:                                              ; preds = %241, %235
  %272 = load i32, i32* %6, align 4
  %273 = load i32, i32* @Z_STREAM_END, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %302

275:                                              ; preds = %271
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 3
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = icmp sgt i64 %279, 0
  br i1 %280, label %281, label %302

281:                                              ; preds = %275
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i32 0, i32 3
  %284 = call i32 @inflateReset(%struct.TYPE_17__* %283)
  store i32 %284, i32* %6, align 4
  %285 = load i32, i32* %6, align 4
  %286 = load i32, i32* @Z_OK, align 4
  %287 = icmp ne i32 %285, %286
  br i1 %287, label %288, label %298

288:                                              ; preds = %281
  %289 = load i32, i32* @NGX_LOG_ALERT, align 4
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_19__*, %struct.TYPE_19__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %6, align 4
  %296 = call i32 (i32, i32, i32, i8*, i32, ...) @ngx_log_error(i32 %289, i32 %294, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %295)
  %297 = load i64, i64* @NGX_ERROR, align 8
  store i64 %297, i64* %3, align 8
  br label %345

298:                                              ; preds = %281
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %299, i32 0, i32 1
  store i32 1, i32* %300, align 8
  %301 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %301, i64* %3, align 8
  br label %345

302:                                              ; preds = %275, %271
  %303 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %303, i32 0, i32 5
  %305 = load i32*, i32** %304, align 8
  %306 = icmp eq i32* %305, null
  br i1 %306, label %307, label %343

307:                                              ; preds = %302
  %308 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %308, i32 0, i32 4
  %310 = load %struct.TYPE_23__*, %struct.TYPE_23__** %309, align 8
  store %struct.TYPE_23__* %310, %struct.TYPE_23__** %7, align 8
  %311 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %312 = call i64 @ngx_buf_size(%struct.TYPE_23__* %311)
  %313 = icmp eq i64 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %307
  %315 = load i64, i64* @NGX_OK, align 8
  store i64 %315, i64* %3, align 8
  br label %345

316:                                              ; preds = %307
  %317 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = call %struct.TYPE_22__* @ngx_alloc_chain_link(i32 %319)
  store %struct.TYPE_22__* %320, %struct.TYPE_22__** %8, align 8
  %321 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %322 = icmp eq %struct.TYPE_22__* %321, null
  br i1 %322, label %323, label %325

323:                                              ; preds = %316
  %324 = load i64, i64* @NGX_ERROR, align 8
  store i64 %324, i64* %3, align 8
  br label %345

325:                                              ; preds = %316
  %326 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %326, i32 0, i32 3
  %328 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %327, i32 0, i32 1
  store i64 0, i64* %328, align 8
  %329 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %330 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %330, i32 0, i32 1
  store %struct.TYPE_23__* %329, %struct.TYPE_23__** %331, align 8
  %332 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %332, i32 0, i32 0
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %333, align 8
  %334 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %335 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %335, i32 0, i32 2
  %337 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %336, align 8
  store %struct.TYPE_22__* %334, %struct.TYPE_22__** %337, align 8
  %338 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %339 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %338, i32 0, i32 0
  %340 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %340, i32 0, i32 2
  store %struct.TYPE_22__** %339, %struct.TYPE_22__*** %341, align 8
  %342 = load i64, i64* @NGX_OK, align 8
  store i64 %342, i64* %3, align 8
  br label %345

343:                                              ; preds = %302
  %344 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %344, i64* %3, align 8
  br label %345

345:                                              ; preds = %343, %325, %323, %314, %298, %288, %269, %267, %251, %218, %211, %193, %156, %154, %55
  %346 = load i64, i64* %3, align 8
  ret i64 %346
}

declare dso_local i32 @ngx_log_debug6(i32, i32, i32, i8*, i32*, i32, i64, i64, i64, i32) #1

declare dso_local i32 @inflate(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @ngx_log_debug5(i32, i32, i32, i8*, i32*, i32, i64, i64, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, %struct.TYPE_24__*, i32*) #1

declare dso_local %struct.TYPE_22__* @ngx_alloc_chain_link(i32) #1

declare dso_local i64 @ngx_buf_size(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @ngx_calloc_buf(i32) #1

declare dso_local i64 @ngx_http_gunzip_filter_inflate_end(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @inflateReset(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
