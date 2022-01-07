; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_server_handler.c_ngx_http_tfs_process_ds_input_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_server_handler.c_ngx_http_tfs_process_ds_input_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64, i32, %struct.TYPE_20__, i32*, %struct.TYPE_18__, i32, i32, i32, %struct.TYPE_23__*, i64 }
%struct.TYPE_20__ = type { i64, i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i64 }

@NGX_HTTP_TFS_STATUS_MESSAGE = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_EXIT_NO_LOGICBLOCK_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_EXIT_INVALID_ARGU_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_EXIT_READ_OFFSET_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_EXIT_PHYSIC_BLOCK_OFFSET_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"read file(block id: %uD, file id: %uL) from (%s) fail, error code: %D, will retry\00", align 1
@NGX_HTTP_TFS_AGAIN = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_STATE_READ_DONE = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"read len is 0\00", align 1
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_IMAGE_TYPE_SIZE = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"unknown content type\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"read len is %O, data len is %D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_tfs_process_ds_input_filter(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 10
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %14, %struct.TYPE_24__** %10, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @NGX_HTTP_TFS_STATUS_MESSAGE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub i64 %26, 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* @NGX_OK, align 8
  store i64 %30, i64* %2, align 8
  br label %249

31:                                               ; preds = %1
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i64 %39
  store %struct.TYPE_22__* %40, %struct.TYPE_22__** %8, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 9
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %42, align 8
  store %struct.TYPE_23__* %43, %struct.TYPE_23__** %9, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 1
  store %struct.TYPE_25__* %45, %struct.TYPE_25__** %7, align 8
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %117

50:                                               ; preds = %31
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @NGX_HTTP_TFS_EXIT_NO_LOGICBLOCK_ERROR, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %59 = call i32 @ngx_http_tfs_remove_block_cache(%struct.TYPE_21__* %57, %struct.TYPE_22__* %58)
  br label %70

60:                                               ; preds = %50
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, -22
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @NGX_HTTP_TFS_EXIT_INVALID_ARGU_ERROR, align 4
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %65, %60
  br label %70

70:                                               ; preds = %69, %56
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @NGX_HTTP_TFS_EXIT_READ_OFFSET_ERROR, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %88, label %76

76:                                               ; preds = %70
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @NGX_HTTP_TFS_EXIT_INVALID_ARGU_ERROR, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @NGX_HTTP_TFS_EXIT_PHYSIC_BLOCK_OFFSET_ERROR, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %82, %76, %70
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %2, align 8
  br label %249

93:                                               ; preds = %82
  %94 = load i32, i32* @NGX_LOG_ERR, align 4
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = call i32 @ngx_log_error(i32 %94, i32 %97, i32 0, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %105, i32 %108, i64 %112)
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %115 = call i32 @ngx_http_tfs_clear_buf(%struct.TYPE_25__* %114)
  %116 = load i64, i64* @NGX_HTTP_TFS_AGAIN, align 8
  store i64 %116, i64* %2, align 8
  br label %249

117:                                              ; preds = %31
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %117
  %123 = load i32, i32* @NGX_HTTP_TFS_STATE_READ_DONE, align 4
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 8
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @ngx_log_debug0(i32 %126, i32 %129, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %131 = load i64, i64* @NGX_DONE, align 8
  store i64 %131, i64* %2, align 8
  br label %249

132:                                              ; preds = %117
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* @NGX_HTTP_TFS_IMAGE_TYPE_SIZE, align 8
  %138 = icmp sge i64 %136, %137
  br i1 %138, label %139, label %208

139:                                              ; preds = %132
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %144, %139
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %207

154:                                              ; preds = %149
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %207

159:                                              ; preds = %154, %144
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %162, align 8
  %164 = icmp eq %struct.TYPE_16__* %163, null
  br i1 %164, label %165, label %207

165:                                              ; preds = %159
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %167 = call i64 @ngx_buf_size(%struct.TYPE_25__* %166)
  %168 = load i64, i64* @NGX_HTTP_TFS_IMAGE_TYPE_SIZE, align 8
  %169 = icmp slt i64 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %171, i64* %2, align 8
  br label %249

172:                                              ; preds = %165
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = call %struct.TYPE_16__* @ngx_pcalloc(i32 %175, i32 4)
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  store %struct.TYPE_16__* %176, %struct.TYPE_16__** %179, align 8
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 5
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %182, align 8
  %184 = icmp eq %struct.TYPE_16__* %183, null
  br i1 %184, label %185, label %187

185:                                              ; preds = %172
  %186 = load i64, i64* @NGX_ERROR, align 8
  store i64 %186, i64* %2, align 8
  br label %249

187:                                              ; preds = %172
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = call i64 @ngx_http_tfs_get_content_type(i32 %190, i32* %195)
  store i64 %196, i64* %6, align 8
  %197 = load i64, i64* %6, align 8
  %198 = load i64, i64* @NGX_OK, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %187
  %201 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @ngx_log_debug0(i32 %201, i32 %204, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %206

206:                                              ; preds = %200, %187
  br label %207

207:                                              ; preds = %206, %159, %154, %149
  br label %208

208:                                              ; preds = %207, %132
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = sub i64 %212, 8
  store i64 %213, i64* %5, align 8
  %214 = load i64, i64* %5, align 8
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 1
  store i64 %214, i64* %216, align 8
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 0
  store i64 %220, i64* %222, align 8
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 4
  %225 = load i32*, i32** %224, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %227, label %235

227:                                              ; preds = %208
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = sext i32 %230 to i64
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 1
  store i64 %231, i64* %234, align 8
  br label %235

235:                                              ; preds = %227, %208
  %236 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = sext i32 %245 to i64
  %247 = call i32 @ngx_log_debug2(i32 %236, i32 %239, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %242, i64 %246)
  %248 = load i64, i64* @NGX_OK, align 8
  store i64 %248, i64* %2, align 8
  br label %249

249:                                              ; preds = %235, %185, %170, %122, %93, %88, %22
  %250 = load i64, i64* %2, align 8
  ret i64 %250
}

declare dso_local i32 @ngx_http_tfs_remove_block_cache(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @ngx_http_tfs_clear_buf(%struct.TYPE_25__*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_buf_size(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_16__* @ngx_pcalloc(i32, i32) #1

declare dso_local i64 @ngx_http_tfs_get_content_type(i32, i32*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
