; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfs_vget.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfs_vget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_13__ = type { i32, i64, i32 }
%struct.TYPE_15__ = type { i64*, i64* }
%struct.TYPE_16__ = type { i64*, i64* }

@SHORT_FID_LEN = common dso_local global i64 0, align 8
@LONG_FID_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ZFSCTL_INO_SNAPDIRS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"snapdir fid: objsetid (%llu) != ZFSCTL_INO_SNAPDIRS (%llu) - object (%llu)\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"snapdir fid: fid_gen (%llu) and setgen (%llu)\0A\00", align 1
@ZFSCTL_INO_ROOT = common dso_local global i32 0, align 4
@ZFSCTL_INO_SNAPDIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"snapshot\00", align 1
@kcred = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"getting %llu [%llu mask %llx]\0A\00", align 1
@ZFS_XATTR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"znode gen (%llu) != fid gen (%llu)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_vget(%struct.super_block* %0, %struct.inode** %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.inode**, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.inode** %1, %struct.inode*** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 0
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %23 = load %struct.inode**, %struct.inode*** %6, align 8
  store %struct.inode* null, %struct.inode** %23, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SHORT_FID_LEN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %3
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @LONG_FID_LEN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %82

35:                                               ; preds = %29, %3
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %37 = bitcast %struct.TYPE_17__* %36 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %16, align 8
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %56, %35
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ult i64 %40, 8
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* %14, align 4
  %52 = mul nsw i32 8, %51
  %53 = shl i32 %50, %52
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %42
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %14, align 4
  br label %38

59:                                               ; preds = %38
  store i32 0, i32* %14, align 4
  br label %60

60:                                               ; preds = %78, %59
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp ult i64 %62, 8
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* %14, align 4
  %74 = mul nsw i32 8, %73
  %75 = shl i32 %72, %74
  %76 = load i32, i32* %11, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %64
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %60

81:                                               ; preds = %60
  br label %85

82:                                               ; preds = %29
  %83 = load i32, i32* @EINVAL, align 4
  %84 = call i32 @SET_ERROR(i32 %83)
  store i32 %84, i32* %4, align 4
  br label %303

85:                                               ; preds = %81
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @LONG_FID_LEN, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %168

91:                                               ; preds = %85
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %93 = bitcast %struct.TYPE_17__* %92 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %93, %struct.TYPE_16__** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %14, align 4
  br label %94

94:                                               ; preds = %112, %91
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp ult i64 %96, 8
  br i1 %97, label %98, label %115

98:                                               ; preds = %94
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = load i32, i32* %14, align 4
  %108 = mul nsw i32 8, %107
  %109 = shl i32 %106, %108
  %110 = load i32, i32* %18, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %18, align 4
  br label %112

112:                                              ; preds = %98
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %14, align 4
  br label %94

115:                                              ; preds = %94
  store i32 0, i32* %14, align 4
  br label %116

116:                                              ; preds = %134, %115
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = icmp ult i64 %118, 8
  br i1 %119, label %120, label %137

120:                                              ; preds = %116
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = load i32, i32* %14, align 4
  %130 = mul nsw i32 8, %129
  %131 = shl i32 %128, %130
  %132 = load i32, i32* %19, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %19, align 4
  br label %134

134:                                              ; preds = %120
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %14, align 4
  br label %116

137:                                              ; preds = %116
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* @ZFSCTL_INO_SNAPDIRS, align 4
  %140 = load i32, i32* %10, align 4
  %141 = sub nsw i32 %139, %140
  %142 = icmp ne i32 %138, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %137
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* @ZFSCTL_INO_SNAPDIRS, align 4
  %146 = load i32, i32* %10, align 4
  %147 = call i32 (i8*, i32, i32, ...) @dprintf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %144, i32 %145, i32 %146)
  %148 = load i32, i32* @EINVAL, align 4
  %149 = call i32 @SET_ERROR(i32 %148)
  store i32 %149, i32* %4, align 4
  br label %303

