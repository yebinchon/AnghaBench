; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_get_segment_for_read.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_get_segment_for_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, i32, %struct.TYPE_14__, i32, %struct.TYPE_18__*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_19__*, i64, i64 }
%struct.TYPE_19__ = type { i64, i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32*, i64 }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_MAX_SIZE = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"seg_count in seg_head larger than max seg_count, %uD > %uD, seg_head may be corrupted.\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_tfs_get_segment_for_read(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = icmp eq %struct.TYPE_13__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @NGX_ERROR, align 4
  store i32 %22, i32* %2, align 4
  br label %312

23:                                               ; preds = %1
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 5
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  store %struct.TYPE_20__* %28, %struct.TYPE_20__** %13, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %30 = icmp eq %struct.TYPE_20__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @NGX_ERROR, align 4
  store i32 %32, i32* %2, align 4
  br label %312

33:                                               ; preds = %23
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %35 = call i32 @ngx_buf_size(%struct.TYPE_20__* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %37, 32
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @NGX_ERROR, align 4
  store i32 %40, i32* %2, align 4
  br label %312

41:                                               ; preds = %33
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.TYPE_18__*
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 4
  store %struct.TYPE_18__* %45, %struct.TYPE_18__** %47, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 16
  %52 = inttoptr i64 %51 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %52, %struct.TYPE_17__** %14, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NGX_HTTP_TFS_MAX_SIZE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %41
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %10, align 8
  br label %70

65:                                               ; preds = %41
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %10, align 8
  br label %70

70:                                               ; preds = %65, %59
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %10, align 8
  %77 = add nsw i64 %75, %76
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %78, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %70
  %86 = load i32, i32* @NGX_DONE, align 4
  store i32 %86, i32* %2, align 4
  br label %312

87:                                               ; preds = %70
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %5, align 4
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %97 = bitcast %struct.TYPE_17__* %96 to i32*
  %98 = ptrtoint i32* %95 to i64
  %99 = ptrtoint i32* %97 to i64
  %100 = sub i64 %98, %99
  %101 = sdiv exact i64 %100, 4
  %102 = udiv i64 %101, 16
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %6, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %87
  %112 = load i32, i32* @NGX_LOG_ERR, align 4
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @ngx_log_error(i32 %112, i32 %115, i32 0, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %120, i32 %121)
  %123 = load i32, i32* %6, align 4
  %124 = sub nsw i32 %123, 1
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %111, %87
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %128 = load i64, i64* %8, align 8
  %129 = call i64 @ngx_http_tfs_find_segment(i32 %126, %struct.TYPE_17__* %127, i64 %128)
  store i64 %129, i64* %11, align 8
  %130 = load i64, i64* %11, align 8
  %131 = icmp ult i64 %130, 0
  br i1 %131, label %132, label %152

132:                                              ; preds = %125
  %133 = load i64, i64* %11, align 8
  %134 = sub i64 0, %133
  %135 = sub i64 %134, 1
  store i64 %135, i64* %11, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %137 = load i64, i64* %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %142 = load i64, i64* %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %140, %145
  %147 = load i64, i64* %8, align 8
  %148 = icmp sle i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %132
  %150 = load i32, i32* @NGX_ERROR, align 4
  store i32 %150, i32* %2, align 4
  br label %312

151:                                              ; preds = %132
  br label %152

152:                                              ; preds = %151, %125
  %153 = load i32, i32* %5, align 4
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %155 = load i64, i64* %9, align 8
  %156 = call i64 @ngx_http_tfs_find_segment(i32 %153, %struct.TYPE_17__* %154, i64 %155)
  store i64 %156, i64* %12, align 8
  %157 = load i64, i64* %12, align 8
  %158 = icmp ugt i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %152
  %160 = load i64, i64* %12, align 8
  %161 = sub i64 %160, 1
  store i64 %161, i64* %12, align 8
  br label %172

162:                                              ; preds = %152
  %163 = load i64, i64* %12, align 8
  %164 = icmp ult i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load i64, i64* %12, align 8
  %167 = sub i64 0, %166
  %168 = sub i64 %167, 1
  store i64 %168, i64* %12, align 8
  br label %171

169:                                              ; preds = %162
  %170 = load i32, i32* @NGX_ERROR, align 4
  store i32 %170, i32* %2, align 4
  br label %312

171:                                              ; preds = %165
  br label %172

172:                                              ; preds = %171, %159
  %173 = load i64, i64* %12, align 8
  %174 = load i64, i64* %11, align 8
  %175 = sub i64 %173, %174
  %176 = add i64 %175, 1
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %5, align 4
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = mul i64 32, %182
  %184 = trunc i64 %183 to i32
  %185 = call %struct.TYPE_19__* @ngx_pcalloc(i32 %180, i32 %184)
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 1
  store %struct.TYPE_19__* %185, %struct.TYPE_19__** %188, align 8
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %191, align 8
  %193 = icmp eq %struct.TYPE_19__* %192, null
  br i1 %193, label %194, label %196

194:                                              ; preds = %172
  %195 = load i32, i32* @NGX_ERROR, align 4
  store i32 %195, i32* %2, align 4
  br label %312

196:                                              ; preds = %172
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 3
  store i64 0, i64* %199, align 8
  %200 = load i32, i32* %5, align 4
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 0
  store i32 %200, i32* %203, align 8
  %204 = load i64, i64* %10, align 8
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 2
  store i64 %204, i64* %207, align 8
  store i32 0, i32* %7, align 4
  br label %208

208:                                              ; preds = %244, %196
  %209 = load i64, i64* %11, align 8
  %210 = load i64, i64* %12, align 8
  %211 = icmp ule i64 %209, %210
  br i1 %211, label %212, label %249

212:                                              ; preds = %208
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %215, align 8
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 2
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %222 = load i64, i64* %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i64 %222
  %224 = bitcast %struct.TYPE_17__* %220 to i8*
  %225 = bitcast %struct.TYPE_17__* %223 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %224, i8* align 8 %225, i64 16, i1 false)
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %228, align 8
  %230 = load i32, i32* %7, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %238, align 8
  %240 = load i32, i32* %7, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %242, i32 0, i32 0
  store i64 %235, i64* %243, align 8
  br label %244

