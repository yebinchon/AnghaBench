; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_link.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i64, i32, i32 }
%struct.TYPE_22__ = type { i32, i64, i8*, i32, i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_21__*, i32, i64, i32* }
%struct.TYPE_21__ = type { i64 }

@ZNEW = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ZFS_PROJINHERIT = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@U8_VALIDATE_ENTIRE = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@FIGNORECASE = common dso_local global i32 0, align 4
@ZCILOOK = common dso_local global i32 0, align 4
@ZFS_XATTR = common dso_local global i32 0, align 4
@ZFS_OWNER = common dso_local global i32 0, align 4
@ACE_ADD_FILE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TXG_NOTHROTTLE = common dso_local global i32 0, align 4
@TXG_NOWAIT = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@TX_LINK = common dso_local global i64 0, align 8
@TX_CI = common dso_local global i64 0, align 8
@ZFS_SYNC_ALWAYS = common dso_local global i64 0, align 8
@I_LINKABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_link(%struct.inode* %0, %struct.inode* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = call %struct.TYPE_22__* @ITOZ(%struct.inode* %27)
  store %struct.TYPE_22__* %28, %struct.TYPE_22__** %12, align 8
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = call %struct.TYPE_23__* @ITOZSB(%struct.inode* %29)
  store %struct.TYPE_23__* %30, %struct.TYPE_23__** %15, align 8
  %31 = load i32, i32* @ZNEW, align 4
  store i32 %31, i32* %20, align 4
  %32 = load i8*, i8** @B_FALSE, align 8
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @S_ISDIR(i32 %36)
  %38 = call i32 @ASSERT(i64 %37)
  %39 = load i8*, i8** %9, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %5
  %42 = load i32, i32* @EINVAL, align 4
  %43 = call i32 @SET_ERROR(i32 %42)
  store i32 %43, i32* %6, align 4
  br label %377

44:                                               ; preds = %5
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %46 = call i32 @ZFS_ENTER(%struct.TYPE_23__* %45)
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %48 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_22__* %47)
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %16, align 8
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @S_ISDIR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %44
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %59 = call i32 @ZFS_EXIT(%struct.TYPE_23__* %58)
  %60 = load i32, i32* @EPERM, align 4
  %61 = call i32 @SET_ERROR(i32 %60)
  store i32 %61, i32* %6, align 4
  br label %377

62:                                               ; preds = %44
  %63 = load %struct.inode*, %struct.inode** %8, align 8
  %64 = call %struct.TYPE_22__* @ITOZ(%struct.inode* %63)
  store %struct.TYPE_22__* %64, %struct.TYPE_22__** %14, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %66 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_22__* %65)
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ZFS_PROJINHERIT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %62
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %83 = call i32 @ZFS_EXIT(%struct.TYPE_23__* %82)
  %84 = load i32, i32* @EXDEV, align 4
  %85 = call i32 @SET_ERROR(i32 %84)
  store i32 %85, i32* %6, align 4
  br label %377

