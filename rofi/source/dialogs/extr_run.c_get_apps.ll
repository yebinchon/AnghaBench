; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_run.c_get_apps.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_run.c_get_apps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.dirent = type { i64, i8* }

@.str = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@cache_dir = common dso_local global i8* null, align 8
@RUN_CACHE_FILE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to convert homedir to UTF-8: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Checking path %s for executable.\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Failed to convert directory name to UTF-8: %s\00", align 1
@DT_REG = common dso_local global i64 0, align 8
@DT_LNK = common dso_local global i64 0, align 8
@DT_UNKNOWN = common dso_local global i64 0, align 8
@G_FILE_TEST_IS_EXECUTABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Failed to convert filename to UTF-8: %s\00", align 1
@config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@sort_func = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i32*)* @get_apps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @get_apps(i32* %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.dirent*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  store i8** null, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %27 = call i32* @g_getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i8** null, i8*** %2, align 8
  br label %319

30:                                               ; preds = %1
  %31 = call i32 @TICK_N(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i8*, i8** @cache_dir, align 8
  %33 = load i8*, i8** @RUN_CACHE_FILE, align 8
  %34 = call i8* @g_build_filename(i8* %32, i8* %33, i32* null)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = call i8** @history_get_list(i8* %35, i32* %36)
  store i8** %37, i8*** %5, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @g_free(i8* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  %42 = call i32* @g_getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %43 = call i8* @g_strdup(i32* %42)
  store i8* %43, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %44 = call i8* (...) @g_get_home_dir()
  %45 = call i8* @g_locale_to_utf8(i8* %44, i32 -1, i32* null, i32* %8, %struct.TYPE_6__** %4)
  store i8* %45, i8** %9, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %30
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @g_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = call i32 @g_clear_error(%struct.TYPE_6__** %4)
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @g_free(i8* %54)
  store i8** null, i8*** %2, align 8
  br label %319

56:                                               ; preds = %30
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  store i8* null, i8** %11, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i8* @strtok_r(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8** %11)
  store i8* %58, i8** %12, align 8
  br label %59

59:                                               ; preds = %215, %56
  %60 = load i8*, i8** %12, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %217

62:                                               ; preds = %59
  %63 = load i8*, i8** %12, align 8
  %64 = call i8* @rofi_expand_path(i8* %63)
  store i8* %64, i8** %13, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = call i32* @opendir(i8* %65)
  store i32* %66, i32** %14, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = call i32 @g_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %67)
  %69 = load i8*, i8** %13, align 8
  %70 = call i32 @g_free(i8* %69)
  %71 = load i32*, i32** %14, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %214

73:                                               ; preds = %62
  store i32 0, i32* %16, align 4
  %74 = load i8*, i8** %12, align 8
  %75 = call i8* @g_locale_to_utf8(i8* %74, i32 -1, i32* null, i32* %16, %struct.TYPE_6__** %4)
  store i8* %75, i8** %17, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = icmp ne %struct.TYPE_6__* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @g_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %81)
  %83 = call i32 @g_clear_error(%struct.TYPE_6__** %4)
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @closedir(i32* %84)
  br label %215

86:                                               ; preds = %73
  %87 = load i8*, i8** %17, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = call i64 @g_str_has_prefix(i8* %87, i8* %88)
  store i64 %89, i64* %18, align 8
  %90 = load i8*, i8** %17, align 8
  %91 = call i32 @g_free(i8* %90)
  br label %92

92:                                               ; preds = %187, %184, %149, %140, %123, %114, %86
  %93 = load i32*, i32** %14, align 8
  %94 = call %struct.dirent* @readdir(i32* %93)
  store %struct.dirent* %94, %struct.dirent** %15, align 8
  %95 = icmp ne %struct.dirent* %94, null
  br i1 %95, label %96, label %211

96:                                               ; preds = %92
  %97 = load %struct.dirent*, %struct.dirent** %15, align 8
  %98 = getelementptr inbounds %struct.dirent, %struct.dirent* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @DT_REG, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %96
  %103 = load %struct.dirent*, %struct.dirent** %15, align 8
  %104 = getelementptr inbounds %struct.dirent, %struct.dirent* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @DT_LNK, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load %struct.dirent*, %struct.dirent** %15, align 8
  %110 = getelementptr inbounds %struct.dirent, %struct.dirent* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @DT_UNKNOWN, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %92

115:                                              ; preds = %108, %102, %96
  %116 = load %struct.dirent*, %struct.dirent** %15, align 8
  %117 = getelementptr inbounds %struct.dirent, %struct.dirent* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 46
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  br label %92

124:                                              ; preds = %115
  %125 = load i64, i64* %18, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %124
  %128 = load i8*, i8** %12, align 8
  %129 = load %struct.dirent*, %struct.dirent** %15, align 8
  %130 = getelementptr inbounds %struct.dirent, %struct.dirent* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = call i8* @g_build_filename(i8* %128, i8* %131, i32* null)
  store i8* %132, i8** %19, align 8
  %133 = load i8*, i8** %19, align 8
  %134 = load i32, i32* @G_FILE_TEST_IS_EXECUTABLE, align 4
  %135 = call i64 @g_file_test(i8* %133, i32 %134)
  store i64 %135, i64* %20, align 8
  %136 = load i8*, i8** %19, align 8
  %137 = call i32 @g_free(i8* %136)
  %138 = load i64, i64* %20, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %127
  br label %92

141:                                              ; preds = %127
  br label %142

142:                                              ; preds = %141, %124
  %143 = load %struct.dirent*, %struct.dirent** %15, align 8
  %144 = getelementptr inbounds %struct.dirent, %struct.dirent* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = call i8* @g_filename_to_utf8(i8* %145, i32 -1, i32* null, i32* %21, %struct.TYPE_6__** %4)
  store i8* %146, i8** %22, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %148 = icmp ne %struct.TYPE_6__* %147, null
  br i1 %148, label %149, label %157

149:                                              ; preds = %142
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @g_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* %152)
  %154 = call i32 @g_clear_error(%struct.TYPE_6__** %4)
  %155 = load i8*, i8** %22, align 8
  %156 = call i32 @g_free(i8* %155)
  br label %92