244:                                              ; preds = %212
  %245 = load i32, i32* %7, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %7, align 4
  %247 = load i64, i64* %11, align 8
  %248 = add i64 %247, 1
  store i64 %248, i64* %11, align 8
  br label %208

249:                                              ; preds = %208
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i64 0
  store %struct.TYPE_19__* %254, %struct.TYPE_19__** %15, align 8
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 1
  store i64 %258, i64* %260, align 8
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = icmp sgt i64 %264, 0
  br i1 %265, label %266, label %275

266:                                              ; preds = %249
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = sub nsw i64 %273, %270
  store i64 %274, i64* %272, align 8
  br label %275

275:                                              ; preds = %266, %249
  %276 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %277 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = sub nsw i64 %279, %282
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 0
  store i64 %283, i64* %285, align 8
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_19__*, %struct.TYPE_19__** %288, align 8
  %290 = load i32, i32* %5, align 4
  %291 = sub nsw i32 %290, 1
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %289, i64 %292
  store %struct.TYPE_19__* %293, %struct.TYPE_19__** %16, align 8
  %294 = load i64, i64* %9, align 8
  %295 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %296 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = add nsw i64 %298, %301
  %303 = sub nsw i64 %294, %302
  %304 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = call i64 @ngx_min(i64 %303, i64 %307)
  %309 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 0
  store i64 %308, i64* %310, align 8
  %311 = load i32, i32* @NGX_OK, align 4
  store i32 %311, i32* %2, align 4
  br label %312

312:                                              ; preds = %275, %194, %169, %149, %85, %39, %31, %21
  %313 = load i32, i32* %2, align 4
  ret i32 %313
}

declare dso_local i32 @ngx_buf_size(%struct.TYPE_20__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @ngx_http_tfs_find_segment(i32, %struct.TYPE_17__*, i64) #1

declare dso_local %struct.TYPE_19__* @ngx_pcalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
