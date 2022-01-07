; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_add_dir_recursive.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_add_dir_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.stat = type { i32 }
%struct.TYPE_6__ = type { i32**, i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.cache_entry = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Failed to open dir %s: %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@seaf = common dso_local global %struct.TYPE_8__* null, align 8
@S_IFDIR = common dso_local global i32 0, align 4
@SYNC_STATUS_ERROR = common dso_local global i64 0, align 8
@PATH_SEPERATOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to stat %s: %s.\0A\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@SYNC_STATUS_IGNORED = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SYNC_STATUS_SYNCING = common dso_local global i64 0, align 8
@SYNC_STATUS_SYNCED = common dso_local global i64 0, align 8
@DIFF_STATUS_DIR_ADDED = common dso_local global i32 0, align 4
@G_NORMALIZE_NFC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.stat*, %struct.TYPE_6__*, i64)* @add_dir_recursive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_dir_recursive(i8* %0, i8* %1, %struct.stat* %2, %struct.TYPE_6__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.stat, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.cache_entry*, align 8
  %23 = alloca i32, align 4
  %24 = alloca [20 x i8], align 16
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.stat* %2, %struct.stat** %9, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %10, align 8
  store i64 %4, i64* %11, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %12, align 8
  %28 = load i64, i64* @TRUE, align 8
  store i64 %28, i64* %19, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32* @g_dir_open(i8* %29, i32 0, i32* null)
  store i32* %30, i32** %13, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %48, label %33

33:                                               ; preds = %5
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @strerror(i32 %35)
  %37 = call i32 @seaf_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @seaf, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* @S_IFDIR, align 4
  %46 = load i64, i64* @SYNC_STATUS_ERROR, align 8
  %47 = call i32 @seaf_sync_manager_update_active_path(i32 %40, i32 %43, i8* %44, i32 %45, i64 %46)
  store i32 0, i32* %6, align 4
  br label %309

48:                                               ; preds = %5
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %49

49:                                               ; preds = %171, %119, %68, %48
  %50 = load i32*, i32** %13, align 8
  %51 = call i8* @g_dir_read_name(i32* %50)
  store i8* %51, i8** %14, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %176

53:                                               ; preds = %49
  %54 = load i32, i32* %18, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* @PATH_SEPERATOR, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = call i8* @g_build_path(i32 %56, i8* %57, i8* %58, i32* null)
  store i8* %59, i8** %15, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %15, align 8
  %64 = call i8* @g_build_filename(i32 %62, i8* %63, i32* null)
  store i8* %64, i8** %16, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = call i64 @stat(i8* %65, %struct.stat* %20)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %53
  %69 = load i8*, i8** %16, align 8
  %70 = load i32, i32* @errno, align 4
  %71 = call i32 @strerror(i32 %70)
  %72 = call i32 @seaf_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %69, i32 %71)
  %73 = load i8*, i8** %15, align 8
  %74 = call i32 @g_free(i8* %73)
  %75 = load i8*, i8** %16, align 8
  %76 = call i32 @g_free(i8* %75)
  br label %49

