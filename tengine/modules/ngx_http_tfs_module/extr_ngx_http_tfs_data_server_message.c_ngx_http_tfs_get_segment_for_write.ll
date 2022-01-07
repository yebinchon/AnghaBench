; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_get_segment_for_write.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_get_segment_for_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__, i32, i32, %struct.TYPE_17__, i64, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_23__*, i64, i64 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_21__*, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_22__*, %struct.TYPE_21__* }
%struct.TYPE_22__ = type { i64, i64, i64, i64, i64 }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_MAX_FRAGMENT_SIZE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_APPEND_OFFSET = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"prepare segment[%i]'s data\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"zero body buf\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"prepare segment data[%i] failed for early end.\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"pos: %uD, last: %uD, size: %z\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"pos: %O, last: %O, size: %z\00", align 1
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_tfs_get_segment_for_write(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_21__**, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %19 = icmp eq %struct.TYPE_21__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @NGX_ERROR, align 4
  store i32 %21, i32* %2, align 4
  br label %380

22:                                               ; preds = %1
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  store %struct.TYPE_21__* %25, %struct.TYPE_21__** %13, align 8
  store i64 0, i64* %7, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %27 = call i64 @ngx_http_tfs_get_chain_buf_size(%struct.TYPE_21__* %26)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @NGX_HTTP_TFS_MAX_FRAGMENT_SIZE, align 8
  %34 = add i64 %32, %33
  %35 = sub i64 %34, 1
  %36 = load i64, i64* @NGX_HTTP_TFS_MAX_FRAGMENT_SIZE, align 8
  %37 = udiv i64 %35, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  store i64 %42, i64* %6, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %45, align 8
  %47 = icmp eq %struct.TYPE_23__* %46, null
  br i1 %47, label %48, label %65

48:                                               ; preds = %22
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call %struct.TYPE_23__* @ngx_pcalloc(i32 %51, i64 %52)
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 2
  store %struct.TYPE_23__* %53, %struct.TYPE_23__** %56, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %59, align 8
  %61 = icmp eq %struct.TYPE_23__* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %48
  %63 = load i32, i32* @NGX_ERROR, align 4
  store i32 %63, i32* %2, align 4
  br label %380

64:                                               ; preds = %48
  br label %65

65:                                               ; preds = %64, %22
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 4
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %65
  store i64 0, i64* %7, align 8
  br label %93

81:                                               ; preds = %65
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %7, align 8
  br label %92

92:                                               ; preds = %87, %81
  br label %93

93:                                               ; preds = %92, %80
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %375, %93
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %378

98:                                               ; preds = %94
  %99 = load i64, i64* %7, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  store i64 %99, i64* %108, align 8
  %109 = load i64, i64* %4, align 8
  %110 = load i64, i64* @NGX_HTTP_TFS_MAX_FRAGMENT_SIZE, align 8
  %111 = call i8* @ngx_min(i64 %109, i64 %110)
  %112 = ptrtoint i8* %111 to i64
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  store i64 %112, i64* %121, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 0
  store i64 %131, i64* %139, align 8
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %98
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %150, label %158

150:                                              ; preds = %144
  %151 = load i64, i64* %7, align 8
  %152 = load i64, i64* @NGX_HTTP_TFS_APPEND_OFFSET, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %150, %98
  %155 = load i64, i64* @NGX_HTTP_TFS_MAX_FRAGMENT_SIZE, align 8
  %156 = load i64, i64* %7, align 8
  %157 = add i64 %156, %155
  store i64 %157, i64* %7, align 8
  br label %158

158:                                              ; preds = %154, %150, %144
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %4, align 8
  %170 = sub i64 %169, %168
  store i64 %170, i64* %4, align 8
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %8, align 8
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %183, align 8
  %185 = load i32, i32* %10, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 1
  store %struct.TYPE_21__** %188, %struct.TYPE_21__*** %15, align 8
  %189 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %10, align 4
  %194 = call i32 @ngx_log_debug1(i32 %189, i32 %192, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %343, %158
  %196 = load i64, i64* %8, align 8
  %197 = icmp ugt i64 %196, 0
  br i1 %197, label %198, label %347

198:                                              ; preds = %195
  br label %199

199:                                              ; preds = %210, %198
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %201 = icmp ne %struct.TYPE_21__* %200, null
  br i1 %201, label %202, label %208

202:                                              ; preds = %199
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %204, align 8
  %206 = call i64 @ngx_buf_size(%struct.TYPE_22__* %205)
  %207 = icmp eq i64 %206, 0
  br label %208

208:                                              ; preds = %202, %199
  %209 = phi i1 [ false, %199 ], [ %207, %202 ]
  br i1 %209, label %210, label %219

210:                                              ; preds = %208
  %211 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @ngx_log_debug0(i32 %211, i32 %214, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %217, align 8
  store %struct.TYPE_21__* %218, %struct.TYPE_21__** %13, align 8
  br label %199

219:                                              ; preds = %208
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %221 = icmp eq %struct.TYPE_21__* %220, null
  br i1 %221, label %222, label %230

222:                                              ; preds = %219
  %223 = load i32, i32* @NGX_LOG_ERR, align 4
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %10, align 4
  %228 = call i32 @ngx_log_error(i32 %223, i32 %226, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* @NGX_ERROR, align 4
  store i32 %229, i32* %2, align 4
  br label %380

230:                                              ; preds = %219
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %232, align 8
  %234 = call i64 @ngx_buf_size(%struct.TYPE_22__* %233)
  %235 = load i64, i64* %8, align 8
  %236 = call i8* @ngx_min(i64 %234, i64 %235)
  %237 = ptrtoint i8* %236 to i64
  store i64 %237, i64* %5, align 8
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = call %struct.TYPE_22__* @ngx_alloc_buf(i32 %240)
  store %struct.TYPE_22__* %241, %struct.TYPE_22__** %12, align 8
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %243 = icmp eq %struct.TYPE_22__* %242, null
  br i1 %243, label %244, label %246

244:                                              ; preds = %230
  %245 = load i32, i32* @NGX_ERROR, align 4
  store i32 %245, i32* %2, align 4
  br label %380

246:                                              ; preds = %230
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %249, align 8
  %251 = call i32 @ngx_memcpy(%struct.TYPE_22__* %247, %struct.TYPE_22__* %250, i32 40)
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %253 = call i64 @ngx_buf_in_memory(%struct.TYPE_22__* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %283

255:                                              ; preds = %246
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* %5, align 8
  %260 = add i64 %258, %259
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 0
  store i64 %260, i64* %262, align 8
  %263 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = sub i64 %269, %272
  %274 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = sub i64 %276, %279
  %281 = load i64, i64* %5, align 8
  %282 = call i32 @ngx_log_debug3(i32 %263, i32 %266, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %273, i64 %280, i64 %281)
  br label %303

283:                                              ; preds = %246
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i32 0, i32 4
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* %5, align 8
  %288 = add i64 %286, %287
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %289, i32 0, i32 3
  store i64 %288, i64* %290, align 8
  %291 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %295, i32 0, i32 4
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %299 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %298, i32 0, i32 3
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* %5, align 8
  %302 = call i32 @ngx_log_debug3(i32 %291, i32 %294, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %297, i64 %300, i64 %301)
  br label %303

303:                                              ; preds = %283, %255
  %304 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = call %struct.TYPE_21__* @ngx_alloc_chain_link(i32 %306)
  store %struct.TYPE_21__* %307, %struct.TYPE_21__** %14, align 8
  %308 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %309 = icmp eq %struct.TYPE_21__* %308, null
  br i1 %309, label %310, label %312

310:                                              ; preds = %303
  %311 = load i32, i32* @NGX_ERROR, align 4
  store i32 %311, i32* %2, align 4
  br label %380

312:                                              ; preds = %303
  %313 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %314 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %315 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %314, i32 0, i32 0
  store %struct.TYPE_22__* %313, %struct.TYPE_22__** %315, align 8
  %316 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %317 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %316, i32 0, i32 1
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %317, align 8
  %318 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %319 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %15, align 8
  store %struct.TYPE_21__* %318, %struct.TYPE_21__** %319, align 8
  %320 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %321 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %320, i32 0, i32 1
  store %struct.TYPE_21__** %321, %struct.TYPE_21__*** %15, align 8
  %322 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %323 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_22__*, %struct.TYPE_22__** %323, align 8
  %325 = call i64 @ngx_buf_in_memory(%struct.TYPE_22__* %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %335

327:                                              ; preds = %312
  %328 = load i64, i64* %5, align 8
  %329 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %330 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %329, i32 0, i32 0
  %331 = load %struct.TYPE_22__*, %struct.TYPE_22__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = add i64 %333, %328
  store i64 %334, i64* %332, align 8
  br label %343

335:                                              ; preds = %312
  %336 = load i64, i64* %5, align 8
  %337 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %338 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %337, i32 0, i32 0
  %339 = load %struct.TYPE_22__*, %struct.TYPE_22__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %339, i32 0, i32 4
  %341 = load i64, i64* %340, align 8
  %342 = add i64 %341, %336
  store i64 %342, i64* %340, align 8
  br label %343

343:                                              ; preds = %335, %327
  %344 = load i64, i64* %5, align 8
  %345 = load i64, i64* %8, align 8
  %346 = sub i64 %345, %344
  store i64 %346, i64* %8, align 8
  br label %195

347:                                              ; preds = %195
  %348 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %352, i32 0, i32 2
  %354 = load %struct.TYPE_23__*, %struct.TYPE_23__** %353, align 8
  %355 = load i32, i32* %10, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %357, i32 0, i32 2
  %359 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %360, i32 0, i32 2
  %362 = load %struct.TYPE_23__*, %struct.TYPE_23__** %361, align 8
  %363 = load i32, i32* %10, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %362, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %365, i32 0, i32 1
  %367 = load %struct.TYPE_21__*, %struct.TYPE_21__** %366, align 8
  %368 = call i32 @ngx_chain_add_copy_with_buf(i32 %350, i32* %358, %struct.TYPE_21__* %367)
  store i32 %368, i32* %11, align 4
  %369 = load i32, i32* %11, align 4
  %370 = load i32, i32* @NGX_ERROR, align 4
  %371 = icmp eq i32 %369, %370
  br i1 %371, label %372, label %374

372:                                              ; preds = %347
  %373 = load i32, i32* @NGX_ERROR, align 4
  store i32 %373, i32* %2, align 4
  br label %380

374:                                              ; preds = %347
  br label %375

375:                                              ; preds = %374
  %376 = load i32, i32* %10, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %10, align 4
  br label %94

378:                                              ; preds = %94
  %379 = load i32, i32* @NGX_OK, align 4
  store i32 %379, i32* %2, align 4
  br label %380

380:                                              ; preds = %378, %372, %310, %244, %222, %62, %20
  %381 = load i32, i32* %2, align 4
  ret i32 %381
}

declare dso_local i64 @ngx_http_tfs_get_chain_buf_size(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_23__* @ngx_pcalloc(i32, i64) #1

declare dso_local i8* @ngx_min(i64, i64) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @ngx_buf_size(%struct.TYPE_22__*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

declare dso_local %struct.TYPE_22__* @ngx_alloc_buf(i32) #1

declare dso_local i32 @ngx_memcpy(%struct.TYPE_22__*, %struct.TYPE_22__*, i32) #1

declare dso_local i64 @ngx_buf_in_memory(%struct.TYPE_22__*) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i64, i64, i64) #1

declare dso_local %struct.TYPE_21__* @ngx_alloc_chain_link(i32) #1

declare dso_local i32 @ngx_chain_add_copy_with_buf(i32, i32*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