86:                                               ; preds = %73, %62
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.inode*, %struct.inode** %7, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %86
  %95 = load %struct.inode*, %struct.inode** %8, align 8
  %96 = call i64 @zfsctl_is_node(%struct.inode* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94, %86
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %100 = call i32 @ZFS_EXIT(%struct.TYPE_23__* %99)
  %101 = load i32, i32* @EXDEV, align 4
  %102 = call i32 @SET_ERROR(i32 %101)
  store i32 %102, i32* %6, align 4
  br label %377

103:                                              ; preds = %94
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %108 = call i32 @SA_ZPL_PARENT(%struct.TYPE_23__* %107)
  %109 = call i32 @sa_lookup(i32 %106, i32 %108, i64* %21, i32 8)
  store i32 %109, i32* %19, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %103
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %113 = call i32 @ZFS_EXIT(%struct.TYPE_23__* %112)
  %114 = load i32, i32* %19, align 4
  store i32 %114, i32* %6, align 4
  br label %377

115:                                              ; preds = %103
  %116 = load i64, i64* %21, align 8
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %116, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %123 = call i32 @ZFS_EXIT(%struct.TYPE_23__* %122)
  %124 = load i32, i32* @EPERM, align 4
  %125 = call i32 @SET_ERROR(i32 %124)
  store i32 %125, i32* %6, align 4
  br label %377

126:                                              ; preds = %115
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %126
  %132 = load i8*, i8** %9, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = call i32 @strlen(i8* %133)
  %135 = load i32, i32* @U8_VALIDATE_ENTIRE, align 4
  %136 = call i64 @u8_validate(i8* %132, i32 %134, i32* null, i32 %135, i32* %19)
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %140 = call i32 @ZFS_EXIT(%struct.TYPE_23__* %139)
  %141 = load i32, i32* @EILSEQ, align 4
  %142 = call i32 @SET_ERROR(i32 %141)
  store i32 %142, i32* %6, align 4
  br label %377

143:                                              ; preds = %131, %126
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @FIGNORECASE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32, i32* @ZCILOOK, align 4
  %150 = load i32, i32* %20, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %20, align 4
  br label %152

152:                                              ; preds = %148, %143
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @ZFS_XATTR, align 4
  %157 = and i32 %155, %156
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @ZFS_XATTR, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %157, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %152
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %166 = call i32 @ZFS_EXIT(%struct.TYPE_23__* %165)
  %167 = load i32, i32* @EINVAL, align 4
  %168 = call i32 @SET_ERROR(i32 %167)
  store i32 %168, i32* %6, align 4
  br label %377

169:                                              ; preds = %152
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %171 = load %struct.inode*, %struct.inode** %8, align 8
  %172 = getelementptr inbounds %struct.inode, %struct.inode* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @KUID_TO_SUID(i32 %173)
  %175 = load i32*, i32** %10, align 8
  %176 = load i32, i32* @ZFS_OWNER, align 4
  %177 = call i64 @zfs_fuid_map_id(%struct.TYPE_23__* %170, i32 %174, i32* %175, i32 %176)
  store i64 %177, i64* %22, align 8
  %178 = load i64, i64* %22, align 8
  %179 = load i32*, i32** %10, align 8
  %180 = call i64 @crgetuid(i32* %179)
  %181 = icmp ne i64 %178, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %169
  %183 = load i32*, i32** %10, align 8
  %184 = call i64 @secpolicy_basic_link(i32* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %182
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %188 = call i32 @ZFS_EXIT(%struct.TYPE_23__* %187)
  %189 = load i32, i32* @EPERM, align 4
  %190 = call i32 @SET_ERROR(i32 %189)
  store i32 %190, i32* %6, align 4
  br label %377

191:                                              ; preds = %182, %169
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %193 = load i32, i32* @ACE_ADD_FILE, align 4
  %194 = load i8*, i8** @B_FALSE, align 8
  %195 = load i32*, i32** %10, align 8
  %196 = call i32 @zfs_zaccess(%struct.TYPE_22__* %192, i32 %193, i32 0, i8* %194, i32* %195)
  store i32 %196, i32* %19, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %191
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %200 = call i32 @ZFS_EXIT(%struct.TYPE_23__* %199)
  %201 = load i32, i32* %19, align 4
  store i32 %201, i32* %6, align 4
  br label %377

202:                                              ; preds = %191
  br label %203

203:                                              ; preds = %267, %202
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %205 = load i8*, i8** %9, align 8
  %206 = load i32, i32* %20, align 4
  %207 = call i32 @zfs_dirent_lock(i32** %17, %struct.TYPE_22__* %204, i8* %205, %struct.TYPE_22__** %13, i32 %206, i32* null, i32* null)
  store i32 %207, i32* %19, align 4
  %208 = load i32, i32* %19, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %203
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %212 = call i32 @ZFS_EXIT(%struct.TYPE_23__* %211)
  %213 = load i32, i32* %19, align 4
  store i32 %213, i32* %6, align 4
  br label %377

214:                                              ; preds = %203
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %216, align 8
  %218 = call i32* @dmu_tx_create(%struct.TYPE_21__* %217)
  store i32* %218, i32** %18, align 8
  %219 = load i32*, i32** %18, align 8
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 4
  %223 = load i8*, i8** @B_FALSE, align 8
  %224 = call i32 @dmu_tx_hold_sa(i32* %219, i32 %222, i8* %223)
  %225 = load i32*, i32** %18, align 8
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @TRUE, align 4
  %230 = load i8*, i8** %9, align 8
  %231 = call i32 @dmu_tx_hold_zap(i32* %225, i32 %228, i32 %229, i8* %230)
  %232 = load i32, i32* %24, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %214
  %235 = load i32*, i32** %18, align 8
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @FALSE, align 4
  %240 = call i32 @dmu_tx_hold_zap(i32* %235, i32 %238, i32 %239, i8* null)
  br label %241

241:                                              ; preds = %234, %214
  %242 = load i32*, i32** %18, align 8
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %244 = call i32 @zfs_sa_upgrade_txholds(i32* %242, %struct.TYPE_22__* %243)
  %245 = load i32*, i32** %18, align 8
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %247 = call i32 @zfs_sa_upgrade_txholds(i32* %245, %struct.TYPE_22__* %246)
  %248 = load i32*, i32** %18, align 8
  %249 = load i32, i32* %23, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %241
  %252 = load i32, i32* @TXG_NOTHROTTLE, align 4
  br label %254

253:                                              ; preds = %241
  br label %254

254:                                              ; preds = %253, %251
  %255 = phi i32 [ %252, %251 ], [ 0, %253 ]
  %256 = load i32, i32* @TXG_NOWAIT, align 4
  %257 = or i32 %255, %256
  %258 = call i32 @dmu_tx_assign(i32* %248, i32 %257)
  store i32 %258, i32* %19, align 4
  %259 = load i32, i32* %19, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %280

261:                                              ; preds = %254
  %262 = load i32*, i32** %17, align 8
  %263 = call i32 @zfs_dirent_unlock(i32* %262)
  %264 = load i32, i32* %19, align 4
  %265 = load i32, i32* @ERESTART, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %274

267:                                              ; preds = %261
  %268 = load i8*, i8** @B_TRUE, align 8
  %269 = ptrtoint i8* %268 to i32
  store i32 %269, i32* %23, align 4
  %270 = load i32*, i32** %18, align 8
  %271 = call i32 @dmu_tx_wait(i32* %270)
  %272 = load i32*, i32** %18, align 8
  %273 = call i32 @dmu_tx_abort(i32* %272)
  br label %203

274:                                              ; preds = %261
  %275 = load i32*, i32** %18, align 8
  %276 = call i32 @dmu_tx_abort(i32* %275)
  %277 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %278 = call i32 @ZFS_EXIT(%struct.TYPE_23__* %277)
  %279 = load i32, i32* %19, align 4
  store i32 %279, i32* %6, align 4
  br label %377

280:                                              ; preds = %254
  %281 = load i32, i32* %24, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %280
  %284 = load i8*, i8** @B_FALSE, align 8
  %285 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %286 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %285, i32 0, i32 2
  store i8* %284, i8** %286, align 8
  br label %287

287:                                              ; preds = %283, %280
  %288 = load i32*, i32** %17, align 8
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %290 = load i32*, i32** %18, align 8
  %291 = call i32 @zfs_link_create(i32* %288, %struct.TYPE_22__* %289, i32* %290, i32 0)
  store i32 %291, i32* %19, align 4
  %292 = load i32, i32* %19, align 4
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %331

294:                                              ; preds = %287
  %295 = load i64, i64* @TX_LINK, align 8
  store i64 %295, i64* %26, align 8
  %296 = load i32, i32* %24, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %313

298:                                              ; preds = %294
  %299 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %300 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %299, i32 0, i32 1
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %300, align 8
  %302 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %303 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 8
  %308 = load i32*, i32** %18, align 8
  %309 = call i64 @zap_remove_int(%struct.TYPE_21__* %301, i32 %304, i32 %307, i32* %308)
  %310 = icmp eq i64 %309, 0
  %311 = zext i1 %310 to i32
  %312 = call i32 @VERIFY(i32 %311)
  br label %330

313:                                              ; preds = %294
  %314 = load i32, i32* %11, align 4
  %315 = load i32, i32* @FIGNORECASE, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %313
  %319 = load i64, i64* @TX_CI, align 8
  %320 = load i64, i64* %26, align 8
  %321 = or i64 %320, %319
  store i64 %321, i64* %26, align 8
  br label %322

322:                                              ; preds = %318, %313
  %323 = load i32*, i32** %16, align 8
  %324 = load i32*, i32** %18, align 8
  %325 = load i64, i64* %26, align 8
  %326 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %327 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %328 = load i8*, i8** %9, align 8
  %329 = call i32 @zfs_log_link(i32* %323, i32* %324, i64 %325, %struct.TYPE_22__* %326, %struct.TYPE_22__* %327, i8* %328)
  br label %330

330:                                              ; preds = %322, %298
  br label %339

331:                                              ; preds = %287
  %332 = load i32, i32* %24, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %338

334:                                              ; preds = %331
  %335 = load i8*, i8** @B_TRUE, align 8
  %336 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %337 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %336, i32 0, i32 2
  store i8* %335, i8** %337, align 8
  br label %338

338:                                              ; preds = %334, %331
  br label %339

339:                                              ; preds = %338, %330
  %340 = load i32*, i32** %18, align 8
  %341 = call i64 @dmu_tx_get_txg(i32* %340)
  store i64 %341, i64* %25, align 8
  %342 = load i32*, i32** %18, align 8
  %343 = call i32 @dmu_tx_commit(i32* %342)
  %344 = load i32*, i32** %17, align 8
  %345 = call i32 @zfs_dirent_unlock(i32* %344)
  %346 = load i32, i32* %24, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %359, label %348

348:                                              ; preds = %339
  %349 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %350 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %349, i32 0, i32 1
  %351 = load %struct.TYPE_21__*, %struct.TYPE_21__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = load i64, i64* @ZFS_SYNC_ALWAYS, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %356, label %359

356:                                              ; preds = %348
  %357 = load i32*, i32** %16, align 8
  %358 = call i32 @zil_commit(i32* %357, i32 0)
  br label %359

359:                                              ; preds = %356, %348, %339
  %360 = load i32, i32* %24, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %369

362:                                              ; preds = %359
  %363 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %364 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %363, i32 0, i32 1
  %365 = load %struct.TYPE_21__*, %struct.TYPE_21__** %364, align 8
  %366 = call i32 @dmu_objset_pool(%struct.TYPE_21__* %365)
  %367 = load i64, i64* %25, align 8
  %368 = call i32 @txg_wait_synced(i32 %366, i64 %367)
  br label %369

369:                                              ; preds = %362, %359
  %370 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %371 = call i32 @zfs_inode_update(%struct.TYPE_22__* %370)
  %372 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %373 = call i32 @zfs_inode_update(%struct.TYPE_22__* %372)
  %374 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %375 = call i32 @ZFS_EXIT(%struct.TYPE_23__* %374)
  %376 = load i32, i32* %19, align 4
  store i32 %376, i32* %6, align 4
  br label %377

377:                                              ; preds = %369, %274, %210, %198, %186, %164, %138, %121, %111, %98, %81, %57, %41
  %378 = load i32, i32* %6, align 4
  ret i32 %378
}

declare dso_local %struct.TYPE_22__* @ITOZ(%struct.inode*) #1

declare dso_local %struct.TYPE_23__* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @ASSERT(i64) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_23__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_22__*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_23__*) #1