77:                                               ; preds = %53
  %78 = load i64, i64* %11, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %77
  %81 = load i8*, i8** %8, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @should_ignore(i8* %81, i8* %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %124

88:                                               ; preds = %80, %77
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %90 = icmp ne %struct.TYPE_7__* %89, null
  br i1 %90, label %91, label %119

91:                                               ; preds = %88
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %119

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @S_ISDIR(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load i8*, i8** %15, align 8
  %103 = load i8*, i8** %16, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %105 = load i64, i64* @TRUE, align 8
  %106 = call i32 @add_dir_recursive(i8* %102, i8* %103, %struct.stat* %20, %struct.TYPE_6__* %104, i64 %105)
  br label %118

107:                                              ; preds = %96
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** @seaf, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i8*, i8** %15, align 8
  %115 = load i32, i32* @S_IFREG, align 4
  %116 = load i64, i64* @SYNC_STATUS_IGNORED, align 8
  %117 = call i32 @seaf_sync_manager_update_active_path(i32 %110, i32 %113, i8* %114, i32 %115, i64 %116)
  br label %118

118:                                              ; preds = %107, %101
  br label %119

119:                                              ; preds = %118, %91, %88
  %120 = load i8*, i8** %15, align 8
  %121 = call i32 @g_free(i8* %120)
  %122 = load i8*, i8** %16, align 8
  %123 = call i32 @g_free(i8* %122)
  br label %49

124:                                              ; preds = %80
  %125 = load i32, i32* %17, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %17, align 4
  %127 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @S_ISDIR(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = load i8*, i8** %15, align 8
  %133 = load i8*, i8** %16, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %135 = load i64, i64* @FALSE, align 8
  %136 = call i32 @add_dir_recursive(i8* %132, i8* %133, %struct.stat* %20, %struct.TYPE_6__* %134, i64 %135)
  br label %171

137:                                              ; preds = %124
  %138 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @S_ISREG(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %170

142:                                              ; preds = %137
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i8*, i8** %15, align 8
  %156 = load i8*, i8** %16, align 8
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32**, i32*** %164, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 3
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = call i32 @add_file(i32 %145, i32 %148, i32 %151, i32 %154, i8* %155, i8* %156, %struct.stat* %20, i32 %159, i32 %162, i32** %165, %struct.TYPE_7__* %168)
  br label %170

170:                                              ; preds = %142, %137
  br label %171

171:                                              ; preds = %170, %131
  %172 = load i8*, i8** %15, align 8
  %173 = call i32 @g_free(i8* %172)
  %174 = load i8*, i8** %16, align 8
  %175 = call i32 @g_free(i8* %174)
  br label %49

176:                                              ; preds = %49
  %177 = load i32*, i32** %13, align 8
  %178 = call i32 @g_dir_close(i32* %177)
  %179 = load i64, i64* %11, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %176
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** @seaf, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load i8*, i8** %7, align 8
  %189 = load i32, i32* @S_IFDIR, align 4
  %190 = load i64, i64* @SYNC_STATUS_IGNORED, align 8
  %191 = call i32 @seaf_sync_manager_update_active_path(i32 %184, i32 %187, i8* %188, i32 %189, i64 %190)
  store i32 0, i32* %6, align 4
  br label %309

192:                                              ; preds = %176
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %194 = icmp ne %struct.TYPE_7__* %193, null
  br i1 %194, label %195, label %204

195:                                              ; preds = %192
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load i8*, i8** %7, align 8
  %203 = call i64 @is_path_writable(i32 %198, i32 %201, i8* %202)
  store i64 %203, i64* %19, align 8
  br label %204

204:                                              ; preds = %195, %192
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %206 = icmp ne %struct.TYPE_7__* %205, null
  br i1 %206, label %207, label %248

207:                                              ; preds = %204
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %248

212:                                              ; preds = %207
  %213 = load i32, i32* %18, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %248

215:                                              ; preds = %212
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load i8*, i8** %7, align 8
  %220 = load i8*, i8** %7, align 8
  %221 = call i32 @strlen(i8* %220)
  %222 = call %struct.cache_entry* @index_name_exists(i32 %218, i8* %219, i32 %221, i32 0)
  store %struct.cache_entry* %222, %struct.cache_entry** %22, align 8
  %223 = load %struct.cache_entry*, %struct.cache_entry** %22, align 8
  %224 = icmp ne %struct.cache_entry* %223, null
  br i1 %224, label %227, label %225

225:                                              ; preds = %215
  %226 = load i64, i64* @SYNC_STATUS_SYNCING, align 8
  store i64 %226, i64* %21, align 8
  br label %229

227:                                              ; preds = %215
  %228 = load i64, i64* @SYNC_STATUS_SYNCED, align 8
  store i64 %228, i64* %21, align 8
  br label %229

229:                                              ; preds = %227, %225
  %230 = load i64, i64* %21, align 8
  %231 = load i64, i64* @SYNC_STATUS_SYNCED, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %236, label %233

233:                                              ; preds = %229
  %234 = load i64, i64* %19, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %247

236:                                              ; preds = %233, %229
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** @seaf, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = load i8*, i8** %7, align 8
  %244 = load i32, i32* @S_IFDIR, align 4
  %245 = load i64, i64* %21, align 8
  %246 = call i32 @seaf_sync_manager_update_active_path(i32 %239, i32 %242, i8* %243, i32 %244, i64 %245)
  br label %247

247:                                              ; preds = %236, %233
  br label %248

248:                                              ; preds = %247, %212, %207, %204
  %249 = load i32, i32* %17, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %308

251:                                              ; preds = %248
  %252 = load i8*, i8** %7, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 0
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %308

257:                                              ; preds = %251
  %258 = load i64, i64* %19, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %308

260:                                              ; preds = %257
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  %263 = load i32**, i32*** %262, align 8
  %264 = icmp ne i32** %263, null
  br i1 %264, label %265, label %271

265:                                              ; preds = %260
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 0
  %268 = load i32**, i32*** %267, align 8
  %269 = load i32*, i32** %268, align 8
  %270 = icmp eq i32* %269, null
  br i1 %270, label %271, label %299

271:                                              ; preds = %265, %260
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = load i8*, i8** %7, align 8
  %276 = load %struct.stat*, %struct.stat** %9, align 8
  %277 = call i32 @add_empty_dir_to_index(i32 %274, i8* %275, %struct.stat* %276)
  store i32 %277, i32* %23, align 4
  %278 = load i32, i32* %23, align 4
  %279 = icmp eq i32 %278, 1
  br i1 %279, label %280, label %298

280:                                              ; preds = %271
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %282 = icmp ne %struct.TYPE_7__* %281, null
  br i1 %282, label %283, label %298

283:                                              ; preds = %280
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %298

288:                                              ; preds = %283
  %289 = bitcast [20 x i8]* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %289, i8 0, i64 20, i1 false)
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i32, i32* @DIFF_STATUS_DIR_ADDED, align 4
  %294 = getelementptr inbounds [20 x i8], [20 x i8]* %24, i64 0, i64 0
  %295 = load %struct.stat*, %struct.stat** %9, align 8
  %296 = load i8*, i8** %7, align 8
  %297 = call i32 @add_to_changeset(i64 %292, i32 %293, i8* %294, %struct.stat* %295, i32* null, i8* %296, i32* null)
  br label %298

298:                                              ; preds = %288, %283, %280, %271
  br label %307

299:                                              ; preds = %265
  %300 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 0
  %302 = load i32**, i32*** %301, align 8
  %303 = load i32*, i32** %302, align 8
  %304 = load i8*, i8** %7, align 8
  %305 = call i32 @g_strdup(i8* %304)
  %306 = call i32 @g_queue_push_tail(i32* %303, i32 %305)
  br label %307

307:                                              ; preds = %299, %298
  br label %308

308:                                              ; preds = %307, %257, %251, %248
  store i32 0, i32* %6, align 4
  br label %309

309:                                              ; preds = %308, %181, %33
  %310 = load i32, i32* %6, align 4
  ret i32 %310
}

declare dso_local i32* @g_dir_open(i8*, i32, i32*) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @seaf_sync_manager_update_active_path(i32, i32, i8*, i32, i64) #1

declare dso_local i8* @g_dir_read_name(i32*) #1

declare dso_local i8* @g_build_path(i32, i8*, i8*, i32*) #1

declare dso_local i8* @g_build_filename(i32, i8*, i32*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i64 @should_ignore(i8*, i8*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @add_file(i32, i32, i32, i32, i8*, i8*, %struct.stat*, i32, i32, i32**, %struct.TYPE_7__*) #1

declare dso_local i32 @g_dir_close(i32*) #1

declare dso_local i64 @is_path_writable(i32, i32, i8*) #1

declare dso_local %struct.cache_entry* @index_name_exists(i32, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @add_empty_dir_to_index(i32, i8*, %struct.stat*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @add_to_changeset(i64, i32, i8*, %struct.stat*, i32*, i8*, i32*) #1

declare dso_local i32 @g_queue_push_tail(i32*, i32) #1

declare dso_local i32 @g_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
