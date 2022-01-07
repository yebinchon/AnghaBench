; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_tmpfile.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_tmpfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_30__ = type { i8* }
%struct.TYPE_31__ = type { i64, i32, i8*, i32, i32* }
%struct.TYPE_32__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64 }

@ZFS_DEFAULT_PROJID = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ATTR_XVATTR = common dso_local global i32 0, align 4
@ACE_ADD_FILE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@EDQUOT = common dso_local global i32 0, align 4
@ZFS_SA_BASE_ATTR_SIZE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@ZFS_ACE_SPACE = common dso_local global i64 0, align 8
@DMU_NEW_OBJECT = common dso_local global i32 0, align 4
@TXG_NOTHROTTLE = common dso_local global i32 0, align 4
@TXG_NOWAIT = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@IS_TMPFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_tmpfile(%struct.inode* %0, %struct.TYPE_33__* %1, i32 %2, i32 %3, %struct.inode** %4, i32* %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.TYPE_33__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_30__*, align 8
  %19 = alloca %struct.TYPE_30__*, align 8
  %20 = alloca %struct.TYPE_31__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_32__, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %10, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.inode** %4, %struct.inode*** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %18, align 8
  %31 = load %struct.inode*, %struct.inode** %10, align 8
  %32 = call %struct.TYPE_30__* @ITOZ(%struct.inode* %31)
  store %struct.TYPE_30__* %32, %struct.TYPE_30__** %19, align 8
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = call %struct.TYPE_31__* @ITOZSB(%struct.inode* %33)
  store %struct.TYPE_31__* %34, %struct.TYPE_31__** %20, align 8
  %35 = load i32, i32* @ZFS_DEFAULT_PROJID, align 4
  store i32 %35, i32* %27, align 4
  %36 = load i64, i64* @B_FALSE, align 8
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %29, align 8
  %38 = load i64, i64* @B_FALSE, align 8
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %30, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = call i32 @crgetgid(i32* %40)
  store i32 %41, i32* %25, align 4
  %42 = load i32*, i32** %15, align 8
  %43 = call i32 @crgetuid(i32* %42)
  store i32 %43, i32* %24, align 4
  %44 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  %45 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @B_FALSE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %8
  %50 = load i32*, i32** %17, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %24, align 4
  %54 = call i64 @IS_EPHEMERAL(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %25, align 4
  %58 = call i64 @IS_EPHEMERAL(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56, %52, %49
  %61 = load i32, i32* @EINVAL, align 4
  %62 = call i32 @SET_ERROR(i32 %61)
  store i32 %62, i32* %9, align 4
  br label %267

63:                                               ; preds = %56, %8
  %64 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  %65 = call i32 @ZFS_ENTER(%struct.TYPE_31__* %64)
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %67 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_30__* %66)
  %68 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  %69 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %21, align 8
  %71 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ATTR_XVATTR, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %63
  %78 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %79 = bitcast %struct.TYPE_33__* %78 to i32*
  %80 = load i32*, i32** %15, align 8
  %81 = call i32 @crgetuid(i32* %80)
  %82 = load i32*, i32** %15, align 8
  %83 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @secpolicy_xvattr(i32* %79, i32 %81, i32* %82, i32 %85)
  store i32 %86, i32* %23, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %77
  %89 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  %90 = call i32 @ZFS_EXIT(%struct.TYPE_31__* %89)
  %91 = load i32, i32* %23, align 4
  store i32 %91, i32* %9, align 4
  br label %267

92:                                               ; preds = %77
  br label %93

93:                                               ; preds = %92, %63
  br label %94

94:                                               ; preds = %208, %93
  %95 = load %struct.inode**, %struct.inode*** %14, align 8
  store %struct.inode* null, %struct.inode** %95, align 8
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %97 = load i32, i32* @ACE_ADD_FILE, align 4
  %98 = load i64, i64* @B_FALSE, align 8
  %99 = load i32*, i32** %15, align 8
  %100 = call i32 @zfs_zaccess(%struct.TYPE_30__* %96, i32 %97, i32 0, i64 %98, i32* %99)
  store i32 %100, i32* %23, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %94
  %103 = load i8*, i8** %29, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = call i32 @zfs_acl_ids_free(%struct.TYPE_32__* %26)
  br label %107

107:                                              ; preds = %105, %102
  br label %244

108:                                              ; preds = %94
  %109 = load i8*, i8** %29, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %119, label %111

111:                                              ; preds = %108
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %113 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = load i32*, i32** %17, align 8
  %116 = call i32 @zfs_acl_ids_create(%struct.TYPE_30__* %112, i32 0, %struct.TYPE_33__* %113, i32* %114, i32* %115, %struct.TYPE_32__* %26)
  store i32 %116, i32* %23, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %244

119:                                              ; preds = %111, %108
  %120 = load i8*, i8** @B_TRUE, align 8
  store i8* %120, i8** %29, align 8
  %121 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @S_ISREG(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %119
  %127 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @S_ISDIR(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %126, %119
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %134 = call i32 @zfs_inherit_projid(%struct.TYPE_30__* %133)
  store i32 %134, i32* %27, align 4
  br label %135

135:                                              ; preds = %132, %126
  %136 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  %137 = load i32, i32* %27, align 4
  %138 = call i64 @zfs_acl_ids_overquota(%struct.TYPE_31__* %136, %struct.TYPE_32__* %26, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = call i32 @zfs_acl_ids_free(%struct.TYPE_32__* %26)
  %142 = load i32, i32* @EDQUOT, align 4
  %143 = call i32 @SET_ERROR(i32 %142)
  store i32 %143, i32* %23, align 4
  br label %244

144:                                              ; preds = %135
  %145 = load i32*, i32** %21, align 8
  %146 = call i32* @dmu_tx_create(i32* %145)
  store i32* %146, i32** %22, align 8
  %147 = load i32*, i32** %22, align 8
  %148 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %26, i32 0, i32 0
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @ZFS_SA_BASE_ATTR_SIZE, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @dmu_tx_hold_sa_create(i32* %147, i64 %153)
  %155 = load i32*, i32** %22, align 8
  %156 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @FALSE, align 4
  %160 = call i32 @dmu_tx_hold_zap(i32* %155, i32 %158, i32 %159, i32* null)
  %161 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  %162 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %161, i32 0, i32 2
  %163 = load i8*, i8** %162, align 8
  store i8* %163, i8** %28, align 8
  %164 = load i8*, i8** %28, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %144
  %167 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  %168 = load i32*, i32** %22, align 8
  %169 = call i32 @zfs_fuid_txhold(%struct.TYPE_31__* %167, i32* %168)
  br label %170

170:                                              ; preds = %166, %144
  %171 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  %172 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %190, label %175

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %26, i32 0, i32 0
  %177 = load %struct.TYPE_29__*, %struct.TYPE_29__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @ZFS_ACE_SPACE, align 8
  %181 = icmp sgt i64 %179, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %175
  %183 = load i32*, i32** %22, align 8
  %184 = load i32, i32* @DMU_NEW_OBJECT, align 4
  %185 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %26, i32 0, i32 0
  %186 = load %struct.TYPE_29__*, %struct.TYPE_29__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @dmu_tx_hold_write(i32* %183, i32 %184, i32 0, i64 %188)
  br label %190

190:                                              ; preds = %182, %175, %170
  %191 = load i32*, i32** %22, align 8
  %192 = load i8*, i8** %30, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = load i32, i32* @TXG_NOTHROTTLE, align 4
  br label %197

196:                                              ; preds = %190
  br label %197

197:                                              ; preds = %196, %194
  %198 = phi i32 [ %195, %194 ], [ 0, %196 ]
  %199 = load i32, i32* @TXG_NOWAIT, align 4
  %200 = or i32 %198, %199
  %201 = call i32 @dmu_tx_assign(i32* %191, i32 %200)
  store i32 %201, i32* %23, align 4
  %202 = load i32, i32* %23, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %221

204:                                              ; preds = %197
  %205 = load i32, i32* %23, align 4
  %206 = load i32, i32* @ERESTART, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %204
  %209 = load i8*, i8** @B_TRUE, align 8
  store i8* %209, i8** %30, align 8
  %210 = load i32*, i32** %22, align 8
  %211 = call i32 @dmu_tx_wait(i32* %210)
  %212 = load i32*, i32** %22, align 8
  %213 = call i32 @dmu_tx_abort(i32* %212)
  br label %94

214:                                              ; preds = %204
  %215 = call i32 @zfs_acl_ids_free(%struct.TYPE_32__* %26)
  %216 = load i32*, i32** %22, align 8
  %217 = call i32 @dmu_tx_abort(i32* %216)
  %218 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  %219 = call i32 @ZFS_EXIT(%struct.TYPE_31__* %218)
  %220 = load i32, i32* %23, align 4
  store i32 %220, i32* %9, align 4
  br label %267

221:                                              ; preds = %197
  %222 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %223 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %224 = load i32*, i32** %22, align 8
  %225 = load i32*, i32** %15, align 8
  %226 = load i32, i32* @IS_TMPFILE, align 4
  %227 = call i32 @zfs_mknode(%struct.TYPE_30__* %222, %struct.TYPE_33__* %223, i32* %224, i32* %225, i32 %226, %struct.TYPE_30__** %18, %struct.TYPE_32__* %26)
  %228 = load i8*, i8** %28, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %230, label %234

230:                                              ; preds = %221
  %231 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  %232 = load i32*, i32** %22, align 8
  %233 = call i32 @zfs_fuid_sync(%struct.TYPE_31__* %231, i32* %232)
  br label %234

234:                                              ; preds = %230, %221
  %235 = load i8*, i8** @B_TRUE, align 8
  %236 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %237 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %236, i32 0, i32 0
  store i8* %235, i8** %237, align 8
  %238 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %239 = load i32*, i32** %22, align 8
  %240 = call i32 @zfs_unlinked_add(%struct.TYPE_30__* %238, i32* %239)
  %241 = call i32 @zfs_acl_ids_free(%struct.TYPE_32__* %26)
  %242 = load i32*, i32** %22, align 8
  %243 = call i32 @dmu_tx_commit(i32* %242)
  br label %244

244:                                              ; preds = %234, %140, %118, %107
  %245 = load i32, i32* %23, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %255

247:                                              ; preds = %244
  %248 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %249 = icmp ne %struct.TYPE_30__* %248, null
  br i1 %249, label %250, label %254

250:                                              ; preds = %247
  %251 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %252 = call %struct.inode* @ZTOI(%struct.TYPE_30__* %251)
  %253 = call i32 @iput(%struct.inode* %252)
  br label %254

254:                                              ; preds = %250, %247
  br label %263

255:                                              ; preds = %244
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %257 = call i32 @zfs_inode_update(%struct.TYPE_30__* %256)
  %258 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %259 = call i32 @zfs_inode_update(%struct.TYPE_30__* %258)
  %260 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %261 = call %struct.inode* @ZTOI(%struct.TYPE_30__* %260)
  %262 = load %struct.inode**, %struct.inode*** %14, align 8
  store %struct.inode* %261, %struct.inode** %262, align 8
  br label %263

263:                                              ; preds = %255, %254
  %264 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  %265 = call i32 @ZFS_EXIT(%struct.TYPE_31__* %264)
  %266 = load i32, i32* %23, align 4
  store i32 %266, i32* %9, align 4
  br label %267

267:                                              ; preds = %263, %214, %88, %60
  %268 = load i32, i32* %9, align 4
  ret i32 %268
}

declare dso_local %struct.TYPE_30__* @ITOZ(%struct.inode*) #1

declare dso_local %struct.TYPE_31__* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @crgetgid(i32*) #1

declare dso_local i32 @crgetuid(i32*) #1

declare dso_local i64 @IS_EPHEMERAL(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_31__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_30__*) #1

declare dso_local i32 @secpolicy_xvattr(i32*, i32, i32*, i32) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_31__*) #1

declare dso_local i32 @zfs_zaccess(%struct.TYPE_30__*, i32, i32, i64, i32*) #1

declare dso_local i32 @zfs_acl_ids_free(%struct.TYPE_32__*) #1

declare dso_local i32 @zfs_acl_ids_create(%struct.TYPE_30__*, i32, %struct.TYPE_33__*, i32*, i32*, %struct.TYPE_32__*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @zfs_inherit_projid(%struct.TYPE_30__*) #1

declare dso_local i64 @zfs_acl_ids_overquota(%struct.TYPE_31__*, %struct.TYPE_32__*, i32) #1

declare dso_local i32* @dmu_tx_create(i32*) #1

declare dso_local i32 @dmu_tx_hold_sa_create(i32*, i64) #1

declare dso_local i32 @dmu_tx_hold_zap(i32*, i32, i32, i32*) #1

declare dso_local i32 @zfs_fuid_txhold(%struct.TYPE_31__*, i32*) #1

declare dso_local i32 @dmu_tx_hold_write(i32*, i32, i32, i64) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_wait(i32*) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @zfs_mknode(%struct.TYPE_30__*, %struct.TYPE_33__*, i32*, i32*, i32, %struct.TYPE_30__**, %struct.TYPE_32__*) #1

declare dso_local i32 @zfs_fuid_sync(%struct.TYPE_31__*, i32*) #1

declare dso_local i32 @zfs_unlinked_add(%struct.TYPE_30__*, i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.inode* @ZTOI(%struct.TYPE_30__*) #1

declare dso_local i32 @zfs_inode_update(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
