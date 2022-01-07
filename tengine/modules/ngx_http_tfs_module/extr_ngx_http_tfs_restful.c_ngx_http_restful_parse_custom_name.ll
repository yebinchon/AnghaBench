; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_restful.c_ngx_http_restful_parse_custom_name.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_restful.c_ngx_http_restful_parse_custom_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__, i8*, i32, i32, i8*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i8*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"metadata\00", align 1
@NGX_HTTP_TFS_YES = common dso_local global i8* null, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"appid is invalid\00", align 1
@NGX_INT64_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"userid is invalid\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"userid is too big\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@NGX_HTTP_TFS_CUSTOM_FT_FILE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@NGX_HTTP_TFS_CUSTOM_FT_DIR = common dso_local global i64 0, align 8
@NGX_HTTP_GET = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"appid\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_MAX_FILE_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i8*)* @ngx_http_restful_parse_custom_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_restful_parse_custom_name(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %19, i64 %24
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %7, align 8
  store i8* %26, i8** %10, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %27 = load i8*, i8** %7, align 8
  store i8* %27, i8** %8, align 8
  br label %28

28:                                               ; preds = %270, %3
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = icmp ult i8* %29, %30
  br i1 %31, label %32, label %273

32:                                               ; preds = %28
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %9, align 1
  %35 = load i32, i32* %15, align 4
  switch i32 %35, label %269 [
    i32 0, label %36
    i32 1, label %78
    i32 2, label %102
    i32 3, label %161
    i32 4, label %227
    i32 5, label %268
  ]

36:                                               ; preds = %32
  %37 = load i8, i8* %9, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 47
  br i1 %39, label %40, label %77

40:                                               ; preds = %36
  %41 = load i8*, i8** %10, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i8* %41, i8** %44, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  store i8* %55, i8** %10, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = icmp ult i8* %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %40
  %60 = load i8*, i8** %10, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 97
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  store i32 5, i32* %15, align 4
  %65 = load i8*, i8** %10, align 8
  store i8* %65, i8** %12, align 8
  br label %75

66:                                               ; preds = %59
  %67 = load i8*, i8** %10, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 109
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  store i32 1, i32* %15, align 4
  %72 = load i8*, i8** %10, align 8
  store i8* %72, i8** %13, align 8
  br label %74

73:                                               ; preds = %66
  store i32 2, i32* %15, align 4
  br label %74

74:                                               ; preds = %73, %71
  br label %75

75:                                               ; preds = %74, %64
  br label %76

76:                                               ; preds = %75, %40
  br label %77

77:                                               ; preds = %76, %36
  br label %269

78:                                               ; preds = %32
  %79 = load i8, i8* %9, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 47
  br i1 %81, label %82, label %101

