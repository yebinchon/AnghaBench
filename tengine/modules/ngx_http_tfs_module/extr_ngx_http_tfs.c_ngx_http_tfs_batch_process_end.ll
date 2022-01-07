; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_batch_process_end.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_batch_process_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i8*, %struct.TYPE_17__*, %struct.TYPE_16__, %struct.TYPE_15__, i32, i64, i32*, %struct.TYPE_14__, i8*, i64, i32, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"sub process error, rest segment count: %D \00", align 1
@NGX_HTTP_TFS_ACTION_WRITE_FILE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_YES = common dso_local global i8* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_REQUEST_TIME_OUT = common dso_local global i32 0, align 4
@NGX_HTTP_CLIENT_CLOSED_REQUEST = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"batch process segment count: %uD, rest segment count: %D \00", align 1
@NGX_HTTP_TFS_STATE_WRITE_WRITE_MS = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_ACTION_READ_FILE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_STATE_READ_GET_BLK_INFO = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_LOCAL_BLOCK_CACHE = common dso_local global i32 0, align 4
@ngx_http_tfs_module = common dso_local global i32 0, align 4
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_STATE_READ_DONE = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_STATE_READ_GET_FRAG_INFO = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_META_SERVER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_tfs_batch_process_end(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %7 = load i64, i64* @NGX_ERROR, align 8
  store i64 %7, i64* %4, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %96

12:                                               ; preds = %1
  %13 = load i32, i32* @NGX_LOG_ERR, align 4
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 12
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %20, %24
  %26 = call i32 @ngx_log_error(i32 %13, i32 %16, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %65

32:                                               ; preds = %12
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NGX_HTTP_TFS_ACTION_WRITE_FILE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %32
  %41 = load i8*, i8** @NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @NGX_HTTP_TFS_YES, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 10
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %62 = load i64, i64* @NGX_OK, align 8
  %63 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_18__* %61, i64 %62)
  %64 = load i64, i64* @NGX_OK, align 8
  store i64 %64, i64* %2, align 8
  br label %292

65:                                               ; preds = %32, %12
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 13
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 8
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %75 = load i32, i32* @NGX_HTTP_REQUEST_TIME_OUT, align 4
  %76 = call i32 @ngx_http_tfs_finalize_request(i32* %73, %struct.TYPE_18__* %74, i32 %75)
  br label %94

77:                                               ; preds = %65
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 11
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 8
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %87 = load i32, i32* @NGX_HTTP_CLIENT_CLOSED_REQUEST, align 4
  %88 = call i32 @ngx_http_tfs_finalize_request(i32* %85, %struct.TYPE_18__* %86, i32 %87)
  br label %93

89:                                               ; preds = %77
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %91 = load i64, i64* @NGX_ERROR, align 8
  %92 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_18__* %90, i64 %91)
  br label %93

93:                                               ; preds = %89, %82
  br label %94

94:                                               ; preds = %93, %70
  %95 = load i64, i64* @NGX_ERROR, align 8
  store i64 %95, i64* %2, align 8
  br label %292

96:                                               ; preds = %1
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, %99
  store i64 %104, i64* %102, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 4
  store i64 0, i64* %107, align 8
  %108 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 12
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %118, %122
  %124 = call i32 @ngx_log_debug2(i32 %108, i32 %111, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %114, i64 %123)
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @NGX_HTTP_TFS_ACTION_WRITE_FILE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %198

132:                                              ; preds = %96
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %185

138:                                              ; preds = %132
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 7
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %185

143:                                              ; preds = %138
  %144 = load i8*, i8** @NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 2
  store i8* %144, i8** %146, align 8
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 11
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %143
  %152 = load i8*, i8** @NGX_HTTP_TFS_YES, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 10
  store i8* %152, i8** %154, align 8
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  store i64 %158, i64* %161, align 8
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 1
  store i64 0, i64* %164, align 8
  br label %184

165:                                              ; preds = %143
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %183

171:                                              ; preds = %165
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %173 = call i64 @ngx_http_tfs_set_meta_segment_data(%struct.TYPE_18__* %172)
  store i64 %173, i64* %4, align 8
  %174 = load i64, i64* %4, align 8
  %175 = load i64, i64* @NGX_ERROR, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %171
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %179 = load i64, i64* @NGX_ERROR, align 8
  %180 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_18__* %178, i64 %179)
  %181 = load i64, i64* @NGX_ERROR, align 8
  store i64 %181, i64* %2, align 8
  br label %292

