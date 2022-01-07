; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_symlink.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_39__ = type { i8, i32, i32, i64, i32 }
%struct.TYPE_40__ = type { %struct.TYPE_38__*, i32, i64, i64, i32* }
%struct.TYPE_38__ = type { i64 }
%struct.TYPE_41__ = type { %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i64 }

@ZNEW = common dso_local global i32 0, align 4
@TX_SYMLINK = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@U8_VALIDATE_ENTIRE = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@FIGNORECASE = common dso_local global i32 0, align 4
@ZCILOOK = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@ACE_ADD_FILE = common dso_local global i32 0, align 4
@ZFS_DEFAULT_PROJID = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@DMU_NEW_OBJECT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ZFS_SA_BASE_ATTR_SIZE = common dso_local global i64 0, align 8
@ZFS_ACE_SPACE = common dso_local global i64 0, align 8
@TXG_NOTHROTTLE = common dso_local global i32 0, align 4
@TXG_NOWAIT = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@TX_CI = common dso_local global i64 0, align 8
@ZFS_SYNC_ALWAYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_symlink(%struct.inode* %0, i8* %1, %struct.TYPE_42__* %2, i8* %3, %struct.inode** %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_42__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.inode**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_39__*, align 8
  %17 = alloca %struct.TYPE_39__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_40__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_41__, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.TYPE_42__* %2, %struct.TYPE_42__** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.inode** %4, %struct.inode*** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %29 = load %struct.inode*, %struct.inode** %9, align 8
  %30 = call %struct.TYPE_39__* @ITOZ(%struct.inode* %29)
  store %struct.TYPE_39__* %30, %struct.TYPE_39__** %17, align 8
  %31 = load %struct.inode*, %struct.inode** %9, align 8
  %32 = call %struct.TYPE_40__* @ITOZSB(%struct.inode* %31)
  store %struct.TYPE_40__* %32, %struct.TYPE_40__** %20, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = call i64 @strlen(i8* %33)
  store i64 %34, i64* %22, align 8
  %35 = load i32, i32* @ZNEW, align 4
  store i32 %35, i32* %24, align 4
  %36 = load i64, i64* @TX_SYMLINK, align 8
  store i64 %36, i64* %27, align 8
  %37 = load i64, i64* @B_FALSE, align 8
  store i64 %37, i64* %28, align 8
  %38 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @S_ISLNK(i32 %40)
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load i8*, i8** %10, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %7
  %46 = load i32, i32* @EINVAL, align 4
  %47 = call i32 @SET_ERROR(i32 %46)
  store i32 %47, i32* %8, align 4
  br label %357

48:                                               ; preds = %7
  %49 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %50 = call i32 @ZFS_ENTER(%struct.TYPE_40__* %49)
  %51 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %52 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_39__* %51)
  %53 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %54 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %21, align 8
  %56 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %57 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %48
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = call i64 @strlen(i8* %62)
  %64 = load i32, i32* @U8_VALIDATE_ENTIRE, align 4
  %65 = call i64 @u8_validate(i8* %61, i64 %63, i32* null, i32 %64, i32* %23)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %69 = call i32 @ZFS_EXIT(%struct.TYPE_40__* %68)
  %70 = load i32, i32* @EILSEQ, align 4
  %71 = call i32 @SET_ERROR(i32 %70)
  store i32 %71, i32* %8, align 4
  br label %357

72:                                               ; preds = %60, %48
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @FIGNORECASE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* @ZCILOOK, align 4
  %79 = load i32, i32* %24, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %24, align 4
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i64, i64* %22, align 8
  %83 = load i64, i64* @MAXPATHLEN, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %87 = call i32 @ZFS_EXIT(%struct.TYPE_40__* %86)
  %88 = load i32, i32* @ENAMETOOLONG, align 4
  %89 = call i32 @SET_ERROR(i32 %88)
  store i32 %89, i32* %8, align 4
  br label %357