82:                                               ; preds = %78
  %83 = load i8*, i8** %13, align 8
  %84 = call i64 @ngx_memcmp(i8* %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %82
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8*, i8** %11, align 8
  %90 = icmp ult i8* %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load i8*, i8** @NGX_HTTP_TFS_YES, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 5
  store i8* %92, i8** %94, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  store i8* %96, i8** %10, align 8
  store i32 2, i32* %15, align 4
  br label %99

97:                                               ; preds = %86
  %98 = load i32, i32* @NGX_ERROR, align 4
  store i32 %98, i32* %4, align 4
  br label %343

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %82
  br label %101

101:                                              ; preds = %100, %78
  br label %269

102:                                              ; preds = %32
  %103 = load i8, i8* %9, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 47
  br i1 %105, label %106, label %131

106:                                              ; preds = %102
  %107 = load i8*, i8** %10, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = trunc i64 %112 to i32
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 4
  %116 = bitcast i32* %115 to i64*
  %117 = call i32 @ngx_http_tfs_atoull(i8* %107, i32 %113, i64* %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* @NGX_ERROR, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %126, label %121

121:                                              ; preds = %106
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121, %106
  %127 = load i32, i32* @NGX_ERROR, align 4
  store i32 %127, i32* %4, align 4
  br label %343

128:                                              ; preds = %121
  %129 = load i8*, i8** %8, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  store i8* %130, i8** %10, align 8
  store i32 3, i32* %15, align 4
  br label %269

131:                                              ; preds = %102
  %132 = load i8, i8* %9, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp slt i32 %133, 48
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load i8, i8* %9, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp sgt i32 %137, 57
  br i1 %138, label %139, label %148

139:                                              ; preds = %135, %131
  %140 = load i32, i32* @NGX_LOG_ERR, align 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ngx_log_error(i32 %140, i32 %145, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %147 = load i32, i32* @NGX_ERROR, align 4
  store i32 %147, i32* %4, align 4
  br label %343

148:                                              ; preds = %135
  %149 = load i8*, i8** %8, align 8
  %150 = load i8*, i8** %10, align 8
  %151 = ptrtoint i8* %149 to i64
  %152 = ptrtoint i8* %150 to i64
  %153 = sub i64 %151, %152
  %154 = load i32, i32* @NGX_INT64_LEN, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = icmp ugt i64 %153, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %148
  %159 = load i32, i32* @NGX_ERROR, align 4
  store i32 %159, i32* %4, align 4
  br label %343

160:                                              ; preds = %148
  br label %269

161:                                              ; preds = %32
  %162 = load i8, i8* %9, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 47
  br i1 %164, label %165, label %190

165:                                              ; preds = %161
  %166 = load i8*, i8** %10, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = load i8*, i8** %10, align 8
  %169 = ptrtoint i8* %167 to i64
  %170 = ptrtoint i8* %168 to i64
  %171 = sub i64 %169, %170
  %172 = trunc i64 %171 to i32
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 3
  %175 = bitcast i32* %174 to i64*
  %176 = call i32 @ngx_http_tfs_atoull(i8* %166, i32 %172, i64* %175)
  store i32 %176, i32* %14, align 4
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* @NGX_ERROR, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %185, label %180

180:                                              ; preds = %165
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %180, %165
  %186 = load i32, i32* @NGX_ERROR, align 4
  store i32 %186, i32* %4, align 4
  br label %343

187:                                              ; preds = %180
  %188 = load i8*, i8** %8, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  store i8* %189, i8** %10, align 8
  store i32 4, i32* %15, align 4
  br label %269

190:                                              ; preds = %161
  %191 = load i8, i8* %9, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp slt i32 %192, 48
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  %195 = load i8, i8* %9, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp sgt i32 %196, 57
  br i1 %197, label %198, label %207

198:                                              ; preds = %194, %190
  %199 = load i32, i32* @NGX_LOG_ERR, align 4
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @ngx_log_error(i32 %199, i32 %204, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %206 = load i32, i32* @NGX_ERROR, align 4
  store i32 %206, i32* %4, align 4
  br label %343

207:                                              ; preds = %194
  %208 = load i8*, i8** %8, align 8
  %209 = load i8*, i8** %10, align 8
  %210 = ptrtoint i8* %208 to i64
  %211 = ptrtoint i8* %209 to i64
  %212 = sub i64 %210, %211
  %213 = load i32, i32* @NGX_INT64_LEN, align 4
  %214 = sub nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = icmp ugt i64 %212, %215
  br i1 %216, label %217, label %226

217:                                              ; preds = %207
  %218 = load i32, i32* @NGX_LOG_ERR, align 4
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @ngx_log_error(i32 %218, i32 %223, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %225 = load i32, i32* @NGX_ERROR, align 4
  store i32 %225, i32* %4, align 4
  br label %343

226:                                              ; preds = %207
  br label %269

227:                                              ; preds = %32
  %228 = load i8, i8* %9, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp eq i32 %229, 47
  br i1 %230, label %231, label %267

231:                                              ; preds = %227
  %232 = load i8*, i8** %10, align 8
  %233 = load i8*, i8** %8, align 8
  %234 = load i8*, i8** %10, align 8
  %235 = ptrtoint i8* %233 to i64
  %236 = ptrtoint i8* %234 to i64
  %237 = sub i64 %235, %236
  %238 = trunc i64 %237 to i32
  %239 = call i32 @ngx_strncmp(i8* %232, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %238)
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %231
  %242 = load i64, i64* @NGX_HTTP_TFS_CUSTOM_FT_FILE, align 8
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  store i64 %242, i64* %244, align 8
  br label %262

245:                                              ; preds = %231
  %246 = load i8*, i8** %10, align 8
  %247 = load i8*, i8** %8, align 8
  %248 = load i8*, i8** %10, align 8
  %249 = ptrtoint i8* %247 to i64
  %250 = ptrtoint i8* %248 to i64
  %251 = sub i64 %249, %250
  %252 = trunc i64 %251 to i32
  %253 = call i32 @ngx_strncmp(i8* %246, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %252)
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %245
  %256 = load i64, i64* @NGX_HTTP_TFS_CUSTOM_FT_DIR, align 8
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 0
  store i64 %256, i64* %258, align 8
  br label %261

259:                                              ; preds = %245
  %260 = load i32, i32* @NGX_ERROR, align 4
  store i32 %260, i32* %4, align 4
  br label %343

261:                                              ; preds = %255
  br label %262

262:                                              ; preds = %261, %241
  %263 = load i8*, i8** %8, align 8
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 0
  store i8* %263, i8** %266, align 8
  store i32 5, i32* %15, align 4
  br label %267

267:                                              ; preds = %262, %227
  br label %269

268:                                              ; preds = %32
  br label %269

269:                                              ; preds = %32, %268, %267, %226, %187, %160, %128, %101, %77
  br label %270

270:                                              ; preds = %269
  %271 = load i8*, i8** %8, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %272, i8** %8, align 8
  br label %28

273:                                              ; preds = %28
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @NGX_HTTP_GET, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %300

279:                                              ; preds = %273
  %280 = load i8*, i8** %12, align 8
  %281 = icmp ne i8* %280, null
  br i1 %281, label %282, label %300

282:                                              ; preds = %279
  %283 = load i8*, i8** %12, align 8
  %284 = call i64 @ngx_memcmp(i8* %283, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %298

286:                                              ; preds = %282
  %287 = load i8*, i8** @NGX_HTTP_TFS_YES, align 8
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 2
  store i8* %287, i8** %289, align 8
  %290 = load i8*, i8** %12, align 8
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 0
  store i8* %290, i8** %293, align 8
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 1
  store i32 5, i32* %296, align 8
  %297 = load i32, i32* @NGX_OK, align 4
  store i32 %297, i32* %4, align 4
  br label %343

298:                                              ; preds = %282
  %299 = load i32, i32* @NGX_ERROR, align 4
  store i32 %299, i32* %4, align 4
  br label %343

300:                                              ; preds = %279, %273
  %301 = load i8*, i8** %8, align 8
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 0
  %305 = load i8*, i8** %304, align 8
  %306 = ptrtoint i8* %301 to i64
  %307 = ptrtoint i8* %305 to i64
  %308 = sub i64 %306, %307
  %309 = trunc i64 %308 to i32
  %310 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 1
  store i32 %309, i32* %312, align 8
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = icmp slt i32 %316, 1
  br i1 %317, label %325, label %318

318:                                              ; preds = %300
  %319 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @NGX_HTTP_TFS_MAX_FILE_NAME_LEN, align 4
  %324 = icmp sgt i32 %322, %323
  br i1 %324, label %325, label %327

325:                                              ; preds = %318, %300
  %326 = load i32, i32* @NGX_ERROR, align 4
  store i32 %326, i32* %4, align 4
  br label %343

327:                                              ; preds = %318
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @NGX_HTTP_TFS_CUSTOM_FT_FILE, align 8
  %332 = icmp eq i64 %330, %331
  br i1 %332, label %333, label %341

333:                                              ; preds = %327
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  %338 = icmp eq i32 %337, 1
  br i1 %338, label %339, label %341

339:                                              ; preds = %333
  %340 = load i32, i32* @NGX_ERROR, align 4
  store i32 %340, i32* %4, align 4
  br label %343

341:                                              ; preds = %333, %327
  %342 = load i32, i32* @NGX_OK, align 4
  store i32 %342, i32* %4, align 4
  br label %343

343:                                              ; preds = %341, %339, %325, %298, %286, %259, %217, %198, %185, %158, %139, %126, %97
  %344 = load i32, i32* %4, align 4
  ret i32 %344
}

declare dso_local i64 @ngx_memcmp(i8*, i8*, i32) #1

declare dso_local i32 @ngx_http_tfs_atoull(i8*, i32, i64*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
