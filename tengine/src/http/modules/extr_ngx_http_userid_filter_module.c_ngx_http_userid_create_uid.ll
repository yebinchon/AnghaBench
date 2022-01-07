; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_userid_filter_module.c_ngx_http_userid_create_uid.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_userid_filter_module.c_ngx_http_userid_create_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i64*, i64*, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i8* }
%struct.TYPE_22__ = type { i8, i64, i64, i32 }
%struct.sockaddr_in = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32*, i64 }

@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_userid_reset_index = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"log\00", align 1
@NGX_LOG_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"userid cookie \22%V=%08XD%08XD%08XD%08XD\22 was reset\00", align 1
@NGX_HTTP_USERID_V1 = common dso_local global i64 0, align 8
@NGX_CONF_UNSET = common dso_local global i64 0, align 8
@start_value = common dso_local global i32 0, align 4
@sequencer_v1 = common dso_local global i32 0, align 4
@sequencer_v2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_23__*, %struct.TYPE_21__*, %struct.TYPE_22__*)* @ngx_http_userid_create_uid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_userid_create_uid(%struct.TYPE_23__* %0, %struct.TYPE_21__* %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %7, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @NGX_OK, align 8
  store i64 %18, i64* %4, align 8
  br label %301

19:                                               ; preds = %3
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %175

26:                                               ; preds = %19
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %28 = load i32, i32* @ngx_http_userid_reset_index, align 4
  %29 = call %struct.TYPE_20__* @ngx_http_get_indexed_variable(%struct.TYPE_23__* %27, i32 %28)
  store %struct.TYPE_20__* %29, %struct.TYPE_20__** %10, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %31 = icmp eq %struct.TYPE_20__* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %26
  %38 = load i64, i64* @NGX_ERROR, align 8
  store i64 %38, i64* %4, align 8
  br label %301

39:                                               ; preds = %32
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %130

49:                                               ; preds = %44
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 48
  br i1 %55, label %56, label %130

56:                                               ; preds = %49, %39
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 8
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %90, label %62

62:                                               ; preds = %56
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 23
  br i1 %67, label %68, label %92

68:                                               ; preds = %62
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 22
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  %78 = load i8, i8* %77, align 8
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %75, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %68
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 23
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 61
  br i1 %89, label %90, label %92

90:                                               ; preds = %81, %56
  %91 = load i64, i64* @NGX_OK, align 8
  store i64 %91, i64* %4, align 8
  br label %301

92:                                               ; preds = %81, %68, %62
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  store i64 %97, i64* %101, align 8
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 1
  store i64 %106, i64* %110, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 2
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 2
  store i64 %115, i64* %119, align 8
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 3
  store i64 %124, i64* %128, align 8
  %129 = load i64, i64* @NGX_OK, align 8
  store i64 %129, i64* %4, align 8
  br label %301

130:                                              ; preds = %49, %44
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 2
  store i32 1, i32* %132, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 3
  br i1 %136, label %137, label %173

137:                                              ; preds = %130
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = call i64 @ngx_strncmp(i32* %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %173

143:                                              ; preds = %137
  %144 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 3
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 1
  %154 = load i64*, i64** %153, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 1
  %159 = load i64*, i64** %158, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 1
  %164 = load i64*, i64** %163, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 2
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 1
  %169 = load i64*, i64** %168, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 3
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @ngx_log_error(i32 %144, i32 %149, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32* %151, i64 %156, i64 %161, i64 %166, i64 %171)
  br label %173

173:                                              ; preds = %143, %137, %130
  br label %174

174:                                              ; preds = %173
  br label %175

175:                                              ; preds = %174, %19
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @NGX_HTTP_USERID_V1, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %222

181:                                              ; preds = %175
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @NGX_CONF_UNSET, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %181
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 0
  %190 = load i64*, i64** %189, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 0
  store i64 0, i64* %191, align 8
  br label %200

192:                                              ; preds = %181
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 0
  %198 = load i64*, i64** %197, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 0
  store i64 %195, i64* %199, align 8
  br label %200

200:                                              ; preds = %192, %187
  %201 = call i64 (...) @ngx_time()
  %202 = trunc i64 %201 to i32
  %203 = sext i32 %202 to i64
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 0
  %206 = load i64*, i64** %205, align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 1
  store i64 %203, i64* %207, align 8
  %208 = load i32, i32* @start_value, align 4
  %209 = sext i32 %208 to i64
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 0
  %212 = load i64*, i64** %211, align 8
  %213 = getelementptr inbounds i64, i64* %212, i64 2
  store i64 %209, i64* %213, align 8
  %214 = load i32, i32* @sequencer_v1, align 4
  %215 = sext i32 %214 to i64
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 0
  %218 = load i64*, i64** %217, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 3
  store i64 %215, i64* %219, align 8
  %220 = load i32, i32* @sequencer_v1, align 4
  %221 = add nsw i32 %220, 256
  store i32 %221, i32* @sequencer_v1, align 4
  br label %299

222:                                              ; preds = %175
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @NGX_CONF_UNSET, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %259

228:                                              ; preds = %222
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %230, align 8
  store %struct.TYPE_24__* %231, %struct.TYPE_24__** %8, align 8
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %233 = call i64 @ngx_connection_local_sockaddr(%struct.TYPE_24__* %232, i32* null, i32 0)
  %234 = load i64, i64* @NGX_OK, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %228
  %237 = load i64, i64* @NGX_ERROR, align 8
  store i64 %237, i64* %4, align 8
  br label %301

238:                                              ; preds = %228
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  switch i32 %243, label %244 [
  ]

244:                                              ; preds = %238
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %246, align 8
  %248 = bitcast %struct.TYPE_18__* %247 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %248, %struct.sockaddr_in** %9, align 8
  %249 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %250 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %252 to i64
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 0
  %256 = load i64*, i64** %255, align 8
  %257 = getelementptr inbounds i64, i64* %256, i64 0
  store i64 %253, i64* %257, align 8
  br label %258

258:                                              ; preds = %244
  br label %270

259:                                              ; preds = %222
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = trunc i64 %262 to i32
  %264 = call i8* @htonl(i32 %263)
  %265 = ptrtoint i8* %264 to i64
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 0
  %268 = load i64*, i64** %267, align 8
  %269 = getelementptr inbounds i64, i64* %268, i64 0
  store i64 %265, i64* %269, align 8
  br label %270

270:                                              ; preds = %259, %258
  %271 = call i64 (...) @ngx_time()
  %272 = trunc i64 %271 to i32
  %273 = call i8* @htonl(i32 %272)
  %274 = ptrtoint i8* %273 to i64
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 0
  %277 = load i64*, i64** %276, align 8
  %278 = getelementptr inbounds i64, i64* %277, i64 1
  store i64 %274, i64* %278, align 8
  %279 = load i32, i32* @start_value, align 4
  %280 = call i8* @htonl(i32 %279)
  %281 = ptrtoint i8* %280 to i64
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i32 0, i32 0
  %284 = load i64*, i64** %283, align 8
  %285 = getelementptr inbounds i64, i64* %284, i64 2
  store i64 %281, i64* %285, align 8
  %286 = load i32, i32* @sequencer_v2, align 4
  %287 = call i8* @htonl(i32 %286)
  %288 = ptrtoint i8* %287 to i64
  %289 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %289, i32 0, i32 0
  %291 = load i64*, i64** %290, align 8
  %292 = getelementptr inbounds i64, i64* %291, i64 3
  store i64 %288, i64* %292, align 8
  %293 = load i32, i32* @sequencer_v2, align 4
  %294 = add nsw i32 %293, 256
  store i32 %294, i32* @sequencer_v2, align 4
  %295 = load i32, i32* @sequencer_v2, align 4
  %296 = icmp slt i32 %295, 50529026
  br i1 %296, label %297, label %298

297:                                              ; preds = %270
  store i32 50529026, i32* @sequencer_v2, align 4
  br label %298

298:                                              ; preds = %297, %270
  br label %299

299:                                              ; preds = %298, %200
  %300 = load i64, i64* @NGX_OK, align 8
  store i64 %300, i64* %4, align 8
  br label %301

301:                                              ; preds = %299, %236, %92, %90, %37, %17
  %302 = load i64, i64* %4, align 8
  ret i64 %302
}

declare dso_local %struct.TYPE_20__* @ngx_http_get_indexed_variable(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @ngx_strncmp(i32*, i8*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*, i64, i64, i64, i64) #1

declare dso_local i64 @ngx_time(...) #1

declare dso_local i64 @ngx_connection_local_sockaddr(%struct.TYPE_24__*, i32*, i32) #1

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