90:                                               ; preds = %81
  %91 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %92 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %93 = load i32*, i32** %14, align 8
  %94 = call i32 @zfs_acl_ids_create(%struct.TYPE_39__* %91, i32 0, %struct.TYPE_42__* %92, i32* %93, i32* null, %struct.TYPE_41__* %25)
  store i32 %94, i32* %23, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %98 = call i32 @ZFS_EXIT(%struct.TYPE_40__* %97)
  %99 = load i32, i32* %23, align 4
  store i32 %99, i32* %8, align 4
  br label %357

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %223, %100
  %102 = load %struct.inode**, %struct.inode*** %13, align 8
  store %struct.inode* null, %struct.inode** %102, align 8
  %103 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = load i32, i32* %24, align 4
  %106 = call i32 @zfs_dirent_lock(i32** %18, %struct.TYPE_39__* %103, i8* %104, %struct.TYPE_39__** %16, i32 %105, i32* null, i32* null)
  store i32 %106, i32* %23, align 4
  %107 = load i32, i32* %23, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %101
  %110 = call i32 @zfs_acl_ids_free(%struct.TYPE_41__* %25)
  %111 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %112 = call i32 @ZFS_EXIT(%struct.TYPE_40__* %111)
  %113 = load i32, i32* %23, align 4
  store i32 %113, i32* %8, align 4
  br label %357

114:                                              ; preds = %101
  %115 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %116 = load i32, i32* @ACE_ADD_FILE, align 4
  %117 = load i64, i64* @B_FALSE, align 8
  %118 = load i32*, i32** %14, align 8
  %119 = call i32 @zfs_zaccess(%struct.TYPE_39__* %115, i32 %116, i32 0, i64 %117, i32* %118)
  store i32 %119, i32* %23, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %114
  %122 = call i32 @zfs_acl_ids_free(%struct.TYPE_41__* %25)
  %123 = load i32*, i32** %18, align 8
  %124 = call i32 @zfs_dirent_unlock(i32* %123)
  %125 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %126 = call i32 @ZFS_EXIT(%struct.TYPE_40__* %125)
  %127 = load i32, i32* %23, align 4
  store i32 %127, i32* %8, align 4
  br label %357

