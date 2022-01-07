; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_diff.c_get_snapshot_names.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_diff.c_get_snapshot_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i8*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Badly formed snapshot name %s\00", align 1
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@EZFS_INVALIDNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Unable to determine which snapshots to compare\00", align 1
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_PROP_ORIGIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Not an earlier snapshot from the same fs\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i8*)* @get_snapshot_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_snapshot_names(%struct.TYPE_6__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %80

28:                                               ; preds = %3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TEXT_DOMAIN, align 4
  %33 = call i8* @dgettext(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %31, i32 4, i8* %33, i8* %34)
  %36 = load i32*, i32** %8, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %39 = load i32, i32* @B_FALSE, align 4
  %40 = call i32 @zfs_validate_name(i32* %36, i8* %37, i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %28
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @zfs_error(i32* %43, i32 %44, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %324

49:                                               ; preds = %28
  %50 = load i8*, i8** %6, align 8
  %51 = call i8* @strchr(i8* %50, i8 signext 64)
  store i8* %51, i8** %9, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ne i8* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @ASSERT(i32 %54)
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %11, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i8* @zfs_strdup(i32* %62, i8* %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i8* @zfs_strdup(i32* %67, i8* %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8 0, i8* %77, align 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = call i32 @make_temp_snapshot(%struct.TYPE_6__* %78)
  store i32 %79, i32* %4, align 4
  br label %324

80:                                               ; preds = %3
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @TEXT_DOMAIN, align 4
  %85 = call i8* @dgettext(i32 %84, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %86 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %83, i32 4, i8* %85)
  %87 = load i8*, i8** %6, align 8
  %88 = call i8* @strchr(i8* %87, i8 signext 64)
  store i8* %88, i8** %9, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = call i8* @strchr(i8* %89, i8 signext 64)
  store i8* %90, i8** %10, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %80
  %94 = load i8*, i8** %9, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  br label %103

99:                                               ; preds = %80
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @strlen(i8* %100)
  %102 = sext i32 %101 to i64
  br label %103

103:                                              ; preds = %99, %93
  %104 = phi i64 [ %98, %93 ], [ %102, %99 ]
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %11, align 4
  %106 = load i8*, i8** %10, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load i8*, i8** %10, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = ptrtoint i8* %109 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  br label %118

114:                                              ; preds = %103
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @strlen(i8* %115)
  %117 = sext i32 %116 to i64
  br label %118

118:                                              ; preds = %114, %108
  %119 = phi i64 [ %113, %108 ], [ %117, %114 ]
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %13, align 4
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 @strlen(i8* %121)
  %123 = load i32, i32* %11, align 4
  %124 = sub nsw i32 %122, %123
  store i32 %124, i32* %12, align 4
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 @strlen(i8* %125)
  %127 = load i32, i32* %13, align 4
  %128 = sub nsw i32 %126, %127
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp sle i32 %129, 1
  br i1 %130, label %140, label %131

131:                                              ; preds = %118
  %132 = load i32, i32* %14, align 4
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %140, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %11, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %134
  %138 = load i32, i32* %13, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %137, %131, %118
  %141 = load i32*, i32** %8, align 8
  %142 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @zfs_error(i32* %141, i32 %142, i32 %145)
  store i32 %146, i32* %4, align 4
  br label %324

147:                                              ; preds = %137, %134
  %148 = load i32, i32* %11, align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %265

150:                                              ; preds = %147
  %151 = load i32, i32* %13, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %265

153:                                              ; preds = %150
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %11, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %163, label %157

157:                                              ; preds = %153
  %158 = load i8*, i8** %6, align 8
  %159 = load i8*, i8** %7, align 8
  %160 = load i32, i32* %11, align 4
  %161 = call i64 @strncmp(i8* %158, i8* %159, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %265

163:                                              ; preds = %157, %153
  %164 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %165 = zext i32 %164 to i64
  %166 = call i8* @llvm.stacksave()
  store i8* %166, i8** %15, align 8
  %167 = alloca i8, i64 %165, align 16
  store i64 %165, i64* %16, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 5
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %13, align 4
  %174 = add nsw i32 %173, 1
  %175 = call i8* @zfs_alloc(i32* %172, i32 %174)
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  store i8* %175, i8** %177, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = load i8*, i8** %7, align 8
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @strncpy(i8* %180, i8* %181, i32 %182)
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = load i32, i32* %13, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  store i8 0, i8* %189, align 1
  %190 = load i32*, i32** %8, align 8
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %195 = call i32* @zfs_open(i32* %190, i8* %193, i32 %194)
  store i32* %195, i32** %18, align 8
  br label %196

196:                                              ; preds = %215, %163
  %197 = load i32*, i32** %18, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %221

199:                                              ; preds = %196
  %200 = load i32*, i32** %18, align 8
  %201 = load i32, i32* @ZFS_PROP_ORIGIN, align 4
  %202 = trunc i64 %165 to i32
  %203 = load i32, i32* @B_FALSE, align 4
  %204 = call i64 @zfs_prop_get(i32* %200, i32 %201, i8* %167, i32 %202, i32* %17, i32* null, i32 0, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %199
  %207 = load i32*, i32** %18, align 8
  %208 = call i32 @zfs_close(i32* %207)
  store i32* null, i32** %18, align 8
  br label %221

209:                                              ; preds = %199
  %210 = load i8*, i8** %6, align 8
  %211 = load i32, i32* %12, align 4
  %212 = call i64 @strncmp(i8* %167, i8* %210, i32 %211)
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  br label %221

215:                                              ; preds = %209
  %216 = load i32*, i32** %18, align 8
  %217 = call i32 @zfs_close(i32* %216)
  %218 = load i32*, i32** %8, align 8
  %219 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %220 = call i32* @zfs_open(i32* %218, i8* %167, i32 %219)
  store i32* %220, i32** %18, align 8
  br label %196

221:                                              ; preds = %214, %206, %196
  %222 = load i32*, i32** %18, align 8
  %223 = icmp eq i32* %222, null
  br i1 %223, label %224, label %237

224:                                              ; preds = %221
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @TEXT_DOMAIN, align 4
  %229 = call i8* @dgettext(i32 %228, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %230 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %227, i32 4, i8* %229)
  %231 = load i32*, i32** %8, align 8
  %232 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @zfs_error(i32* %231, i32 %232, i32 %235)
  store i32 %236, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %261

237:                                              ; preds = %221
  %238 = load i32*, i32** %18, align 8
  %239 = call i32 @zfs_close(i32* %238)
  br label %240

240:                                              ; preds = %237
  %241 = load i32, i32* @B_TRUE, align 4
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 3
  store i32 %241, i32* %243, align 8
  %244 = load i32*, i32** %8, align 8
  %245 = load i8*, i8** %6, align 8
  %246 = call i8* @zfs_strdup(i32* %244, i8* %245)
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 2
  store i8* %246, i8** %248, align 8
  %249 = load i32, i32* %14, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %240
  %252 = load i32*, i32** %8, align 8
  %253 = load i8*, i8** %7, align 8
  %254 = call i8* @zfs_strdup(i32* %252, i8* %253)
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 1
  store i8* %254, i8** %256, align 8
  br label %260

257:                                              ; preds = %240
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %259 = call i32 @make_temp_snapshot(%struct.TYPE_6__* %258)
  store i32 %259, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %261

260:                                              ; preds = %251
  store i32 0, i32* %19, align 4
  br label %261

261:                                              ; preds = %260, %257, %224
  %262 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %262)
  %263 = load i32, i32* %19, align 4
  switch i32 %263, label %326 [
    i32 0, label %264
    i32 1, label %324
  ]

264:                                              ; preds = %261
  br label %322

265:                                              ; preds = %157, %150, %147
  %266 = load i32, i32* %11, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %265
  %269 = load i32, i32* %11, align 4
  br label %272

270:                                              ; preds = %265
  %271 = load i32, i32* %13, align 4
  br label %272

272:                                              ; preds = %270, %268
  %273 = phi i32 [ %269, %268 ], [ %271, %270 ]
  store i32 %273, i32* %20, align 4
  %274 = load i32*, i32** %8, align 8
  %275 = load i32, i32* %20, align 4
  %276 = add nsw i32 %275, 1
  %277 = call i8* @zfs_alloc(i32* %274, i32 %276)
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 0
  store i8* %277, i8** %279, align 8
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 0
  %282 = load i8*, i8** %281, align 8
  %283 = load i32, i32* %11, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %272
  %286 = load i8*, i8** %6, align 8
  br label %289

287:                                              ; preds = %272
  %288 = load i8*, i8** %7, align 8
  br label %289

289:                                              ; preds = %287, %285
  %290 = phi i8* [ %286, %285 ], [ %288, %287 ]
  %291 = load i32, i32* %20, align 4
  %292 = call i32 @strncpy(i8* %282, i8* %290, i32 %291)
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 0
  %295 = load i8*, i8** %294, align 8
  %296 = load i32, i32* %20, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8, i8* %295, i64 %297
  store i8 0, i8* %298, align 1
  %299 = load i32*, i32** %8, align 8
  %300 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 0
  %302 = load i8*, i8** %301, align 8
  %303 = load i8*, i8** %9, align 8
  %304 = call i8* @zfs_asprintf(i32* %299, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %302, i8* %303)
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 2
  store i8* %304, i8** %306, align 8
  %307 = load i32, i32* %14, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %318

309:                                              ; preds = %289
  %310 = load i32*, i32** %8, align 8
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8
  %314 = load i8*, i8** %10, align 8
  %315 = call i8* @zfs_asprintf(i32* %310, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %313, i8* %314)
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 1
  store i8* %315, i8** %317, align 8
  br label %321

318:                                              ; preds = %289
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %320 = call i32 @make_temp_snapshot(%struct.TYPE_6__* %319)
  store i32 %320, i32* %4, align 4
  br label %324

321:                                              ; preds = %309
  br label %322

322:                                              ; preds = %321, %264
  br label %323

323:                                              ; preds = %322
  store i32 0, i32* %4, align 4
  br label %324

324:                                              ; preds = %323, %318, %261, %140, %49, %42
  %325 = load i32, i32* %4, align 4
  ret i32 %325

326:                                              ; preds = %261
  unreachable
}

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i32 @zfs_validate_name(i32*, i8*, i32, i32) #1

declare dso_local i32 @zfs_error(i32*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @zfs_strdup(i32*, i8*) #1

declare dso_local i32 @make_temp_snapshot(%struct.TYPE_6__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @zfs_alloc(i32*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32* @zfs_open(i32*, i8*, i32) #1

declare dso_local i64 @zfs_prop_get(i32*, i32, i8*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @zfs_close(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i8* @zfs_asprintf(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