declare dso_local i64 @zfsctl_is_node(%struct.inode*) #1

declare dso_local i32 @sa_lookup(i32, i32, i64*, i32) #1

declare dso_local i32 @SA_ZPL_PARENT(%struct.TYPE_23__*) #1

declare dso_local i64 @u8_validate(i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @zfs_fuid_map_id(%struct.TYPE_23__*, i32, i32*, i32) #1

declare dso_local i32 @KUID_TO_SUID(i32) #1

declare dso_local i64 @crgetuid(i32*) #1

declare dso_local i64 @secpolicy_basic_link(i32*) #1

declare dso_local i32 @zfs_zaccess(%struct.TYPE_22__*, i32, i32, i8*, i32*) #1

declare dso_local i32 @zfs_dirent_lock(i32**, %struct.TYPE_22__*, i8*, %struct.TYPE_22__**, i32, i32*, i32*) #1

declare dso_local i32* @dmu_tx_create(%struct.TYPE_21__*) #1

declare dso_local i32 @dmu_tx_hold_sa(i32*, i32, i8*) #1

declare dso_local i32 @dmu_tx_hold_zap(i32*, i32, i32, i8*) #1

declare dso_local i32 @zfs_sa_upgrade_txholds(i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @zfs_dirent_unlock(i32*) #1

declare dso_local i32 @dmu_tx_wait(i32*) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @zfs_link_create(i32*, %struct.TYPE_22__*, i32*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @zap_remove_int(%struct.TYPE_21__*, i32, i32, i32*) #1

declare dso_local i32 @zfs_log_link(i32*, i32*, i64, %struct.TYPE_22__*, %struct.TYPE_22__*, i8*) #1

declare dso_local i64 @dmu_tx_get_txg(i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @zil_commit(i32*, i32) #1

declare dso_local i32 @txg_wait_synced(i32, i64) #1

declare dso_local i32 @dmu_objset_pool(%struct.TYPE_21__*) #1

declare dso_local i32 @zfs_inode_update(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