128:                                              ; preds = %114
  %129 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %130 = load i32, i32* @ZFS_DEFAULT_PROJID, align 4
  %131 = call i64 @zfs_acl_ids_overquota(%struct.TYPE_40__* %129, %struct.TYPE_41__* %25, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %128
  %134 = call i32 @zfs_acl_ids_free(%struct.TYPE_41__* %25)
  %135 = load i32*, i32** %18, align 8
  %136 = call i32 @zfs_dirent_unlock(i32* %135)
  %137 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %138 = call i32 @ZFS_EXIT(%struct.TYPE_40__* %137)
  %139 = load i32, i32* @EDQUOT, align 4
  %140 = call i32 @SET_ERROR(i32 %139)
  store i32 %140, i32* %8, align 4
  br label %357

141:                                              ; preds = %128
  %142 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %143 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_38__*, %struct.TYPE_38__** %143, align 8
  %145 = call i32* @dmu_tx_create(%struct.TYPE_38__* %144)
  store i32* %145, i32** %19, align 8
  %146 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %147 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %26, align 8
  %149 = load i32*, i32** %19, align 8
  %150 = load i32, i32* @DMU_NEW_OBJECT, align 4
  %151 = load i64, i64* %22, align 8
  %152 = call i64 @MAX(i32 1, i64 %151)
  %153 = call i32 @dmu_tx_hold_write(i32* %149, i32 %150, i32 0, i64 %152)
  %154 = load i32*, i32** %19, align 8
  %155 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %156 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @TRUE, align 4
  %159 = load i8*, i8** %10, align 8
  %160 = call i32 @dmu_tx_hold_zap(i32* %154, i32 %157, i32 %158, i8* %159)
  %161 = load i32*, i32** %19, align 8
  %162 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %25, i32 0, i32 0
  %163 = load %struct.TYPE_37__*, %struct.TYPE_37__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @ZFS_SA_BASE_ATTR_SIZE, align 8
  %167 = add nsw i64 %165, %166
  %168 = load i64, i64* %22, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @dmu_tx_hold_sa_create(i32* %161, i64 %169)
  %171 = load i32*, i32** %19, align 8
  %172 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %173 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i64, i64* @B_FALSE, align 8
  %176 = call i32 @dmu_tx_hold_sa(i32* %171, i32 %174, i64 %175)
  %177 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %178 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %196, label %181

181:                                              ; preds = %141
  %182 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %25, i32 0, i32 0
  %183 = load %struct.TYPE_37__*, %struct.TYPE_37__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @ZFS_ACE_SPACE, align 8
  %187 = icmp sgt i64 %185, %186
  br i1 %187, label %188, label %196

188:                                              ; preds = %181
  %189 = load i32*, i32** %19, align 8
  %190 = load i32, i32* @DMU_NEW_OBJECT, align 4
  %191 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %25, i32 0, i32 0
  %192 = load %struct.TYPE_37__*, %struct.TYPE_37__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @dmu_tx_hold_write(i32* %189, i32 %190, i32 0, i64 %194)
  br label %196

196:                                              ; preds = %188, %181, %141
  %197 = load i64, i64* %26, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %201 = load i32*, i32** %19, align 8
  %202 = call i32 @zfs_fuid_txhold(%struct.TYPE_40__* %200, i32* %201)
  br label %203

203:                                              ; preds = %199, %196
  %204 = load i32*, i32** %19, align 8
  %205 = load i64, i64* %28, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = load i32, i32* @TXG_NOTHROTTLE, align 4
  br label %210

209:                                              ; preds = %203
  br label %210

210:                                              ; preds = %209, %207
  %211 = phi i32 [ %208, %207 ], [ 0, %209 ]
  %212 = load i32, i32* @TXG_NOWAIT, align 4
  %213 = or i32 %211, %212
  %214 = call i32 @dmu_tx_assign(i32* %204, i32 %213)
  store i32 %214, i32* %23, align 4
  %215 = load i32, i32* %23, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %236

217:                                              ; preds = %210
  %218 = load i32*, i32** %18, align 8
  %219 = call i32 @zfs_dirent_unlock(i32* %218)
  %220 = load i32, i32* %23, align 4
  %221 = load i32, i32* @ERESTART, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %217
  %224 = load i64, i64* @B_TRUE, align 8
  store i64 %224, i64* %28, align 8
  %225 = load i32*, i32** %19, align 8
  %226 = call i32 @dmu_tx_wait(i32* %225)
  %227 = load i32*, i32** %19, align 8
  %228 = call i32 @dmu_tx_abort(i32* %227)
  br label %101

229:                                              ; preds = %217
  %230 = call i32 @zfs_acl_ids_free(%struct.TYPE_41__* %25)
  %231 = load i32*, i32** %19, align 8
  %232 = call i32 @dmu_tx_abort(i32* %231)
  %233 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %234 = call i32 @ZFS_EXIT(%struct.TYPE_40__* %233)
  %235 = load i32, i32* %23, align 4
  store i32 %235, i32* %8, align 4
  br label %357

236:                                              ; preds = %210
  %237 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %238 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %239 = load i32*, i32** %19, align 8
  %240 = load i32*, i32** %14, align 8
  %241 = call i32 @zfs_mknode(%struct.TYPE_39__* %237, %struct.TYPE_42__* %238, i32* %239, i32* %240, i32 0, %struct.TYPE_39__** %16, %struct.TYPE_41__* %25)
  %242 = load i64, i64* %26, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %236
  %245 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %246 = load i32*, i32** %19, align 8
  %247 = call i32 @zfs_fuid_sync(%struct.TYPE_40__* %245, i32* %246)
  br label %248

248:                                              ; preds = %244, %236
  %249 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %250 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %249, i32 0, i32 2
  %251 = call i32 @mutex_enter(i32* %250)
  %252 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %253 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %252, i32 0, i32 3
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %267

256:                                              ; preds = %248
  %257 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %258 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %261 = call i32 @SA_ZPL_SYMLINK(%struct.TYPE_40__* %260)
  %262 = load i8*, i8** %12, align 8
  %263 = load i64, i64* %22, align 8
  %264 = trunc i64 %263 to i32
  %265 = load i32*, i32** %19, align 8
  %266 = call i32 @sa_update(i32 %259, i32 %261, i8* %262, i32 %264, i32* %265)
  store i32 %266, i32* %23, align 4
  br label %273

267:                                              ; preds = %248
  %268 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %269 = load i8*, i8** %12, align 8
  %270 = load i64, i64* %22, align 8
  %271 = load i32*, i32** %19, align 8
  %272 = call i32 @zfs_sa_symlink(%struct.TYPE_39__* %268, i8* %269, i64 %270, i32* %271)
  br label %273

273:                                              ; preds = %267, %256
  %274 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %275 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %274, i32 0, i32 2
  %276 = call i32 @mutex_exit(i32* %275)
  %277 = load i64, i64* %22, align 8
  %278 = trunc i64 %277 to i8
  %279 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %280 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %279, i32 0, i32 0
  store i8 %278, i8* %280, align 8
  %281 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %282 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %285 = call i32 @SA_ZPL_SIZE(%struct.TYPE_40__* %284)
  %286 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %287 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %286, i32 0, i32 0
  %288 = load i32*, i32** %19, align 8
  %289 = call i32 @sa_update(i32 %283, i32 %285, i8* %287, i32 1, i32* %288)
  %290 = load i32*, i32** %18, align 8
  %291 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %292 = load i32*, i32** %19, align 8
  %293 = load i32, i32* @ZNEW, align 4
  %294 = call i32 @zfs_link_create(i32* %290, %struct.TYPE_39__* %291, i32* %292, i32 %293)
  store i32 %294, i32* %23, align 4
  %295 = load i32, i32* %23, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %304

297:                                              ; preds = %273
  %298 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %299 = load i32*, i32** %19, align 8
  %300 = call i32 @zfs_znode_delete(%struct.TYPE_39__* %298, i32* %299)
  %301 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %302 = call %struct.inode* @ZTOI(%struct.TYPE_39__* %301)
  %303 = call i32 @remove_inode_hash(%struct.inode* %302)
  br label %326

304:                                              ; preds = %273
  %305 = load i32, i32* %15, align 4
  %306 = load i32, i32* @FIGNORECASE, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %304
  %310 = load i64, i64* @TX_CI, align 8
  %311 = load i64, i64* %27, align 8
  %312 = or i64 %311, %310
  store i64 %312, i64* %27, align 8
  br label %313

313:                                              ; preds = %309, %304
  %314 = load i32*, i32** %21, align 8
  %315 = load i32*, i32** %19, align 8
  %316 = load i64, i64* %27, align 8
  %317 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %318 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %319 = load i8*, i8** %10, align 8
  %320 = load i8*, i8** %12, align 8
  %321 = call i32 @zfs_log_symlink(i32* %314, i32* %315, i64 %316, %struct.TYPE_39__* %317, %struct.TYPE_39__* %318, i8* %319, i8* %320)
  %322 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %323 = call i32 @zfs_inode_update(%struct.TYPE_39__* %322)
  %324 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %325 = call i32 @zfs_inode_update(%struct.TYPE_39__* %324)
  br label %326

326:                                              ; preds = %313, %297
  %327 = call i32 @zfs_acl_ids_free(%struct.TYPE_41__* %25)
  %328 = load i32*, i32** %19, align 8
  %329 = call i32 @dmu_tx_commit(i32* %328)
  %330 = load i32*, i32** %18, align 8
  %331 = call i32 @zfs_dirent_unlock(i32* %330)
  %332 = load i32, i32* %23, align 4
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %349

334:                                              ; preds = %326
  %335 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %336 = call %struct.inode* @ZTOI(%struct.TYPE_39__* %335)
  %337 = load %struct.inode**, %struct.inode*** %13, align 8
  store %struct.inode* %336, %struct.inode** %337, align 8
  %338 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %339 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %338, i32 0, i32 0
  %340 = load %struct.TYPE_38__*, %struct.TYPE_38__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @ZFS_SYNC_ALWAYS, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %345, label %348

345:                                              ; preds = %334
  %346 = load i32*, i32** %21, align 8
  %347 = call i32 @zil_commit(i32* %346, i32 0)
  br label %348

348:                                              ; preds = %345, %334
  br label %353

349:                                              ; preds = %326
  %350 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %351 = call %struct.inode* @ZTOI(%struct.TYPE_39__* %350)
  %352 = call i32 @iput(%struct.inode* %351)
  br label %353

353:                                              ; preds = %349, %348
  %354 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %355 = call i32 @ZFS_EXIT(%struct.TYPE_40__* %354)
  %356 = load i32, i32* %23, align 4
  store i32 %356, i32* %8, align 4
  br label %357

357:                                              ; preds = %353, %229, %133, %121, %109, %96, %85, %67, %45
  %358 = load i32, i32* %8, align 4
  ret i32 %358
}

