; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_parse_read_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_parse_read_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i64, %struct.TYPE_21__, i32, i64, i32, %struct.TYPE_20__*, i32, %struct.TYPE_17__, %struct.TYPE_19__, i32, %struct.TYPE_24__*, i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i8*, i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_22__ = type { i32, i64 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_25__ = type { i64, i32 }

@NGX_HTTP_TFS_STATUS_MESSAGE_OK = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"read data (data server: %s) failed, error code (%d) err_msg(%V)\00", align 1
@NGX_HTTP_TFS_AGAIN = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_READ_V2 = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_READ_V2_TAIL_LEN = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_RAW_FILE_INFO_SIZE = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_23__*)* @ngx_http_tfs_parse_read_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_tfs_parse_read_message(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_22__, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 12
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %19, %struct.TYPE_26__** %14, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 11
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  store %struct.TYPE_24__* %22, %struct.TYPE_24__** %13, align 8
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 1
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %12, align 8
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %65 [
    i32 128, label %30
  ]

30:                                               ; preds = %1
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @NGX_HTTP_TFS_STATUS_MESSAGE_OK, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %30
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 4
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 1
  store i64 %49, i64* %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  br label %53

53:                                               ; preds = %45, %37
  %54 = load i32, i32* @NGX_LOG_ERR, align 4
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 10
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @ngx_log_error(i32 %54, i32 %57, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61, %struct.TYPE_22__* %11)
  br label %63

63:                                               ; preds = %53, %30
  %64 = load i64, i64* @NGX_HTTP_TFS_AGAIN, align 8
  store i64 %64, i64* %2, align 8
  br label %306

65:                                               ; preds = %1
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %67 = call i64 @ngx_buf_size(%struct.TYPE_16__* %66)
  store i64 %67, i64* %4, align 8
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @NGX_HTTP_TFS_READ_V2, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %260

73:                                               ; preds = %65
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ult i64 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %73
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @NGX_HTTP_TFS_READ_V2_TAIL_LEN, align 8
  %83 = icmp ule i64 %81, %82
  br i1 %83, label %84, label %143

84:                                               ; preds = %78, %73
  %85 = load i64, i64* %4, align 8
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = sub i64 %88, %85
  store i64 %89, i64* %87, align 8
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %141

94:                                               ; preds = %84
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 6
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %4, align 8
  %104 = call i8* @ngx_cpymem(i8* %99, i64 %102, i64 %103)
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 6
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  store i8* %104, i8** %108, align 8
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 6
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %114, %struct.TYPE_25__** %15, align 8
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @NGX_HTTP_TFS_RAW_FILE_INFO_SIZE, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %94
  %121 = load i64, i64* @NGX_ERROR, align 8
  store i64 %121, i64* %2, align 8
  br label %306

122:                                              ; preds = %94
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 8
  %127 = call i32 @ngx_http_tfs_wrap_raw_file_info(i32* %124, %struct.TYPE_17__* %126)
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 9
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  %137 = call i8* @ngx_min(i8* %131, i32 %136)
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 9
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  store i8* %137, i8** %140, align 8
  br label %141

141:                                              ; preds = %122, %84
  %142 = load i64, i64* @NGX_OK, align 8
  store i64 %142, i64* %2, align 8
  br label %306

143:                                              ; preds = %78
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %4, align 8
  %148 = sub i64 %146, %147
  store i64 %148, i64* %5, align 8
  %149 = load i64, i64* %5, align 8
  %150 = load i64, i64* @NGX_HTTP_TFS_READ_V2_TAIL_LEN, align 8
  %151 = icmp ult i64 %149, %150
  br i1 %151, label %152, label %238

152:                                              ; preds = %143
  %153 = load i64, i64* @NGX_HTTP_TFS_READ_V2_TAIL_LEN, align 8
  %154 = load i64, i64* %5, align 8
  %155 = sub i64 %153, %154
  store i64 %155, i64* %6, align 8
  %156 = load i64, i64* %6, align 8
  %157 = load i64, i64* %4, align 8
  %158 = sub i64 %157, %156
  store i64 %158, i64* %4, align 8
  %159 = load i64, i64* %6, align 8
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = sub i64 %162, %159
  store i64 %163, i64* %161, align 8
  %164 = load i64, i64* %5, align 8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %199

166:                                              ; preds = %152
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %4, align 8
  %171 = add i64 %169, %170
  %172 = inttoptr i64 %171 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %172, %struct.TYPE_25__** %15, align 8
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @NGX_HTTP_TFS_RAW_FILE_INFO_SIZE, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %166
  %179 = load i64, i64* @NGX_ERROR, align 8
  store i64 %179, i64* %2, align 8
  br label %306

180:                                              ; preds = %166
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 8
  %185 = call i32 @ngx_http_tfs_wrap_raw_file_info(i32* %182, %struct.TYPE_17__* %184)
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 9
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = trunc i64 %193 to i32
  %195 = call i8* @ngx_min(i8* %189, i32 %194)
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 9
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 0
  store i8* %195, i8** %198, align 8
  br label %237

199:                                              ; preds = %152
  %200 = load i64, i64* %5, align 8
  %201 = icmp ugt i64 %200, 0
  br i1 %201, label %202, label %234

202:                                              ; preds = %199
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 8
  %206 = load i64, i64* @NGX_HTTP_TFS_READ_V2_TAIL_LEN, align 8
  %207 = call i8* @ngx_create_temp_buf(i32 %205, i64 %206)
  %208 = bitcast i8* %207 to %struct.TYPE_20__*
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 6
  store %struct.TYPE_20__* %208, %struct.TYPE_20__** %210, align 8
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 6
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %212, align 8
  %214 = icmp eq %struct.TYPE_20__* %213, null
  br i1 %214, label %215, label %217

215:                                              ; preds = %202
  %216 = load i64, i64* @NGX_ERROR, align 8
  store i64 %216, i64* %2, align 8
  br label %306

217:                                              ; preds = %202
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 6
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* %4, align 8
  %227 = add i64 %225, %226
  %228 = load i64, i64* %6, align 8
  %229 = call i8* @ngx_cpymem(i8* %222, i64 %227, i64 %228)
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 6
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 0
  store i8* %229, i8** %233, align 8
  br label %236

234:                                              ; preds = %199
  %235 = load i64, i64* @NGX_ERROR, align 8
  store i64 %235, i64* %2, align 8
  br label %306

236:                                              ; preds = %217
  br label %237

237:                                              ; preds = %236, %180
  br label %259

238:                                              ; preds = %143
  %239 = load i64, i64* %5, align 8
  %240 = load i64, i64* @NGX_HTTP_TFS_READ_V2_TAIL_LEN, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %258

242:                                              ; preds = %238
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 7
  %245 = load i32, i32* %244, align 8
  %246 = load i64, i64* @NGX_HTTP_TFS_READ_V2_TAIL_LEN, align 8
  %247 = call i8* @ngx_create_temp_buf(i32 %245, i64 %246)
  %248 = bitcast i8* %247 to %struct.TYPE_20__*
  %249 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %249, i32 0, i32 6
  store %struct.TYPE_20__* %248, %struct.TYPE_20__** %250, align 8
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 6
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %252, align 8
  %254 = icmp eq %struct.TYPE_20__* %253, null
  br i1 %254, label %255, label %257

255:                                              ; preds = %242
  %256 = load i64, i64* @NGX_ERROR, align 8
  store i64 %256, i64* %2, align 8
  br label %306

257:                                              ; preds = %242
  br label %258

258:                                              ; preds = %257, %238
  br label %259

259:                                              ; preds = %258, %237
  br label %260

260:                                              ; preds = %259, %65
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 4
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %270, label %265

265:                                              ; preds = %260
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 8
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %280

270:                                              ; preds = %265, %260
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %271, i32 0, i32 4
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %293

275:                                              ; preds = %270
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 8
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %293, label %280

280:                                              ; preds = %275, %265
  %281 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %282 = load i64, i64* %4, align 8
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = call i64 @ngx_http_tfs_copy_body_buffer(%struct.TYPE_23__* %281, i64 %282, i64 %285)
  store i64 %286, i64* %10, align 8
  %287 = load i64, i64* %10, align 8
  %288 = load i64, i64* @NGX_ERROR, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %292

290:                                              ; preds = %280
  %291 = load i64, i64* %10, align 8
  store i64 %291, i64* %2, align 8
  br label %306

292:                                              ; preds = %280
  br label %293

293:                                              ; preds = %292, %275, %270
  %294 = load i64, i64* %4, align 8
  %295 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = add i64 %298, %294
  store i64 %299, i64* %297, align 8
  %300 = load i64, i64* %4, align 8
  %301 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = sub i64 %303, %300
  store i64 %304, i64* %302, align 8
  %305 = load i64, i64* @NGX_OK, align 8
  store i64 %305, i64* %2, align 8
  br label %306

306:                                              ; preds = %293, %290, %255, %234, %215, %178, %141, %120, %63
  %307 = load i64, i64* %2, align 8
  ret i64 %307
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i32, %struct.TYPE_22__*) #1

declare dso_local i64 @ngx_buf_size(%struct.TYPE_16__*) #1

declare dso_local i8* @ngx_cpymem(i8*, i64, i64) #1

declare dso_local i32 @ngx_http_tfs_wrap_raw_file_info(i32*, %struct.TYPE_17__*) #1

declare dso_local i8* @ngx_min(i8*, i32) #1

declare dso_local i8* @ngx_create_temp_buf(i32, i64) #1

declare dso_local i64 @ngx_http_tfs_copy_body_buffer(%struct.TYPE_23__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