150:                                              ; preds = %137
  %151 = load i32, i32* %11, align 4
  %152 = icmp sgt i32 %151, 1
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %19, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %153, %150
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %19, align 4
  %159 = call i32 (i8*, i32, i32, ...) @dprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %157, i32 %158)
  %160 = load i32, i32* @EINVAL, align 4
  %161 = call i32 @SET_ERROR(i32 %160)
  store i32 %161, i32* %4, align 4
  br label %303

162:                                              ; preds = %153
  %163 = load %struct.super_block*, %struct.super_block** %5, align 8
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load %struct.inode**, %struct.inode*** %6, align 8
  %167 = call i32 @zfsctl_snapdir_vget(%struct.super_block* %163, i32 %164, i32 %165, %struct.inode** %166)
  store i32 %167, i32* %4, align 4
  br label %303

168:                                              ; preds = %85
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %170 = call i32 @ZFS_ENTER(%struct.TYPE_14__* %169)
  %171 = load i32, i32* %11, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %210

173:                                              ; preds = %168
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @ZFSCTL_INO_ROOT, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %181, label %177

177:                                              ; preds = %173
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* @ZFSCTL_INO_SNAPDIR, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %210

181:                                              ; preds = %177, %173
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 1
  %184 = load %struct.inode*, %struct.inode** %183, align 8
  %185 = load %struct.inode**, %struct.inode*** %6, align 8
  store %struct.inode* %184, %struct.inode** %185, align 8
  %186 = load %struct.inode**, %struct.inode*** %6, align 8
  %187 = load %struct.inode*, %struct.inode** %186, align 8
  %188 = icmp ne %struct.inode* %187, null
  %189 = zext i1 %188 to i32
  %190 = call i32 @ASSERT(i32 %189)
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* @ZFSCTL_INO_SNAPDIR, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %203

194:                                              ; preds = %181
  %195 = load %struct.inode**, %struct.inode*** %6, align 8
  %196 = load %struct.inode*, %struct.inode** %195, align 8
  %197 = load %struct.inode**, %struct.inode*** %6, align 8
  %198 = load i32, i32* @kcred, align 4
  %199 = call i64 @zfsctl_root_lookup(%struct.inode* %196, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.inode** %197, i32 0, i32 %198, i32* null, i32* null)
  %200 = icmp eq i64 %199, 0
  %201 = zext i1 %200 to i32
  %202 = call i32 @VERIFY(i32 %201)
  br label %207

203:                                              ; preds = %181
  %204 = load %struct.inode**, %struct.inode*** %6, align 8
  %205 = load %struct.inode*, %struct.inode** %204, align 8
  %206 = call i32 @igrab(%struct.inode* %205)
  br label %207

207:                                              ; preds = %203, %194
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %209 = call i32 @ZFS_EXIT(%struct.TYPE_14__* %208)
  store i32 0, i32* %4, align 4
  br label %303

210:                                              ; preds = %177, %168
  %211 = load i32, i32* %14, align 4
  %212 = mul nsw i32 8, %211
  %213 = sub nsw i32 64, %212
  %214 = zext i32 %213 to i64
  %215 = lshr i64 -1, %214
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %12, align 4
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* %12, align 4
  %220 = call i32 (i8*, i32, i32, ...) @dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %217, i32 %218, i32 %219)
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %222 = load i32, i32* %10, align 4
  %223 = call i32 @zfs_zget(%struct.TYPE_14__* %221, i32 %222, %struct.TYPE_13__** %9)
  store i32 %223, i32* %15, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %210
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %227 = call i32 @ZFS_EXIT(%struct.TYPE_14__* %226)
  %228 = load i32, i32* %15, align 4
  store i32 %228, i32* %4, align 4
  br label %303