182:                                              ; preds = %171
  br label %183

183:                                              ; preds = %182, %165
  br label %184

184:                                              ; preds = %183, %151
  br label %196

185:                                              ; preds = %138, %132
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 5
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %189, 2
  br i1 %190, label %191, label %195

191:                                              ; preds = %185
  %192 = load i8*, i8** @NGX_HTTP_TFS_STATE_WRITE_WRITE_MS, align 8
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 2
  store i8* %192, i8** %194, align 8
  br label %195

195:                                              ; preds = %191, %185
  br label %196

196:                                              ; preds = %195, %184
  %197 = load i64, i64* @NGX_OK, align 8
  store i64 %197, i64* %4, align 8
  br label %287

198:                                              ; preds = %96
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @NGX_HTTP_TFS_ACTION_READ_FILE, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %286

206:                                              ; preds = %198
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp slt i64 %210, %214
  br i1 %215, label %216, label %232

216:                                              ; preds = %206
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = icmp sgt i64 %220, 0
  br i1 %221, label %222, label %232

222:                                              ; preds = %216
  %223 = load i8*, i8** @NGX_HTTP_TFS_STATE_READ_GET_BLK_INFO, align 8
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 2
  store i8* %223, i8** %225, align 8
  %226 = load i32, i32* @NGX_HTTP_TFS_LOCAL_BLOCK_CACHE, align 4
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 9
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 0
  store i32 %226, i32* %229, align 8
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %231 = call i64 @ngx_http_tfs_batch_lookup_block_cache(%struct.TYPE_18__* %230)
  store i64 %231, i64* %2, align 8
  br label %292

232:                                              ; preds = %216, %206
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 8
  %235 = load i32*, i32** %234, align 8
  store i32* %235, i32** %6, align 8
  %236 = load i32*, i32** %6, align 8
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %238 = load i32, i32* @ngx_http_tfs_module, align 4
  %239 = call i32 @ngx_http_set_ctx(i32* %236, %struct.TYPE_18__* %237, i32 %238)
  %240 = load i64, i64* @NGX_DONE, align 8
  store i64 %240, i64* %4, align 8
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 7
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %255

245:                                              ; preds = %232
  %246 = load i8*, i8** @NGX_HTTP_TFS_STATE_READ_DONE, align 8
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 2
  store i8* %246, i8** %248, align 8
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 5
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 6
  store i32 %252, i32* %254, align 8
  br label %255

255:                                              ; preds = %245, %232
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 5
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = icmp eq i32 %259, 2
  br i1 %260, label %261, label %285

261:                                              ; preds = %255
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 4
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %280

267:                                              ; preds = %261
  %268 = load i8*, i8** @NGX_HTTP_TFS_STATE_READ_GET_FRAG_INFO, align 8
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 2
  store i8* %268, i8** %270, align 8
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 3
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %272, align 8
  %274 = load i64, i64* @NGX_HTTP_TFS_META_SERVER, align 8
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 0
  store i32* %276, i32** %5, align 8
  %277 = load i32*, i32** %5, align 8
  %278 = call i32 @ngx_http_tfs_clear_buf(i32* %277)
  %279 = load i64, i64* @NGX_OK, align 8
  store i64 %279, i64* %4, align 8
  br label %284

280:                                              ; preds = %261
  %281 = load i8*, i8** @NGX_HTTP_TFS_STATE_READ_DONE, align 8
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 2
  store i8* %281, i8** %283, align 8
  br label %284

284:                                              ; preds = %280, %267
  br label %285

285:                                              ; preds = %284, %255
  br label %286

286:                                              ; preds = %285, %198
  br label %287

287:                                              ; preds = %286, %196
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %289 = load i64, i64* %4, align 8
  %290 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_18__* %288, i64 %289)
  %291 = load i64, i64* @NGX_OK, align 8
  store i64 %291, i64* %2, align 8
  br label %292

292:                                              ; preds = %287, %222, %177, %94, %40
  %293 = load i64, i64* %2, align 8
  ret i64 %293
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @ngx_http_tfs_finalize_state(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @ngx_http_tfs_finalize_request(i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i64, i64) #1

declare dso_local i64 @ngx_http_tfs_set_meta_segment_data(%struct.TYPE_18__*) #1

declare dso_local i64 @ngx_http_tfs_batch_lookup_block_cache(%struct.TYPE_18__*) #1

declare dso_local i32 @ngx_http_set_ctx(i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_http_tfs_clear_buf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
