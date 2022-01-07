; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_headers_filter_module.c_ngx_http_set_expires.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_headers_filter_module.c_ngx_http_set_expires.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__, i32, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_17__** }
%struct.TYPE_17__ = type { i32, %struct.TYPE_20__, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i32* }
%struct.TYPE_19__ = type { i64, i64, i32* }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_EXPIRES_OFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"Expires\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Cache-Control\00", align 1
@NGX_HTTP_EXPIRES_EPOCH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Thu, 01 Jan 1970 00:00:01 GMT\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"no-cache\00", align 1
@NGX_HTTP_EXPIRES_MAX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"Thu, 31 Dec 2037 23:55:55 GMT\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"max-age=315360000\00", align 1
@NGX_HTTP_EXPIRES_DAILY = common dso_local global i64 0, align 8
@ngx_cached_http_time = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"max-age=0\00", align 1
@NGX_HTTP_EXPIRES_ACCESS = common dso_local global i64 0, align 8
@NGX_TIME_T_LEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"max-age=%T\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, %struct.TYPE_19__*)* @ngx_http_set_expires to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_set_expires(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca %struct.TYPE_17__**, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %17, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %52

28:                                               ; preds = %2
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @ngx_http_complex_value(%struct.TYPE_18__* %29, i32* %32, i32* %11)
  %34 = load i64, i64* @NGX_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i64, i64* @NGX_ERROR, align 8
  store i64 %37, i64* %3, align 8
  br label %310

38:                                               ; preds = %28
  %39 = call i64 @ngx_http_parse_expires(i32* %11, i64* %17, i64* %9, i8** %6)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @NGX_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i64, i64* @NGX_OK, align 8
  store i64 %44, i64* %3, align 8
  br label %310

45:                                               ; preds = %38
  %46 = load i64, i64* %17, align 8
  %47 = load i64, i64* @NGX_HTTP_EXPIRES_OFF, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* @NGX_OK, align 8
  store i64 %50, i64* %3, align 8
  br label %310

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %2
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %55, align 8
  store %struct.TYPE_17__* %56, %struct.TYPE_17__** %14, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %58 = icmp eq %struct.TYPE_17__* %57, null
  br i1 %58, label %59, label %78

59:                                               ; preds = %52
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 2
  %63 = call %struct.TYPE_17__* @ngx_list_push(i32* %62)
  store %struct.TYPE_17__* %63, %struct.TYPE_17__** %14, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %65 = icmp eq %struct.TYPE_17__* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i64, i64* @NGX_ERROR, align 8
  store i64 %67, i64* %3, align 8
  br label %310