229:                                              ; preds = %210
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @ZFS_XATTR, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %229
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %238 = call %struct.inode* @ZTOI(%struct.TYPE_13__* %237)
  %239 = call i32 @iput(%struct.inode* %238)
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %241 = call i32 @ZFS_EXIT(%struct.TYPE_14__* %240)
  %242 = load i32, i32* @ENOENT, align 4
  %243 = call i32 @SET_ERROR(i32 %242)
  store i32 %243, i32* %4, align 4
  br label %303

244:                                              ; preds = %229
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %249 = call i32 @SA_ZPL_GEN(%struct.TYPE_14__* %248)
  %250 = call i32 @sa_lookup(i32 %247, i32 %249, i32* %13, i32 4)
  %251 = load i32, i32* %13, align 4
  %252 = load i32, i32* %12, align 4
  %253 = and i32 %251, %252
  store i32 %253, i32* %13, align 4
  %254 = load i32, i32* %13, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %244
  store i32 1, i32* %13, align 4
  br label %257

257:                                              ; preds = %256, %244
  %258 = load i32, i32* %11, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %268

260:                                              ; preds = %257
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* %10, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %268

266:                                              ; preds = %260
  %267 = load i32, i32* %13, align 4
  store i32 %267, i32* %11, align 4
  br label %268

268:                                              ; preds = %266, %260, %257
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %277, label %273

273:                                              ; preds = %268
  %274 = load i32, i32* %13, align 4
  %275 = load i32, i32* %11, align 4
  %276 = icmp ne i32 %274, %275
  br i1 %276, label %277, label %288

277:                                              ; preds = %273, %268
  %278 = load i32, i32* %13, align 4
  %279 = load i32, i32* %11, align 4
  %280 = call i32 (i8*, i32, i32, ...) @dprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %278, i32 %279)
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %282 = call %struct.inode* @ZTOI(%struct.TYPE_13__* %281)
  %283 = call i32 @iput(%struct.inode* %282)
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %285 = call i32 @ZFS_EXIT(%struct.TYPE_14__* %284)
  %286 = load i32, i32* @ENOENT, align 4
  %287 = call i32 @SET_ERROR(i32 %286)
  store i32 %287, i32* %4, align 4
  br label %303

288:                                              ; preds = %273
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %290 = call %struct.inode* @ZTOI(%struct.TYPE_13__* %289)
  %291 = load %struct.inode**, %struct.inode*** %6, align 8
  store %struct.inode* %290, %struct.inode** %291, align 8
  %292 = load %struct.inode**, %struct.inode*** %6, align 8
  %293 = load %struct.inode*, %struct.inode** %292, align 8
  %294 = icmp ne %struct.inode* %293, null
  br i1 %294, label %295, label %300

295:                                              ; preds = %288
  %296 = load %struct.inode**, %struct.inode*** %6, align 8
  %297 = load %struct.inode*, %struct.inode** %296, align 8
  %298 = call i32 @ITOZ(%struct.inode* %297)
  %299 = call i32 @zfs_inode_update(i32 %298)
  br label %300

300:                                              ; preds = %295, %288
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %302 = call i32 @ZFS_EXIT(%struct.TYPE_14__* %301)
  store i32 0, i32* %4, align 4
  br label %303

303:                                              ; preds = %300, %277, %236, %225, %207, %162, %156, %143, %82
  %304 = load i32, i32* %4, align 4
  ret i32 %304
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dprintf(i8*, i32, i32, ...) #1

declare dso_local i32 @zfsctl_snapdir_vget(%struct.super_block*, i32, i32, %struct.inode**) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_14__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @zfsctl_root_lookup(%struct.inode*, i8*, %struct.inode**, i32, i32, i32*, i32*) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_14__*) #1

declare dso_local i32 @zfs_zget(%struct.TYPE_14__*, i32, %struct.TYPE_13__**) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.inode* @ZTOI(%struct.TYPE_13__*) #1

declare dso_local i32 @sa_lookup(i32, i32, i32*, i32) #1

declare dso_local i32 @SA_ZPL_GEN(%struct.TYPE_14__*) #1

declare dso_local i32 @zfs_inode_update(i32) #1

declare dso_local i32 @ITOZ(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