157:                                              ; preds = %142
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %158

158:                                              ; preds = %178, %157
  %159 = load i32, i32* %23, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load i32, i32* %24, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp ult i32 %162, %163
  br label %165

165:                                              ; preds = %161, %158
  %166 = phi i1 [ false, %158 ], [ %164, %161 ]
  br i1 %166, label %167, label %181

167:                                              ; preds = %165
  %168 = load i8*, i8** %22, align 8
  %169 = load i8**, i8*** %5, align 8
  %170 = load i32, i32* %24, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %169, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = call i64 @g_strcmp0(i8* %168, i8* %173)
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %167
  store i32 1, i32* %23, align 4
  br label %177

177:                                              ; preds = %176, %167
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %24, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %24, align 4
  br label %158

181:                                              ; preds = %165
  %182 = load i32, i32* %23, align 4
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i8*, i8** %22, align 8
  %186 = call i32 @g_free(i8* %185)
  br label %92

187:                                              ; preds = %181
  %188 = load i8**, i8*** %5, align 8
  %189 = load i32*, i32** %3, align 8
  %190 = load i32, i32* %189, align 4
  %191 = add i32 %190, 2
  %192 = zext i32 %191 to i64
  %193 = mul i64 %192, 8
  %194 = trunc i64 %193 to i32
  %195 = call i8** @g_realloc(i8** %188, i32 %194)
  store i8** %195, i8*** %5, align 8
  %196 = load i8*, i8** %22, align 8
  %197 = load i8**, i8*** %5, align 8
  %198 = load i32*, i32** %3, align 8
  %199 = load i32, i32* %198, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %197, i64 %200
  store i8* %196, i8** %201, align 8
  %202 = load i8**, i8*** %5, align 8
  %203 = load i32*, i32** %3, align 8
  %204 = load i32, i32* %203, align 4
  %205 = add i32 %204, 1
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds i8*, i8** %202, i64 %206
  store i8* null, i8** %207, align 8
  %208 = load i32*, i32** %3, align 8
  %209 = load i32, i32* %208, align 4
  %210 = add i32 %209, 1
  store i32 %210, i32* %208, align 4
  br label %92

211:                                              ; preds = %92
  %212 = load i32*, i32** %14, align 8
  %213 = call i32 @closedir(i32* %212)
  br label %214

214:                                              ; preds = %211, %62
  br label %215

215:                                              ; preds = %214, %78
  %216 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8** %11)
  store i8* %216, i8** %12, align 8
  br label %59

217:                                              ; preds = %59
  %218 = load i8*, i8** %9, align 8
  %219 = call i32 @g_free(i8* %218)
  %220 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %233

222:                                              ; preds = %217
  %223 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 0
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %222
  %229 = load i8**, i8*** %5, align 8
  %230 = load i32*, i32** %3, align 8
  %231 = load i32, i32* %6, align 4
  %232 = call i8** @get_apps_external(i8** %229, i32* %230, i32 %231)
  store i8** %232, i8*** %5, align 8
  br label %233

233:                                              ; preds = %228, %222, %217
  %234 = load i32*, i32** %3, align 8
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %233
  %238 = load i8**, i8*** %5, align 8
  store i8** %238, i8*** %2, align 8
  br label %319

239:                                              ; preds = %233
  %240 = load i32*, i32** %3, align 8
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %6, align 4
  %243 = icmp ugt i32 %241, %242
  br i1 %243, label %244, label %255

