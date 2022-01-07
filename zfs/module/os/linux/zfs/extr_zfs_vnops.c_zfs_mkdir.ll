; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_42__ = type { i32, i32 }
%struct.TYPE_38__ = type { i32, i32 }
%struct.TYPE_40__ = type { i64, %struct.TYPE_39__*, i32, i64, i64, i32* }
%struct.TYPE_39__ = type { i64 }
%struct.TYPE_41__ = type { i32, %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i64 }

@ZNEW = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ZFS_XATTR = common dso_local global i32 0, align 4
@U8_VALIDATE_ENTIRE = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@FIGNORECASE = common dso_local global i32 0, align 4
@ZCILOOK = common dso_local global i32 0, align 4
@ATTR_XVATTR = common dso_local global i32 0, align 4
@ACE_ADD_SUBDIRECTORY = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DMU_NEW_OBJECT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ZFS_ACE_SPACE = common dso_local global i64 0, align 8
@ZFS_SA_BASE_ATTR_SIZE = common dso_local global i64 0, align 8
@TXG_NOTHROTTLE = common dso_local global i32 0, align 4
@TXG_NOWAIT = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@Z_DIR = common dso_local global i32 0, align 4
@TX_CI = common dso_local global i32 0, align 4
@ZFS_SYNC_ALWAYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_mkdir(%struct.inode* %0, i8* %1, %struct.TYPE_42__* %2, %struct.inode** %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_42__*, align 8
  %12 = alloca %struct.inode**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_38__*, align 8
  %17 = alloca %struct.TYPE_38__*, align 8
  %18 = alloca %struct.TYPE_40__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_41__, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.TYPE_42__* %2, %struct.TYPE_42__** %11, align 8
  store %struct.inode** %3, %struct.inode*** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %30 = load %struct.inode*, %struct.inode** %9, align 8
  %31 = call %struct.TYPE_38__* @ITOZ(%struct.inode* %30)
  store %struct.TYPE_38__* %31, %struct.TYPE_38__** %17, align 8
  %32 = load %struct.inode*, %struct.inode** %9, align 8
  %33 = call %struct.TYPE_40__* @ITOZSB(%struct.inode* %32)
  store %struct.TYPE_40__* %33, %struct.TYPE_40__** %18, align 8
  %34 = load i32, i32* @ZNEW, align 4
  store i32 %34, i32* %24, align 4
  %35 = load i32*, i32** %13, align 8
  %36 = call i32 @crgetgid(i32* %35)
  store i32 %36, i32* %26, align 4
  %37 = load i64, i64* @B_FALSE, align 8
  store i64 %37, i64* %29, align 8
  %38 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @S_ISDIR(i32 %40)
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @crgetuid(i32* %43)
  store i32 %44, i32* %25, align 4
  %45 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @B_FALSE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %7
  %51 = load i32*, i32** %15, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %25, align 4
  %55 = call i64 @IS_EPHEMERAL(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %26, align 4
  %59 = call i64 @IS_EPHEMERAL(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57, %53, %50
  %62 = load i32, i32* @EINVAL, align 4
  %63 = call i32 @SET_ERROR(i32 %62)
  store i32 %63, i32* %8, align 4
  br label %363

64:                                               ; preds = %57, %7
  %65 = load i8*, i8** %10, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* @EINVAL, align 4
  %69 = call i32 @SET_ERROR(i32 %68)
  store i32 %69, i32* %8, align 4
  br label %363

70:                                               ; preds = %64
  %71 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %72 = call i32 @ZFS_ENTER(%struct.TYPE_40__* %71)
  %73 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %74 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_38__* %73)
  %75 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %19, align 8
  %78 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ZFS_XATTR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %70
  %85 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %86 = call i32 @ZFS_EXIT(%struct.TYPE_40__* %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = call i32 @SET_ERROR(i32 %87)
  store i32 %88, i32* %8, align 4
  br label %363

89:                                               ; preds = %70
  %90 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %89
  %95 = load i8*, i8** %10, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = call i32 @strlen(i8* %96)
  %98 = load i32, i32* @U8_VALIDATE_ENTIRE, align 4
  %99 = call i64 @u8_validate(i8* %95, i32 %97, i32* null, i32 %98, i32* %23)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %103 = call i32 @ZFS_EXIT(%struct.TYPE_40__* %102)
  %104 = load i32, i32* @EILSEQ, align 4
  %105 = call i32 @SET_ERROR(i32 %104)
  store i32 %105, i32* %8, align 4
  br label %363

106:                                              ; preds = %94, %89
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @FIGNORECASE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @ZCILOOK, align 4
  %113 = load i32, i32* %24, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %24, align 4
  br label %115

115:                                              ; preds = %111, %106
  %116 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @ATTR_XVATTR, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %115
  %123 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %124 = bitcast %struct.TYPE_42__* %123 to i32*
  %125 = load i32*, i32** %13, align 8
  %126 = call i32 @crgetuid(i32* %125)
  %127 = load i32*, i32** %13, align 8
  %128 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @secpolicy_xvattr(i32* %124, i32 %126, i32* %127, i32 %130)
  store i32 %131, i32* %23, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %122
  %134 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %135 = call i32 @ZFS_EXIT(%struct.TYPE_40__* %134)
  %136 = load i32, i32* %23, align 4
  store i32 %136, i32* %8, align 4
  br label %363

137:                                              ; preds = %122
  br label %138

138:                                              ; preds = %137, %115
  %139 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %140 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %141 = load i32*, i32** %13, align 8
  %142 = load i32*, i32** %15, align 8
  %143 = call i32 @zfs_acl_ids_create(%struct.TYPE_38__* %139, i32 0, %struct.TYPE_42__* %140, i32* %141, i32* %142, %struct.TYPE_41__* %27)
  store i32 %143, i32* %23, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %147 = call i32 @ZFS_EXIT(%struct.TYPE_40__* %146)
  %148 = load i32, i32* %23, align 4
  store i32 %148, i32* %8, align 4
  br label %363

149:                                              ; preds = %138
  br label %150

150:                                              ; preds = %263, %149
  %151 = load %struct.inode**, %struct.inode*** %12, align 8
  store %struct.inode* null, %struct.inode** %151, align 8
  %152 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = load i32, i32* %24, align 4
  %155 = call i32 @zfs_dirent_lock(i32** %20, %struct.TYPE_38__* %152, i8* %153, %struct.TYPE_38__** %16, i32 %154, i32* null, i32* null)
  store i32 %155, i32* %23, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %150
  %158 = call i32 @zfs_acl_ids_free(%struct.TYPE_41__* %27)
  %159 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %160 = call i32 @ZFS_EXIT(%struct.TYPE_40__* %159)
  %161 = load i32, i32* %23, align 4
  store i32 %161, i32* %8, align 4
  br label %363

162:                                              ; preds = %150
  %163 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %164 = load i32, i32* @ACE_ADD_SUBDIRECTORY, align 4
  %165 = load i64, i64* @B_FALSE, align 8
  %166 = load i32*, i32** %13, align 8
  %167 = call i32 @zfs_zaccess(%struct.TYPE_38__* %163, i32 %164, i32 0, i64 %165, i32* %166)
  store i32 %167, i32* %23, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %162
  %170 = call i32 @zfs_acl_ids_free(%struct.TYPE_41__* %27)
  %171 = load i32*, i32** %20, align 8
  %172 = call i32 @zfs_dirent_unlock(i32* %171)
  %173 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %174 = call i32 @ZFS_EXIT(%struct.TYPE_40__* %173)
  %175 = load i32, i32* %23, align 4
  store i32 %175, i32* %8, align 4
  br label %363

176:                                              ; preds = %162
  %177 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %178 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %179 = call i32 @zfs_inherit_projid(%struct.TYPE_38__* %178)
  %180 = call i64 @zfs_acl_ids_overquota(%struct.TYPE_40__* %177, %struct.TYPE_41__* %27, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %176
  %183 = call i32 @zfs_acl_ids_free(%struct.TYPE_41__* %27)
  %184 = load i32*, i32** %20, align 8
  %185 = call i32 @zfs_dirent_unlock(i32* %184)
  %186 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %187 = call i32 @ZFS_EXIT(%struct.TYPE_40__* %186)
  %188 = load i32, i32* @EDQUOT, align 4
  %189 = call i32 @SET_ERROR(i32 %188)
  store i32 %189, i32* %8, align 4
  br label %363

190:                                              ; preds = %176
  %191 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %192 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_39__*, %struct.TYPE_39__** %192, align 8
  %194 = call i32* @dmu_tx_create(%struct.TYPE_39__* %193)
  store i32* %194, i32** %22, align 8
  %195 = load i32*, i32** %22, align 8
  %196 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %197 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @TRUE, align 4
  %200 = load i8*, i8** %10, align 8
  %201 = call i32 @dmu_tx_hold_zap(i32* %195, i32 %198, i32 %199, i8* %200)
  %202 = load i32*, i32** %22, align 8
  %203 = load i32, i32* @DMU_NEW_OBJECT, align 4
  %204 = load i32, i32* @FALSE, align 4
  %205 = call i32 @dmu_tx_hold_zap(i32* %202, i32 %203, i32 %204, i8* null)
  %206 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %207 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %28, align 8
  %209 = load i64, i64* %28, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %190
  %212 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %213 = load i32*, i32** %22, align 8
  %214 = call i32 @zfs_fuid_txhold(%struct.TYPE_40__* %212, i32* %213)
  br label %215

215:                                              ; preds = %211, %190
  %216 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %217 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %235, label %220

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %27, i32 0, i32 1
  %222 = load %struct.TYPE_37__*, %struct.TYPE_37__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @ZFS_ACE_SPACE, align 8
  %226 = icmp sgt i64 %224, %225
  br i1 %226, label %227, label %235

227:                                              ; preds = %220
  %228 = load i32*, i32** %22, align 8
  %229 = load i32, i32* @DMU_NEW_OBJECT, align 4
  %230 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %27, i32 0, i32 1
  %231 = load %struct.TYPE_37__*, %struct.TYPE_37__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = call i32 @dmu_tx_hold_write(i32* %228, i32 %229, i32 0, i64 %233)
  br label %235

235:                                              ; preds = %227, %220, %215
  %236 = load i32*, i32** %22, align 8
  %237 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %27, i32 0, i32 1
  %238 = load %struct.TYPE_37__*, %struct.TYPE_37__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @ZFS_SA_BASE_ATTR_SIZE, align 8
  %242 = add nsw i64 %240, %241
  %243 = call i32 @dmu_tx_hold_sa_create(i32* %236, i64 %242)
  %244 = load i32*, i32** %22, align 8
  %245 = load i64, i64* %29, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %235
  %248 = load i32, i32* @TXG_NOTHROTTLE, align 4
  br label %250

249:                                              ; preds = %235
  br label %250

250:                                              ; preds = %249, %247
  %251 = phi i32 [ %248, %247 ], [ 0, %249 ]
  %252 = load i32, i32* @TXG_NOWAIT, align 4
  %253 = or i32 %251, %252
  %254 = call i32 @dmu_tx_assign(i32* %244, i32 %253)
  store i32 %254, i32* %23, align 4
  %255 = load i32, i32* %23, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %276

257:                                              ; preds = %250
  %258 = load i32*, i32** %20, align 8
  %259 = call i32 @zfs_dirent_unlock(i32* %258)
  %260 = load i32, i32* %23, align 4
  %261 = load i32, i32* @ERESTART, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %269

263:                                              ; preds = %257
  %264 = load i64, i64* @B_TRUE, align 8
  store i64 %264, i64* %29, align 8
  %265 = load i32*, i32** %22, align 8
  %266 = call i32 @dmu_tx_wait(i32* %265)
  %267 = load i32*, i32** %22, align 8
  %268 = call i32 @dmu_tx_abort(i32* %267)
  br label %150

269:                                              ; preds = %257
  %270 = call i32 @zfs_acl_ids_free(%struct.TYPE_41__* %27)
  %271 = load i32*, i32** %22, align 8
  %272 = call i32 @dmu_tx_abort(i32* %271)
  %273 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %274 = call i32 @ZFS_EXIT(%struct.TYPE_40__* %273)
  %275 = load i32, i32* %23, align 4
  store i32 %275, i32* %8, align 4
  br label %363

276:                                              ; preds = %250
  %277 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %278 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %279 = load i32*, i32** %22, align 8
  %280 = load i32*, i32** %13, align 8
  %281 = call i32 @zfs_mknode(%struct.TYPE_38__* %277, %struct.TYPE_42__* %278, i32* %279, i32* %280, i32 0, %struct.TYPE_38__** %16, %struct.TYPE_41__* %27)
  %282 = load i32*, i32** %20, align 8
  %283 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %284 = load i32*, i32** %22, align 8
  %285 = load i32, i32* @ZNEW, align 4
  %286 = call i32 @zfs_link_create(i32* %282, %struct.TYPE_38__* %283, i32* %284, i32 %285)
  store i32 %286, i32* %23, align 4
  %287 = load i32, i32* %23, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %296

289:                                              ; preds = %276
  %290 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %291 = load i32*, i32** %22, align 8
  %292 = call i32 @zfs_znode_delete(%struct.TYPE_38__* %290, i32* %291)
  %293 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %294 = call %struct.inode* @ZTOI(%struct.TYPE_38__* %293)
  %295 = call i32 @remove_inode_hash(%struct.inode* %294)
  br label %331

296:                                              ; preds = %276
  %297 = load i64, i64* %28, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %296
  %300 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %301 = load i32*, i32** %22, align 8
  %302 = call i32 @zfs_fuid_sync(%struct.TYPE_40__* %300, i32* %301)
  br label %303

303:                                              ; preds = %299, %296
  %304 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %305 = call %struct.inode* @ZTOI(%struct.TYPE_38__* %304)
  %306 = load %struct.inode**, %struct.inode*** %12, align 8
  store %struct.inode* %305, %struct.inode** %306, align 8
  %307 = load i32, i32* @Z_DIR, align 4
  %308 = load i32*, i32** %15, align 8
  %309 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %310 = call i32 @zfs_log_create_txtype(i32 %307, i32* %308, %struct.TYPE_42__* %309)
  store i32 %310, i32* %21, align 4
  %311 = load i32, i32* %14, align 4
  %312 = load i32, i32* @FIGNORECASE, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %303
  %316 = load i32, i32* @TX_CI, align 4
  %317 = load i32, i32* %21, align 4
  %318 = or i32 %317, %316
  store i32 %318, i32* %21, align 4
  br label %319

319:                                              ; preds = %315, %303
  %320 = load i32*, i32** %19, align 8
  %321 = load i32*, i32** %22, align 8
  %322 = load i32, i32* %21, align 4
  %323 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %324 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %325 = load i8*, i8** %10, align 8
  %326 = load i32*, i32** %15, align 8
  %327 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %27, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %330 = call i32 @zfs_log_create(i32* %320, i32* %321, i32 %322, %struct.TYPE_38__* %323, %struct.TYPE_38__* %324, i8* %325, i32* %326, i32 %328, %struct.TYPE_42__* %329)
  br label %331

331:                                              ; preds = %319, %289
  %332 = call i32 @zfs_acl_ids_free(%struct.TYPE_41__* %27)
  %333 = load i32*, i32** %22, align 8
  %334 = call i32 @dmu_tx_commit(i32* %333)
  %335 = load i32*, i32** %20, align 8
  %336 = call i32 @zfs_dirent_unlock(i32* %335)
  %337 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %338 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %337, i32 0, i32 1
  %339 = load %struct.TYPE_39__*, %struct.TYPE_39__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @ZFS_SYNC_ALWAYS, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %347

344:                                              ; preds = %331
  %345 = load i32*, i32** %19, align 8
  %346 = call i32 @zil_commit(i32* %345, i32 0)
  br label %347

347:                                              ; preds = %344, %331
  %348 = load i32, i32* %23, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %347
  %351 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %352 = call %struct.inode* @ZTOI(%struct.TYPE_38__* %351)
  %353 = call i32 @iput(%struct.inode* %352)
  br label %359

354:                                              ; preds = %347
  %355 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %356 = call i32 @zfs_inode_update(%struct.TYPE_38__* %355)
  %357 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %358 = call i32 @zfs_inode_update(%struct.TYPE_38__* %357)
  br label %359

359:                                              ; preds = %354, %350
  %360 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %361 = call i32 @ZFS_EXIT(%struct.TYPE_40__* %360)
  %362 = load i32, i32* %23, align 4
  store i32 %362, i32* %8, align 4
  br label %363

363:                                              ; preds = %359, %269, %182, %169, %157, %145, %133, %101, %84, %67, %61
  %364 = load i32, i32* %8, align 4
  ret i32 %364
}

declare dso_local %struct.TYPE_38__* @ITOZ(%struct.inode*) #1

declare dso_local %struct.TYPE_40__* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @crgetgid(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @crgetuid(i32*) #1

declare dso_local i64 @IS_EPHEMERAL(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_40__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_38__*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_40__*) #1

declare dso_local i64 @u8_validate(i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @secpolicy_xvattr(i32*, i32, i32*, i32) #1

declare dso_local i32 @zfs_acl_ids_create(%struct.TYPE_38__*, i32, %struct.TYPE_42__*, i32*, i32*, %struct.TYPE_41__*) #1

declare dso_local i32 @zfs_dirent_lock(i32**, %struct.TYPE_38__*, i8*, %struct.TYPE_38__**, i32, i32*, i32*) #1

declare dso_local i32 @zfs_acl_ids_free(%struct.TYPE_41__*) #1

declare dso_local i32 @zfs_zaccess(%struct.TYPE_38__*, i32, i32, i64, i32*) #1

declare dso_local i32 @zfs_dirent_unlock(i32*) #1

declare dso_local i64 @zfs_acl_ids_overquota(%struct.TYPE_40__*, %struct.TYPE_41__*, i32) #1

declare dso_local i32 @zfs_inherit_projid(%struct.TYPE_38__*) #1

declare dso_local i32* @dmu_tx_create(%struct.TYPE_39__*) #1

declare dso_local i32 @dmu_tx_hold_zap(i32*, i32, i32, i8*) #1

declare dso_local i32 @zfs_fuid_txhold(%struct.TYPE_40__*, i32*) #1

declare dso_local i32 @dmu_tx_hold_write(i32*, i32, i32, i64) #1

declare dso_local i32 @dmu_tx_hold_sa_create(i32*, i64) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_wait(i32*) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @zfs_mknode(%struct.TYPE_38__*, %struct.TYPE_42__*, i32*, i32*, i32, %struct.TYPE_38__**, %struct.TYPE_41__*) #1

declare dso_local i32 @zfs_link_create(i32*, %struct.TYPE_38__*, i32*, i32) #1

declare dso_local i32 @zfs_znode_delete(%struct.TYPE_38__*, i32*) #1

declare dso_local i32 @remove_inode_hash(%struct.inode*) #1

declare dso_local %struct.inode* @ZTOI(%struct.TYPE_38__*) #1

declare dso_local i32 @zfs_fuid_sync(%struct.TYPE_40__*, i32*) #1

declare dso_local i32 @zfs_log_create_txtype(i32, i32*, %struct.TYPE_42__*) #1

declare dso_local i32 @zfs_log_create(i32*, i32*, i32, %struct.TYPE_38__*, %struct.TYPE_38__*, i8*, i32*, i32, %struct.TYPE_42__*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @zil_commit(i32*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @zfs_inode_update(%struct.TYPE_38__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