declare dso_local %struct.TYPE_39__* @ITOZ(%struct.inode*) #1

declare dso_local %struct.TYPE_40__* @ITOZSB(%struct.inode*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_40__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_39__*) #1

declare dso_local i64 @u8_validate(i8*, i64, i32*, i32, i32*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_40__*) #1

declare dso_local i32 @zfs_acl_ids_create(%struct.TYPE_39__*, i32, %struct.TYPE_42__*, i32*, i32*, %struct.TYPE_41__*) #1

declare dso_local i32 @zfs_dirent_lock(i32**, %struct.TYPE_39__*, i8*, %struct.TYPE_39__**, i32, i32*, i32*) #1

declare dso_local i32 @zfs_acl_ids_free(%struct.TYPE_41__*) #1

declare dso_local i32 @zfs_zaccess(%struct.TYPE_39__*, i32, i32, i64, i32*) #1

declare dso_local i32 @zfs_dirent_unlock(i32*) #1

declare dso_local i64 @zfs_acl_ids_overquota(%struct.TYPE_40__*, %struct.TYPE_41__*, i32) #1

declare dso_local i32* @dmu_tx_create(%struct.TYPE_38__*) #1

declare dso_local i32 @dmu_tx_hold_write(i32*, i32, i32, i64) #1