244:                                              ; preds = %239
  %245 = load i8**, i8*** %5, align 8
  %246 = load i32, i32* %6, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds i8*, i8** %245, i64 %247
  %249 = load i32*, i32** %3, align 8
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %6, align 4
  %252 = sub i32 %250, %251
  %253 = load i32, i32* @sort_func, align 4
  %254 = call i32 @g_qsort_with_data(i8** %248, i32 %252, i32 8, i32 %253, i32* null)
  br label %255

255:                                              ; preds = %244, %239
  %256 = load i8*, i8** %7, align 8
  %257 = call i32 @g_free(i8* %256)
  store i32 0, i32* %25, align 4
  %258 = load i32, i32* %6, align 4
  store i32 %258, i32* %26, align 4
  br label %259

259:                                              ; preds = %293, %255
  %260 = load i32, i32* %26, align 4
  %261 = load i32*, i32** %3, align 8
  %262 = load i32, i32* %261, align 4
  %263 = sub i32 %262, 1
  %264 = icmp ult i32 %260, %263
  br i1 %264, label %265, label %296

265:                                              ; preds = %259
  %266 = load i8**, i8*** %5, align 8
  %267 = load i32, i32* %26, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds i8*, i8** %266, i64 %268
  %270 = load i8*, i8** %269, align 8
  %271 = load i8**, i8*** %5, align 8
  %272 = load i32, i32* %26, align 4
  %273 = add i32 %272, 1
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds i8*, i8** %271, i64 %274
  %276 = load i8*, i8** %275, align 8
  %277 = call i64 @g_strcmp0(i8* %270, i8* %276)
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %292

279:                                              ; preds = %265
  %280 = load i8**, i8*** %5, align 8
  %281 = load i32, i32* %26, align 4
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds i8*, i8** %280, i64 %282
  %284 = load i8*, i8** %283, align 8
  %285 = call i32 @g_free(i8* %284)
  %286 = load i8**, i8*** %5, align 8
  %287 = load i32, i32* %26, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds i8*, i8** %286, i64 %288
  store i8* null, i8** %289, align 8
  %290 = load i32, i32* %25, align 4
  %291 = add i32 %290, 1
  store i32 %291, i32* %25, align 4
  br label %292

292:                                              ; preds = %279, %265
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %26, align 4
  %295 = add i32 %294, 1
  store i32 %295, i32* %26, align 4
  br label %259

296:                                              ; preds = %259
  %297 = load i32*, i32** %3, align 8
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* %6, align 4
  %300 = icmp ugt i32 %298, %299
  br i1 %300, label %301, label %312

301:                                              ; preds = %296
  %302 = load i8**, i8*** %5, align 8
  %303 = load i32, i32* %6, align 4
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds i8*, i8** %302, i64 %304
  %306 = load i32*, i32** %3, align 8
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %6, align 4
  %309 = sub i32 %307, %308
  %310 = load i32, i32* @sort_func, align 4
  %311 = call i32 @g_qsort_with_data(i8** %305, i32 %309, i32 8, i32 %310, i32* null)
  br label %312

312:                                              ; preds = %301, %296
  %313 = load i32, i32* %25, align 4
  %314 = load i32*, i32** %3, align 8
  %315 = load i32, i32* %314, align 4
  %316 = sub i32 %315, %313
  store i32 %316, i32* %314, align 4
  %317 = call i32 @TICK_N(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %318 = load i8**, i8*** %5, align 8
  store i8** %318, i8*** %2, align 8
  br label %319

319:                                              ; preds = %312, %237, %48, %29
  %320 = load i8**, i8*** %2, align 8
  ret i8** %320
}

declare dso_local i32* @g_getenv(i8*) #1

declare dso_local i32 @TICK_N(i8*) #1

declare dso_local i8* @g_build_filename(i8*, i8*, i32*) #1

declare dso_local i8** @history_get_list(i8*, i32*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @g_strdup(i32*) #1

declare dso_local i8* @g_locale_to_utf8(i8*, i32, i32*, i32*, %struct.TYPE_6__**) #1

declare dso_local i8* @g_get_home_dir(...) #1

declare dso_local i32 @g_debug(i8*, i8*) #1

declare dso_local i32 @g_clear_error(%struct.TYPE_6__**) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i8* @rofi_expand_path(i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i64 @g_str_has_prefix(i8*, i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @g_file_test(i8*, i32) #1

declare dso_local i8* @g_filename_to_utf8(i8*, i32, i32*, i32*, %struct.TYPE_6__**) #1

declare dso_local i64 @g_strcmp0(i8*, i8*) #1

declare dso_local i8** @g_realloc(i8**, i32) #1

declare dso_local i8** @get_apps_external(i8**, i32*, i32) #1

declare dso_local i32 @g_qsort_with_data(i8**, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
