; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_dir.c_zfs_dirent_lock.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_dir.c_zfs_dirent_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8*, i32, i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_18__*, i32, i64 }
%struct.TYPE_17__ = type { i32, i64 }

@ZFS_CTLDIR_NAME = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@MT_NORMALIZE = common dso_local global i32 0, align 4
@ZFS_CASE_INSENSITIVE = common dso_local global i64 0, align 8
@ZCIEXACT = common dso_local global i32 0, align 4
@ZFS_CASE_MIXED = common dso_local global i64 0, align 8
@ZCILOOK = common dso_local global i32 0, align 4
@MT_MATCH_CASE = common dso_local global i32 0, align 4
@U8_TEXTPREP_TOUPPER = common dso_local global i32 0, align 4
@ZRENAMING = common dso_local global i32 0, align 4
@ZSHARED = common dso_local global i32 0, align 4
@ZHAVELOCK = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@ZXATTR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@U8_UNICODE_LATEST = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@CV_DEFAULT = common dso_local global i32 0, align 4
@ZEXISTS = common dso_local global i32 0, align 4
@ZNEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_dirent_lock(%struct.TYPE_18__** %0, %struct.TYPE_16__* %1, i8* %2, %struct.TYPE_16__** %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__**, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_16__**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_18__** %0, %struct.TYPE_18__*** %9, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %10, align 8
  store i8* %2, i8** %11, align 8
  store %struct.TYPE_16__** %3, %struct.TYPE_16__*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %24 = call %struct.TYPE_17__* @ZTOZSB(%struct.TYPE_16__* %23)
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %16, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %25 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %12, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %25, align 8
  %26 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %26, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 46
  br i1 %31, label %32, label %50

32:                                               ; preds = %7
  %33 = load i8*, i8** %11, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %32
  %39 = load i8*, i8** %11, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 46
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i8*, i8** %11, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %44, %38, %7
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %52 = call i64 @zfs_has_ctldir(%struct.TYPE_16__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i8*, i8** %11, align 8
  %56 = load i32, i32* @ZFS_CTLDIR_NAME, align 4
  %57 = call i64 @strcmp(i8* %55, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54, %44, %32
  %60 = load i32, i32* @EEXIST, align 4
  %61 = call i32 @SET_ERROR(i32 %60)
  store i32 %61, i32* %8, align 4
  br label %404

62:                                               ; preds = %54, %50
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %95

67:                                               ; preds = %62
  %68 = load i32, i32* @MT_NORMALIZE, align 4
  store i32 %68, i32* %19, align 4
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ZFS_CASE_INSENSITIVE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @ZCIEXACT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %74, %67
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ZFS_CASE_MIXED, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @ZCILOOK, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %85, %74
  %91 = load i32, i32* @MT_MATCH_CASE, align 4
  %92 = load i32, i32* %19, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %19, align 4
  br label %94

94:                                               ; preds = %90, %85, %79
  br label %95

95:                                               ; preds = %94, %62
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %122

100:                                              ; preds = %95
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @ZFS_CASE_MIXED, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %100
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @U8_TEXTPREP_TOUPPER, align 4
  %111 = xor i32 %110, -1
  %112 = and i32 %109, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %106
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @ZCILOOK, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  br label %120

120:                                              ; preds = %114, %106, %100
  %121 = phi i1 [ false, %106 ], [ false, %100 ], [ %119, %114 ]
  br label %122

122:                                              ; preds = %120, %95
  %123 = phi i1 [ true, %95 ], [ %121, %120 ]
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* @ZRENAMING, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  store i32 0, i32* %22, align 4
  br label %134

130:                                              ; preds = %122
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %22, align 4
  br label %134

134:                                              ; preds = %130, %129
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @ZSHARED, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* @ZHAVELOCK, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  br label %145

145:                                              ; preds = %139, %134
  %146 = phi i1 [ true, %134 ], [ %144, %139 ]
  %147 = zext i1 %146 to i32
  %148 = call i32 @ASSERT(i32 %147)
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* @ZHAVELOCK, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %145
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 3
  %156 = load i32, i32* @RW_READER, align 4
  %157 = call i32 @rw_enter(i32* %155, i32 %156)
  br label %158

158:                                              ; preds = %153, %145
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = call i32 @mutex_enter(i32* %160)
  br label %162

162:                                              ; preds = %272, %158
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %187

167:                                              ; preds = %162
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* @ZXATTR, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %187, label %172

172:                                              ; preds = %167
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  %175 = call i32 @mutex_exit(i32* %174)
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* @ZHAVELOCK, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %172
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 3
  %183 = call i32 @rw_exit(i32* %182)
  br label %184

184:                                              ; preds = %180, %172
  %185 = load i32, i32* @ENOENT, align 4
  %186 = call i32 @SET_ERROR(i32 %185)
  store i32 %186, i32* %8, align 4
  br label %404

187:                                              ; preds = %167, %162
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %189, align 8
  store %struct.TYPE_18__* %190, %struct.TYPE_18__** %17, align 8
  br label %191

191:                                              ; preds = %208, %187
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %193 = icmp ne %struct.TYPE_18__* %192, null
  br i1 %193, label %194, label %212

194:                                              ; preds = %191
  %195 = load i8*, i8** %11, align 8
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = load i32, i32* %22, align 4
  %200 = load i32, i32* @U8_UNICODE_LATEST, align 4
  %201 = call i64 @u8_strcmp(i8* %195, i8* %198, i32 0, i32 %199, i32 %200, i32* %21)
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %194
  %204 = load i32, i32* %21, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %203, %194
  br label %212

207:                                              ; preds = %203
  br label %208

208:                                              ; preds = %207
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 5
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %210, align 8
  store %struct.TYPE_18__* %211, %struct.TYPE_18__** %17, align 8
  br label %191

212:                                              ; preds = %206, %191
  %213 = load i32, i32* %21, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %230

215:                                              ; preds = %212
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 1
  %218 = call i32 @mutex_exit(i32* %217)
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* @ZHAVELOCK, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %227, label %223

223:                                              ; preds = %215
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 3
  %226 = call i32 @rw_exit(i32* %225)
  br label %227

227:                                              ; preds = %223, %215
  %228 = load i32, i32* @ENOENT, align 4
  %229 = call i32 @SET_ERROR(i32 %228)
  store i32 %229, i32* %8, align 4
  br label %404

230:                                              ; preds = %212
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %232 = icmp eq %struct.TYPE_18__* %231, null
  br i1 %232, label %233, label %261

233:                                              ; preds = %230
  %234 = load i32, i32* @KM_SLEEP, align 4
  %235 = call i8* @kmem_alloc(i32 40, i32 %234)
  %236 = bitcast i8* %235 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %236, %struct.TYPE_18__** %17, align 8
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 4
  %239 = load i32, i32* @CV_DEFAULT, align 4
  %240 = call i32 @cv_init(i32* %238, i32* null, i32 %239, i32* null)
  %241 = load i8*, i8** %11, align 8
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 0
  store i8* %241, i8** %243, align 8
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 1
  store i32 0, i32* %245, align 8
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 2
  store i32 0, i32* %247, align 4
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 3
  store i32 0, i32* %249, align 8
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 6
  store %struct.TYPE_16__* %250, %struct.TYPE_16__** %252, align 8
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 2
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %254, align 8
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 5
  store %struct.TYPE_18__* %255, %struct.TYPE_18__** %257, align 8
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 2
  store %struct.TYPE_18__* %258, %struct.TYPE_18__** %260, align 8
  br label %278

261:                                              ; preds = %230
  %262 = load i32, i32* %13, align 4
  %263 = load i32, i32* @ZSHARED, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %261
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %266
  br label %278

272:                                              ; preds = %266, %261
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 4
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 1
  %277 = call i32 @cv_wait(i32* %274, i32* %276)
  br label %162

278:                                              ; preds = %271, %233
  %279 = load i32, i32* %13, align 4
  %280 = load i32, i32* @ZHAVELOCK, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %278
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i32 0, i32 2
  store i32 1, i32* %285, align 4
  br label %286

286:                                              ; preds = %283, %278
  %287 = load i32, i32* %13, align 4
  %288 = load i32, i32* @ZSHARED, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %326

291:                                              ; preds = %286
  %292 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %293, align 8
  %296 = icmp sgt i32 %295, 1
  br i1 %296, label %297, label %326

297:                                              ; preds = %291
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 8
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %326

302:                                              ; preds = %297
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 0
  %305 = load i8*, i8** %304, align 8
  %306 = call i32 @strlen(i8* %305)
  %307 = add nsw i32 %306, 1
  %308 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %309 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i32 0, i32 3
  store i32 %307, i32* %309, align 8
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @KM_SLEEP, align 4
  %314 = call i8* @kmem_alloc(i32 %312, i32 %313)
  store i8* %314, i8** %11, align 8
  %315 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i32 0, i32 0
  %317 = load i8*, i8** %316, align 8
  %318 = load i8*, i8** %11, align 8
  %319 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %320 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 8
  %322 = call i32 @bcopy(i8* %317, i8* %318, i32 %321)
  %323 = load i8*, i8** %11, align 8
  %324 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %325 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %324, i32 0, i32 0
  store i8* %323, i8** %325, align 8
  br label %326

326:                                              ; preds = %302, %297, %291, %286
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 1
  %329 = call i32 @mutex_exit(i32* %328)
  %330 = load i32, i32* %13, align 4
  %331 = load i32, i32* @ZXATTR, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %353

334:                                              ; preds = %326
  %335 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %339 = call i32 @SA_ZPL_XATTR(%struct.TYPE_17__* %338)
  %340 = call i32 @sa_lookup(i32 %337, i32 %339, i64* %20, i32 8)
  store i32 %340, i32* %21, align 4
  %341 = load i32, i32* %21, align 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %352

343:                                              ; preds = %334
  %344 = load i64, i64* %20, align 8
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %343
  %347 = load i32, i32* @ENOENT, align 4
  %348 = call i32 @SET_ERROR(i32 %347)
  br label %350

349:                                              ; preds = %343
  br label %350

350:                                              ; preds = %349, %346
  %351 = phi i32 [ %348, %346 ], [ 0, %349 ]
  store i32 %351, i32* %21, align 4
  br label %352

352:                                              ; preds = %350, %334
  br label %362

353:                                              ; preds = %326
  %354 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %355 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %356 = load i8*, i8** %11, align 8
  %357 = load i32, i32* %19, align 4
  %358 = load i32, i32* %18, align 4
  %359 = load i32*, i32** %14, align 8
  %360 = load i32*, i32** %15, align 8
  %361 = call i32 @zfs_match_find(%struct.TYPE_17__* %354, %struct.TYPE_16__* %355, i8* %356, i32 %357, i32 %358, i32* %359, i32* %360, i64* %20)
  store i32 %361, i32* %21, align 4
  br label %362

362:                                              ; preds = %353, %352
  %363 = load i32, i32* %21, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %379

365:                                              ; preds = %362
  %366 = load i32, i32* %21, align 4
  %367 = load i32, i32* @ENOENT, align 4
  %368 = icmp ne i32 %366, %367
  br i1 %368, label %374, label %369

369:                                              ; preds = %365
  %370 = load i32, i32* %13, align 4
  %371 = load i32, i32* @ZEXISTS, align 4
  %372 = and i32 %370, %371
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %378

374:                                              ; preds = %369, %365
  %375 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %376 = call i32 @zfs_dirent_unlock(%struct.TYPE_18__* %375)
  %377 = load i32, i32* %21, align 4
  store i32 %377, i32* %8, align 4
  br label %404

378:                                              ; preds = %369
  br label %401

379:                                              ; preds = %362
  %380 = load i32, i32* %13, align 4
  %381 = load i32, i32* @ZNEW, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %389

384:                                              ; preds = %379
  %385 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %386 = call i32 @zfs_dirent_unlock(%struct.TYPE_18__* %385)
  %387 = load i32, i32* @EEXIST, align 4
  %388 = call i32 @SET_ERROR(i32 %387)
  store i32 %388, i32* %8, align 4
  br label %404

389:                                              ; preds = %379
  %390 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %391 = load i64, i64* %20, align 8
  %392 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %12, align 8
  %393 = call i32 @zfs_zget(%struct.TYPE_17__* %390, i64 %391, %struct.TYPE_16__** %392)
  store i32 %393, i32* %21, align 4
  %394 = load i32, i32* %21, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %400

396:                                              ; preds = %389
  %397 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %398 = call i32 @zfs_dirent_unlock(%struct.TYPE_18__* %397)
  %399 = load i32, i32* %21, align 4
  store i32 %399, i32* %8, align 4
  br label %404

400:                                              ; preds = %389
  br label %401

401:                                              ; preds = %400, %378
  %402 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %403 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  store %struct.TYPE_18__* %402, %struct.TYPE_18__** %403, align 8
  store i32 0, i32* %8, align 4
  br label %404

404:                                              ; preds = %401, %396, %384, %374, %227, %184, %59
  %405 = load i32, i32* %8, align 4
  ret i32 %405
}

declare dso_local %struct.TYPE_17__* @ZTOZSB(%struct.TYPE_16__*) #1

declare dso_local i64 @zfs_has_ctldir(%struct.TYPE_16__*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i64 @u8_strcmp(i8*, i8*, i32, i32, i32, i32*) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @cv_init(i32*, i32*, i32, i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @sa_lookup(i32, i32, i64*, i32) #1

declare dso_local i32 @SA_ZPL_XATTR(%struct.TYPE_17__*) #1

declare dso_local i32 @zfs_match_find(%struct.TYPE_17__*, %struct.TYPE_16__*, i8*, i32, i32, i32*, i32*, i64*) #1

declare dso_local i32 @zfs_dirent_unlock(%struct.TYPE_18__*) #1

declare dso_local i32 @zfs_zget(%struct.TYPE_17__*, i64, %struct.TYPE_16__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