declare dso_local i64 @MAX(i32, i64) #1

declare dso_local i32 @dmu_tx_hold_zap(i32*, i32, i32, i8*) #1

declare dso_local i32 @dmu_tx_hold_sa_create(i32*, i64) #1

declare dso_local i32 @dmu_tx_hold_sa(i32*, i32, i64) #1

declare dso_local i32 @zfs_fuid_txhold(%struct.TYPE_40__*, i32*) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_wait(i32*) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @zfs_mknode(%struct.TYPE_39__*, %struct.TYPE_42__*, i32*, i32*, i32, %struct.TYPE_39__**, %struct.TYPE_41__*) #1

declare dso_local i32 @zfs_fuid_sync(%struct.TYPE_40__*, i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @sa_update(i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @SA_ZPL_SYMLINK(%struct.TYPE_40__*) #1

declare dso_local i32 @zfs_sa_symlink(%struct.TYPE_39__*, i8*, i64, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @SA_ZPL_SIZE(%struct.TYPE_40__*) #1

declare dso_local i32 @zfs_link_create(i32*, %struct.TYPE_39__*, i32*, i32) #1

declare dso_local i32 @zfs_znode_delete(%struct.TYPE_39__*, i32*) #1

declare dso_local i32 @remove_inode_hash(%struct.inode*) #1

declare dso_local %struct.inode* @ZTOI(%struct.TYPE_39__*) #1

declare dso_local i32 @zfs_log_symlink(i32*, i32*, i64, %struct.TYPE_39__*, %struct.TYPE_39__*, i8*, i8*) #1

declare dso_local i32 @zfs_inode_update(%struct.TYPE_39__*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @zil_commit(i32*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
