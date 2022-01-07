; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_memcached_module.c_ngx_http_memcached_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_memcached_module.c_ngx_http_memcached_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_10__, i32, %struct.TYPE_16__*, %struct.TYPE_17__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__*, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { i32, i32, i32*, i32, i32* }
%struct.TYPE_17__ = type { i32, i32* }

@ngx_http_memcached_end = common dso_local global i64 0, align 8
@NGX_HTTP_MEMCACHED_END = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"memcached sent invalid trailer\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"memcached filter bytes:%z size:%z length:%O rest:%z\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @ngx_http_memcached_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_memcached_filter(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_16__**, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %6, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %11, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 5
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %8, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %78

28:                                               ; preds = %2
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @ngx_http_memcached_end, align 8
  %33 = load i64, i64* @NGX_HTTP_MEMCACHED_END, align 8
  %34 = add nsw i64 %32, %33
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = load i64, i64* %5, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i64 @ngx_strncmp(i32* %31, i64 %38, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %28
  %44 = load i32, i32* @NGX_LOG_ERR, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ngx_log_error(i32 %44, i32 %51, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @NGX_OK, align 4
  store i32 %57, i32* %3, align 4
  br label %264

58:                                               ; preds = %28
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %62, %59
  store i64 %63, i64* %61, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %67, %64
  store i64 %68, i64* %66, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %58
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %58
  %77 = load i32, i32* @NGX_OK, align 4
  store i32 %77, i32* %3, align 4
  br label %264

78:                                               ; preds = %2
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  store %struct.TYPE_16__* %81, %struct.TYPE_16__** %9, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 4
  store %struct.TYPE_16__** %83, %struct.TYPE_16__*** %10, align 8
  br label %84

84:                                               ; preds = %90, %78
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %86 = icmp ne %struct.TYPE_16__* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  store %struct.TYPE_16__** %89, %struct.TYPE_16__*** %10, align 8
  br label %90

90:                                               ; preds = %87
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  store %struct.TYPE_16__* %93, %struct.TYPE_16__** %9, align 8
  br label %84

94:                                               ; preds = %84
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 3
  %102 = call %struct.TYPE_16__* @ngx_chain_get_free_buf(i32 %99, i32* %101)
  store %struct.TYPE_16__* %102, %struct.TYPE_16__** %9, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %104 = icmp eq %struct.TYPE_16__* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %94
  %106 = load i32, i32* @NGX_ERROR, align 4
  store i32 %106, i32* %3, align 4
  br label %264

107:                                              ; preds = %94
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %117 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %10, align 8
  store %struct.TYPE_16__* %116, %struct.TYPE_16__** %117, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  store i32* %120, i32** %7, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 4
  store i32* %121, i32** %125, align 8
  %126 = load i64, i64* %5, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 %126
  store i32* %130, i32** %128, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 2
  store i32* %133, i32** %137, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 3
  store i32 %141, i32* %145, align 8
  %146 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i64, i64* %5, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = sub i64 0, %161
  %163 = getelementptr inbounds i32, i32* %157, i64 %162
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @ngx_log_debug4(i32 %146, i32 %153, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %154, i32* %163, i64 %166, i64 %169)
  %171 = load i64, i64* %5, align 8
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @NGX_HTTP_MEMCACHED_END, align 8
  %176 = sub nsw i64 %174, %175
  %177 = icmp sle i64 %171, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %107
  %179 = load i64, i64* %5, align 8
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = sub nsw i64 %182, %179
  store i64 %183, i64* %181, align 8
  %184 = load i32, i32* @NGX_OK, align 4
  store i32 %184, i32* %3, align 4
  br label %264

185:                                              ; preds = %107
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @NGX_HTTP_MEMCACHED_END, align 8
  %190 = sub nsw i64 %188, %189
  %191 = load i32*, i32** %7, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 %190
  store i32* %192, i32** %7, align 8
  %193 = load i32*, i32** %7, align 8
  %194 = load i64, i64* @ngx_http_memcached_end, align 8
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = load i32*, i32** %7, align 8
  %199 = ptrtoint i32* %197 to i64
  %200 = ptrtoint i32* %198 to i64
  %201 = sub i64 %199, %200
  %202 = sdiv exact i64 %201, 4
  %203 = trunc i64 %202 to i32
  %204 = call i64 @ngx_strncmp(i32* %193, i64 %194, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %229

206:                                              ; preds = %185
  %207 = load i32, i32* @NGX_LOG_ERR, align 4
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @ngx_log_error(i32 %207, i32 %214, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %216 = load i32*, i32** %7, align 8
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 1
  store i32* %216, i32** %218, align 8
  %219 = load i32*, i32** %7, align 8
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 2
  store i32* %219, i32** %223, align 8
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  store i64 0, i64* %225, align 8
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 0
  store i64 0, i64* %227, align 8
  %228 = load i32, i32* @NGX_OK, align 4
  store i32 %228, i32* %3, align 4
  br label %264

229:                                              ; preds = %185
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = load i32*, i32** %7, align 8
  %234 = ptrtoint i32* %232 to i64
  %235 = ptrtoint i32* %233 to i64
  %236 = sub i64 %234, %235
  %237 = sdiv exact i64 %236, 4
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = sub nsw i64 %240, %237
  store i64 %241, i64* %239, align 8
  %242 = load i32*, i32** %7, align 8
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 1
  store i32* %242, i32** %244, align 8
  %245 = load i32*, i32** %7, align 8
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 2
  store i32* %245, i32** %249, align 8
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 0
  store i64 %252, i64* %254, align 8
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %229
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 1
  store i32 1, i32* %261, align 8
  br label %262

262:                                              ; preds = %259, %229
  %263 = load i32, i32* @NGX_OK, align 4
  store i32 %263, i32* %3, align 4
  br label %264

264:                                              ; preds = %262, %206, %178, %105, %76, %43
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local i64 @ngx_strncmp(i32*, i64, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_16__* @ngx_chain_get_free_buf(i32, i32*) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i64, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