68:                                               ; preds = %59
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 3
  store %struct.TYPE_17__* %69, %struct.TYPE_17__** %72, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 2
  %77 = call i32 @ngx_str_set(%struct.TYPE_20__* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %78

78:                                               ; preds = %68, %52
  store i64 30, i64* %7, align 8
  %79 = load i64, i64* %7, align 8
  %80 = sub i64 %79, 1
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  store i64 %80, i64* %83, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %87, align 8
  store %struct.TYPE_17__** %88, %struct.TYPE_17__*** %16, align 8
  %89 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %16, align 8
  %90 = icmp eq %struct.TYPE_17__** %89, null
  br i1 %90, label %91, label %129

91:                                               ; preds = %78
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @ngx_array_init(%struct.TYPE_15__* %94, i32 %97, i32 1, i32 8)
  %99 = load i64, i64* @NGX_OK, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i64, i64* @NGX_ERROR, align 8
  store i64 %102, i64* %3, align 8
  br label %310

103:                                              ; preds = %91
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 2
  %107 = call %struct.TYPE_17__* @ngx_list_push(i32* %106)
  store %struct.TYPE_17__* %107, %struct.TYPE_17__** %15, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %109 = icmp eq %struct.TYPE_17__* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i64, i64* @NGX_ERROR, align 8
  store i64 %111, i64* %3, align 8
  br label %310

112:                                              ; preds = %103
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 2
  %117 = call i32 @ngx_str_set(%struct.TYPE_20__* %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = call %struct.TYPE_17__** @ngx_array_push(%struct.TYPE_15__* %120)
  store %struct.TYPE_17__** %121, %struct.TYPE_17__*** %16, align 8
  %122 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %16, align 8
  %123 = icmp eq %struct.TYPE_17__** %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %112
  %125 = load i64, i64* @NGX_ERROR, align 8
  store i64 %125, i64* %3, align 8
  br label %310

126:                                              ; preds = %112
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %128 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %16, align 8
  store %struct.TYPE_17__* %127, %struct.TYPE_17__** %128, align 8
  br label %151

129:                                              ; preds = %78
  store i64 1, i64* %13, align 8
  br label %130

130:                                              ; preds = %144, %129
  %131 = load i64, i64* %13, align 8
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ult i64 %131, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %130
  %139 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %16, align 8
  %140 = load i64, i64* %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %139, i64 %140
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  store i32 0, i32* %143, align 8
  br label %144

144:                                              ; preds = %138
  %145 = load i64, i64* %13, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %13, align 8
  br label %130

147:                                              ; preds = %130
  %148 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %148, i64 0
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %149, align 8
  store %struct.TYPE_17__* %150, %struct.TYPE_17__** %15, align 8
  br label %151

151:                                              ; preds = %147, %126
  %152 = load i64, i64* %17, align 8
  %153 = load i64, i64* @NGX_HTTP_EXPIRES_EPOCH, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %163

155:                                              ; preds = %151
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 1
  store i32* bitcast ([30 x i8]* @.str.2 to i32*), i32** %158, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = call i32 @ngx_str_set(%struct.TYPE_20__* %160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %162 = load i64, i64* @NGX_OK, align 8
  store i64 %162, i64* %3, align 8
  br label %310

163:                                              ; preds = %151
  %164 = load i64, i64* %17, align 8
  %165 = load i64, i64* @NGX_HTTP_EXPIRES_MAX, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %163
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 1
  store i32* bitcast ([30 x i8]* @.str.4 to i32*), i32** %170, align 8
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 1
  %173 = call i32 @ngx_str_set(%struct.TYPE_20__* %172, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %174 = load i64, i64* @NGX_OK, align 8
  store i64 %174, i64* %3, align 8
  br label %310

175:                                              ; preds = %163
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i64, i64* %7, align 8
  %180 = trunc i64 %179 to i32
  %181 = call i8* @ngx_pnalloc(i32 %178, i32 %180)
  %182 = bitcast i8* %181 to i32*
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 1
  store i32* %182, i32** %185, align 8
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = icmp eq i32* %189, null
  br i1 %190, label %191, label %193

191:                                              ; preds = %175
  %192 = load i64, i64* @NGX_ERROR, align 8
  store i64 %192, i64* %3, align 8
  br label %310

193:                                              ; preds = %175
  %194 = load i64, i64* %9, align 8
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %213

196:                                              ; preds = %193
  %197 = load i64, i64* %17, align 8
  %198 = load i64, i64* @NGX_HTTP_EXPIRES_DAILY, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %213

200:                                              ; preds = %196
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ngx_cached_http_time, i32 0, i32 1), align 8
  %206 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ngx_cached_http_time, i32 0, i32 0), align 8
  %207 = add nsw i64 %206, 1
  %208 = call i32 @ngx_memcpy(i32* %204, i32 %205, i64 %207)
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 1
  %211 = call i32 @ngx_str_set(%struct.TYPE_20__* %210, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %212 = load i64, i64* @NGX_OK, align 8
  store i64 %212, i64* %3, align 8
  br label %310

213:                                              ; preds = %196, %193
  %214 = call i64 (...) @ngx_time()
  store i64 %214, i64* %8, align 8
  %215 = load i64, i64* %17, align 8
  %216 = load i64, i64* @NGX_HTTP_EXPIRES_DAILY, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %213
  %219 = load i64, i64* %9, align 8
  %220 = call i64 @ngx_next_time(i64 %219)
  store i64 %220, i64* %9, align 8
  %221 = load i64, i64* %9, align 8
  %222 = load i64, i64* %8, align 8
  %223 = sub nsw i64 %221, %222
  store i64 %223, i64* %10, align 8
  br label %251

224:                                              ; preds = %213
  %225 = load i64, i64* %17, align 8
  %226 = load i64, i64* @NGX_HTTP_EXPIRES_ACCESS, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %234, label %228

228:                                              ; preds = %224
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp eq i32 %232, -1
  br i1 %233, label %234, label %239

234:                                              ; preds = %228, %224
  %235 = load i64, i64* %9, align 8
  store i64 %235, i64* %10, align 8
  %236 = load i64, i64* %8, align 8
  %237 = load i64, i64* %9, align 8
  %238 = add nsw i64 %237, %236
  store i64 %238, i64* %9, align 8
  br label %250

239:                                              ; preds = %228
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = sext i32 %243 to i64
  %245 = load i64, i64* %9, align 8
  %246 = add nsw i64 %245, %244
  store i64 %246, i64* %9, align 8
  %247 = load i64, i64* %9, align 8
  %248 = load i64, i64* %8, align 8
  %249 = sub nsw i64 %247, %248
  store i64 %249, i64* %10, align 8
  br label %250

250:                                              ; preds = %239, %234
  br label %251

251:                                              ; preds = %250, %218
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = load i64, i64* %9, align 8
  %257 = call i32 @ngx_http_time(i32* %255, i64 %256)
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = icmp slt i64 %260, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %251
  %263 = load i64, i64* %10, align 8
  %264 = icmp slt i64 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %262, %251
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 1
  %268 = call i32 @ngx_str_set(%struct.TYPE_20__* %267, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %269 = load i64, i64* @NGX_OK, align 8
  store i64 %269, i64* %3, align 8
  br label %310

270:                                              ; preds = %262
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @NGX_TIME_T_LEN, align 4
  %275 = sext i32 %274 to i64
  %276 = add i64 9, %275
  %277 = add i64 %276, 1
  %278 = trunc i64 %277 to i32
  %279 = call i8* @ngx_pnalloc(i32 %273, i32 %278)
  %280 = bitcast i8* %279 to i32*
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %282, i32 0, i32 1
  store i32* %280, i32** %283, align 8
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %285, i32 0, i32 1
  %287 = load i32*, i32** %286, align 8
  %288 = icmp eq i32* %287, null
  br i1 %288, label %289, label %291

289:                                              ; preds = %270
  %290 = load i64, i64* @NGX_ERROR, align 8
  store i64 %290, i64* %3, align 8
  br label %310

291:                                              ; preds = %270
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %293, i32 0, i32 1
  %295 = load i32*, i32** %294, align 8
  %296 = load i64, i64* %10, align 8
  %297 = call i32* @ngx_sprintf(i32* %295, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i64 %296)
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 1
  %301 = load i32*, i32** %300, align 8
  %302 = ptrtoint i32* %297 to i64
  %303 = ptrtoint i32* %301 to i64
  %304 = sub i64 %302, %303
  %305 = sdiv exact i64 %304, 4
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %307, i32 0, i32 0
  store i64 %305, i64* %308, align 8
  %309 = load i64, i64* @NGX_OK, align 8
  store i64 %309, i64* %3, align 8
  br label %310

310:                                              ; preds = %291, %289, %265, %200, %191, %167, %155, %124, %110, %101, %66, %49, %43, %36
  %311 = load i64, i64* %3, align 8
  ret i64 %311
}

declare dso_local i64 @ngx_http_complex_value(%struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i64 @ngx_http_parse_expires(i32*, i64*, i64*, i8**) #1

declare dso_local %struct.TYPE_17__* @ngx_list_push(i32*) #1

declare dso_local i32 @ngx_str_set(%struct.TYPE_20__*, i8*) #1

declare dso_local i64 @ngx_array_init(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_17__** @ngx_array_push(%struct.TYPE_15__*) #1

declare dso_local i8* @ngx_pnalloc(i32, i32) #1

declare dso_local i32 @ngx_memcpy(i32*, i32, i64) #1

declare dso_local i64 @ngx_time(...) #1

declare dso_local i64 @ngx_next_time(i64) #1

declare dso_local i32 @ngx_http_time(i32*, i64) #1

declare dso_local i32* @ngx_sprintf(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
