; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_name_server_message.c_ngx_http_tfs_parse_batch_block_info_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_name_server_message.c_ngx_http_tfs_parse_batch_block_info_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__, i32, i32, i32, i32, i32, %struct.TYPE_24__*, i64 }
%struct.TYPE_20__ = type { i64, i64, i64, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_23__ = type { i64, %struct.TYPE_27__, %struct.TYPE_21__ }
%struct.TYPE_27__ = type { i64, %struct.TYPE_18__*, i8*, i8* }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_28__ = type { i64, i32* }
%struct.TYPE_25__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"batch get block info (name server)\00", align 1
@NGX_HTTP_TFS_MAX_BATCH_COUNT = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_OPEN_MODE_READ = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_AGAIN = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_OPEN_MODE_WRITE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_EXIT_GENERAL_ERROR = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [98 x i8] c"batch get block info from nameserver: %V, block id: %uD, ds count: %uD, version: %D, lease id: %D\00", align 1
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_tfs_parse_batch_block_info_message(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_26__*, align 8
  %17 = alloca %struct.TYPE_27__*, align 8
  %18 = alloca %struct.TYPE_24__*, align 8
  %19 = alloca %struct.TYPE_17__, align 8
  %20 = alloca %struct.TYPE_28__, align 8
  %21 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 7
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %25, %struct.TYPE_26__** %16, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 6
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  store %struct.TYPE_24__* %28, %struct.TYPE_24__** %18, align 8
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %41 [
    i32 128, label %33
  ]

33:                                               ; preds = %2
  %34 = call i32 @ngx_str_set(i32* %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ngx_http_tfs_status_message(%struct.TYPE_19__* %36, i32* %12, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %369

41:                                               ; preds = %2
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = bitcast i32* %45 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %46, %struct.TYPE_25__** %21, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 8
  store i32* %51, i32** %6, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub i64 %55, %59
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @NGX_HTTP_TFS_MAX_BATCH_COUNT, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %41
  %65 = load i64, i64* @NGX_HTTP_TFS_MAX_BATCH_COUNT, align 8
  store i64 %65, i64* %8, align 8
  br label %66

66:                                               ; preds = %64, %41
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 2
  store i64 %69, i64* %72, align 8
  store i64 0, i64* %13, align 8
  br label %73

73:                                               ; preds = %289, %66
  %74 = load i64, i64* %13, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %74, %77
  br i1 %78, label %79, label %292

79:                                               ; preds = %73
  %80 = load i64, i64* %13, align 8
  store i64 %80, i64* %14, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = bitcast i32* %81 to i64*
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %11, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 8
  store i32* %85, i32** %6, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @NGX_HTTP_TFS_OPEN_MODE_READ, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %119

93:                                               ; preds = %79
  store i64 0, i64* %14, align 8
  br label %94

94:                                               ; preds = %109, %93
  %95 = load i64, i64* %14, align 8
  %96 = load i64, i64* %8, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %94
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %100 = load i64, i64* %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %11, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %112

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %14, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %14, align 8
  br label %94

112:                                              ; preds = %107, %94
  %113 = load i64, i64* %14, align 8
  %114 = load i64, i64* %8, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32, i32* @NGX_HTTP_TFS_AGAIN, align 4
  store i32 %117, i32* %3, align 4
  br label %369

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118, %79
  %120 = load i64, i64* %11, align 8
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %122 = load i64, i64* %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  store i64 %120, i64* %125, align 8
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %127 = load i64, i64* %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 1
  store %struct.TYPE_27__* %129, %struct.TYPE_27__** %17, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = bitcast i32* %130 to i64*
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %10, align 8
  %133 = load i32*, i32** %6, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 8
  store i32* %134, i32** %6, align 8
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @NGX_HTTP_TFS_OPEN_MODE_WRITE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %119
  %143 = load i64, i64* %10, align 8
  %144 = icmp ule i64 %143, 3
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load i32, i32* @NGX_HTTP_TFS_EXIT_GENERAL_ERROR, align 4
  store i32 %146, i32* %3, align 4
  br label %369

147:                                              ; preds = %142
  %148 = load i64, i64* %10, align 8
  %149 = sub i64 %148, 3
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  br label %161

152:                                              ; preds = %119
  %153 = load i64, i64* %10, align 8
  %154 = icmp ult i64 %153, 1
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load i32, i32* @NGX_HTTP_TFS_EXIT_GENERAL_ERROR, align 4
  store i32 %156, i32* %3, align 4
  br label %369

157:                                              ; preds = %152
  %158 = load i64, i64* %10, align 8
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %157, %147
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load i64, i64* %10, align 8
  %166 = mul i64 4, %165
  %167 = trunc i64 %166 to i32
  %168 = call %struct.TYPE_18__* @ngx_pcalloc(i32 %164, i32 %167)
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 1
  store %struct.TYPE_18__* %168, %struct.TYPE_18__** %170, align 8
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %172, align 8
  %174 = icmp eq %struct.TYPE_18__* %173, null
  br i1 %174, label %175, label %177

175:                                              ; preds = %161
  %176 = load i32, i32* @NGX_ERROR, align 4
  store i32 %176, i32* %3, align 4
  br label %369

177:                                              ; preds = %161
  store i64 0, i64* %15, align 8
  br label %178

178:                                              ; preds = %206, %177
  %179 = load i64, i64* %15, align 8
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %181 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ult i64 %179, %182
  br i1 %183, label %184, label %209

184:                                              ; preds = %178
  %185 = load i32*, i32** %6, align 8
  %186 = bitcast i32* %185 to i64*
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %189 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %189, align 8
  %191 = load i64, i64* %15, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 0
  store i64 %187, i64* %193, align 8
  %194 = load i32*, i32** %6, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 8
  %196 = bitcast i32* %195 to i64*
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %199, align 8
  %201 = load i64, i64* %15, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 1
  store i64 %197, i64* %203, align 8
  %204 = load i32*, i32** %6, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 16
  store i32* %205, i32** %6, align 8
  br label %206

206:                                              ; preds = %184
  %207 = load i64, i64* %15, align 8
  %208 = add i64 %207, 1
  store i64 %208, i64* %15, align 8
  br label %178

209:                                              ; preds = %178
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @NGX_HTTP_TFS_OPEN_MODE_WRITE, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %234

217:                                              ; preds = %209
  %218 = load i32*, i32** %6, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 4
  store i32* %219, i32** %6, align 8
  %220 = load i32*, i32** %6, align 8
  %221 = bitcast i32* %220 to i8**
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %224 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %223, i32 0, i32 3
  store i8* %222, i8** %224, align 8
  %225 = load i32*, i32** %6, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 4
  store i32* %226, i32** %6, align 8
  %227 = load i32*, i32** %6, align 8
  %228 = bitcast i32* %227 to i8**
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %231 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %230, i32 0, i32 2
  store i8* %229, i8** %231, align 8
  %232 = load i32*, i32** %6, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 4
  store i32* %233, i32** %6, align 8
  br label %234

234:                                              ; preds = %217, %209
  %235 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 5
  %241 = load i64, i64* %11, align 8
  %242 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %243 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %246 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %245, i32 0, i32 3
  %247 = load i8*, i8** %246, align 8
  %248 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %249 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %248, i32 0, i32 2
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 @ngx_log_debug5(i32 %235, i32 %238, i32 0, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0), i32* %240, i64 %241, i64 %244, i8* %247, i8* %250)
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @NGX_HTTP_TFS_OPEN_MODE_READ, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %284

259:                                              ; preds = %234
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 4
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  store i32 %262, i32* %263, align 8
  %264 = load i64, i64* %11, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  store i64 %264, i64* %265, align 8
  %266 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %267 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 0
  store i64 %268, i64* %269, align 8
  %270 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %271 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %271, align 8
  %273 = bitcast %struct.TYPE_18__* %272 to i32*
  %274 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 1
  store i32* %273, i32** %274, align 8
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 3
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @ngx_http_tfs_block_cache_insert(i32* %276, i32 %279, i32 %282, %struct.TYPE_17__* %19, %struct.TYPE_28__* %20)
  br label %284

284:                                              ; preds = %259, %234
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %286 = load i64, i64* %14, align 8
  %287 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %285, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %287, i32 0, i32 0
  store i64 0, i64* %288, align 8
  br label %289

289:                                              ; preds = %284
  %290 = load i64, i64* %13, align 8
  %291 = add i64 %290, 1
  store i64 %291, i64* %13, align 8
  br label %73

292:                                              ; preds = %73
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @NGX_HTTP_TFS_OPEN_MODE_READ, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %367

300:                                              ; preds = %292
  store i64 0, i64* %9, align 8
  store i64 0, i64* %13, align 8
  br label %301

301:                                              ; preds = %357, %300
  %302 = load i64, i64* %13, align 8
  %303 = load i64, i64* %8, align 8
  %304 = icmp ult i64 %302, %303
  br i1 %304, label %305, label %360

305:                                              ; preds = %301
  %306 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %307 = load i64, i64* %13, align 8
  %308 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %306, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %309, i32 0, i32 1
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %310, align 8
  %312 = icmp ne %struct.TYPE_18__* %311, null
  br i1 %312, label %313, label %316

313:                                              ; preds = %305
  %314 = load i64, i64* %9, align 8
  %315 = add i64 %314, 1
  store i64 %315, i64* %9, align 8
  br label %357

316:                                              ; preds = %305
  store i64 0, i64* %14, align 8
  br label %317

317:                                              ; preds = %353, %316
  %318 = load i64, i64* %14, align 8
  %319 = load i64, i64* %13, align 8
  %320 = icmp ult i64 %318, %319
  br i1 %320, label %321, label %356

321:                                              ; preds = %317
  %322 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %323 = load i64, i64* %13, align 8
  %324 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %322, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %324, i32 0, i32 2
  %326 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %329 = load i64, i64* %14, align 8
  %330 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %328, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %330, i32 0, i32 2
  %332 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %327, %333
  br i1 %334, label %335, label %336

335:                                              ; preds = %321
  br label %353

336:                                              ; preds = %321
  %337 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %338 = load i64, i64* %13, align 8
  %339 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %337, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %339, i32 0, i32 1
  %341 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %342 = load i64, i64* %14, align 8
  %343 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %341, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %343, i32 0, i32 1
  %345 = bitcast %struct.TYPE_27__* %340 to i8*
  %346 = bitcast %struct.TYPE_27__* %344 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %345, i8* align 8 %346, i64 32, i1 false)
  %347 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %348 = load i64, i64* %13, align 8
  %349 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %347, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %349, i32 0, i32 0
  store i64 0, i64* %350, align 8
  %351 = load i64, i64* %9, align 8
  %352 = add i64 %351, 1
  store i64 %352, i64* %9, align 8
  br label %356

353:                                              ; preds = %335
  %354 = load i64, i64* %14, align 8
  %355 = add i64 %354, 1
  store i64 %355, i64* %14, align 8
  br label %317

356:                                              ; preds = %336, %317
  br label %357

357:                                              ; preds = %356, %313
  %358 = load i64, i64* %13, align 8
  %359 = add i64 %358, 1
  store i64 %359, i64* %13, align 8
  br label %301

360:                                              ; preds = %301
  %361 = load i64, i64* %9, align 8
  %362 = load i64, i64* %8, align 8
  %363 = icmp ne i64 %361, %362
  br i1 %363, label %364, label %366

364:                                              ; preds = %360
  %365 = load i32, i32* @NGX_HTTP_TFS_AGAIN, align 4
  store i32 %365, i32* %3, align 4
  br label %369

366:                                              ; preds = %360
  br label %367

367:                                              ; preds = %366, %292
  %368 = load i32, i32* @NGX_OK, align 4
  store i32 %368, i32* %3, align 4
  br label %369

369:                                              ; preds = %367, %364, %175, %155, %145, %116, %33
  %370 = load i32, i32* %3, align 4
  ret i32 %370
}

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

declare dso_local i32 @ngx_http_tfs_status_message(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local %struct.TYPE_18__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_log_debug5(i32, i32, i32, i8*, i32*, i64, i64, i8*, i8*) #1

declare dso_local i32 @ngx_http_tfs_block_cache_insert(i32*, i32, i32, %struct.TYPE_17__*, %struct.TYPE_28__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
