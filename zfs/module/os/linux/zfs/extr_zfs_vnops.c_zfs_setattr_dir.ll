; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_setattr_dir.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_setattr_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32, i32, i32 }
%struct.inode = type { i32, i32 }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_16__ = type { i32, i32, i64 }

@ENXIO = common dso_local global i32 0, align 4
@ZEXISTS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ZFS_PROJID = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @zfs_setattr_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_setattr_dir(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %18 = call %struct.inode* @ZTOI(%struct.TYPE_14__* %17)
  store %struct.inode* %18, %struct.inode** %3, align 8
  store %struct.inode* null, %struct.inode** %4, align 8
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = call %struct.TYPE_15__* @ITOZSB(%struct.inode* %19)
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %5, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %6, align 8
  store i32* null, i32** %11, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @zap_cursor_init(i32* %7, i32* %24, i32 %27)
  br label %29

29:                                               ; preds = %248, %1
  %30 = call i32 @zap_cursor_retrieve(i32* %7, %struct.TYPE_16__* %8)
  store i32 %30, i32* %16, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %250

32:                                               ; preds = %29
  store i32 0, i32* %15, align 4
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 8
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %32
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %16, align 4
  br label %250

42:                                               ; preds = %36
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = load i32, i32* @ZEXISTS, align 4
  %48 = call i32 @zfs_dirent_lock(i32** %9, %struct.TYPE_14__* %43, i8* %46, %struct.TYPE_14__** %10, i32 %47, i32* null, i32* null)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* @ENOENT, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %240

53:                                               ; preds = %42
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %250

57:                                               ; preds = %53
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %59 = call %struct.inode* @ZTOI(%struct.TYPE_14__* %58)
  store %struct.inode* %59, %struct.inode** %4, align 8
  %60 = load %struct.inode*, %struct.inode** %4, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @KUID_TO_SUID(i32 %62)
  %64 = load %struct.inode*, %struct.inode** %3, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @KUID_TO_SUID(i32 %66)
  %68 = icmp eq i64 %63, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %57
  %70 = load %struct.inode*, %struct.inode** %4, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @KGID_TO_SGID(i32 %72)
  %74 = load %struct.inode*, %struct.inode** %3, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @KGID_TO_SGID(i32 %76)
  %78 = icmp eq i64 %73, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %69
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %240

88:                                               ; preds = %79, %69, %57
  %89 = load i32*, i32** %6, align 8
  %90 = call i32* @dmu_tx_create(i32* %89)
  store i32* %90, i32** %11, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ZFS_PROJID, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %88
  %98 = load i32*, i32** %11, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @B_TRUE, align 4
  %103 = call i32 @dmu_tx_hold_sa(i32* %98, i32 %101, i32 %102)
  br label %111

104:                                              ; preds = %88
  %105 = load i32*, i32** %11, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @B_FALSE, align 4
  %110 = call i32 @dmu_tx_hold_sa(i32* %105, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %104, %97
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* @TXG_WAIT, align 4
  %114 = call i32 @dmu_tx_assign(i32* %112, i32 %113)
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %250

118:                                              ; preds = %111
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 3
  %121 = call i32 @mutex_enter(i32* %120)
  %122 = load %struct.inode*, %struct.inode** %4, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @KUID_TO_SUID(i32 %124)
  %126 = load %struct.inode*, %struct.inode** %3, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @KUID_TO_SUID(i32 %128)
  %130 = icmp ne i64 %125, %129
  br i1 %130, label %131, label %144

131:                                              ; preds = %118
  %132 = load %struct.inode*, %struct.inode** %3, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.inode*, %struct.inode** %4, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load %struct.inode*, %struct.inode** %3, align 8
  %138 = call i32 @zfs_uid_read(%struct.inode* %137)
  store i32 %138, i32* %12, align 4
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %142 = call i32 @SA_ZPL_UID(%struct.TYPE_15__* %141)
  %143 = call i32 @SA_ADD_BULK_ATTR(i32* %139, i32 %140, i32 %142, i32* null, i32* %12, i32 4)
  br label %144

144:                                              ; preds = %131, %118
  %145 = load %struct.inode*, %struct.inode** %4, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @KGID_TO_SGID(i32 %147)
  %149 = load %struct.inode*, %struct.inode** %3, align 8
  %150 = getelementptr inbounds %struct.inode, %struct.inode* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @KGID_TO_SGID(i32 %151)
  %153 = icmp ne i64 %148, %152
  br i1 %153, label %154, label %167

154:                                              ; preds = %144
  %155 = load %struct.inode*, %struct.inode** %3, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.inode*, %struct.inode** %4, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 4
  %160 = load %struct.inode*, %struct.inode** %3, align 8
  %161 = call i32 @zfs_gid_read(%struct.inode* %160)
  store i32 %161, i32* %13, align 4
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %163 = load i32, i32* %15, align 4
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %165 = call i32 @SA_ZPL_GID(%struct.TYPE_15__* %164)
  %166 = call i32 @SA_ADD_BULK_ATTR(i32* %162, i32 %163, i32 %165, i32* null, i32* %13, i32 4)
  br label %167

167:                                              ; preds = %154, %144
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %170, %173
  br i1 %174, label %175, label %209

175:                                              ; preds = %167
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @ZFS_PROJID, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %195, label %182

182:                                              ; preds = %175
  %183 = load i32, i32* @ZFS_PROJID, align 4
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 8
  %188 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %189 = load i32, i32* %15, align 4
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %191 = call i32 @SA_ZPL_FLAGS(%struct.TYPE_15__* %190)
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 1
  %194 = call i32 @SA_ADD_BULK_ATTR(i32* %188, i32 %189, i32 %191, i32* null, i32* %193, i32 4)
  br label %195

195:                                              ; preds = %182, %175
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  store i64 %198, i64* %200, align 8
  %201 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %202 = load i32, i32* %15, align 4
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %204 = call i32 @SA_ZPL_PROJID(%struct.TYPE_15__* %203)
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = bitcast i64* %206 to i32*
  %208 = call i32 @SA_ADD_BULK_ATTR(i32* %201, i32 %202, i32 %204, i32* null, i32* %207, i32 8)
  br label %209

209:                                              ; preds = %195, %167
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 3
  %212 = call i32 @mutex_exit(i32* %211)
  %213 = load i32, i32* %15, align 4
  %214 = icmp sgt i32 %213, 0
  %215 = zext i1 %214 to i32
  %216 = call i64 @likely(i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %228

218:                                              ; preds = %209
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %223 = load i32, i32* %15, align 4
  %224 = load i32*, i32** %11, align 8
  %225 = call i32 @sa_bulk_update(i32 %221, i32* %222, i32 %223, i32* %224)
  store i32 %225, i32* %16, align 4
  %226 = load i32*, i32** %11, align 8
  %227 = call i32 @dmu_tx_commit(i32* %226)
  br label %231

228:                                              ; preds = %209
  %229 = load i32*, i32** %11, align 8
  %230 = call i32 @dmu_tx_abort(i32* %229)
  br label %231

231:                                              ; preds = %228, %218
  store i32* null, i32** %11, align 8
  %232 = load i32, i32* %16, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %231
  %235 = load i32, i32* %16, align 4
  %236 = load i32, i32* @ENOENT, align 4
  %237 = icmp ne i32 %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %234
  br label %250

239:                                              ; preds = %234, %231
  br label %240

240:                                              ; preds = %239, %87, %52
  %241 = load %struct.inode*, %struct.inode** %4, align 8
  %242 = icmp ne %struct.inode* %241, null
  br i1 %242, label %243, label %248

243:                                              ; preds = %240
  %244 = load %struct.inode*, %struct.inode** %4, align 8
  %245 = call i32 @iput(%struct.inode* %244)
  store %struct.inode* null, %struct.inode** %4, align 8
  %246 = load i32*, i32** %9, align 8
  %247 = call i32 @zfs_dirent_unlock(i32* %246)
  br label %248

248:                                              ; preds = %243, %240
  %249 = call i32 @zap_cursor_advance(i32* %7)
  br label %29

250:                                              ; preds = %238, %117, %56, %40, %29
  %251 = load i32*, i32** %11, align 8
  %252 = icmp ne i32* %251, null
  br i1 %252, label %253, label %256

253:                                              ; preds = %250
  %254 = load i32*, i32** %11, align 8
  %255 = call i32 @dmu_tx_abort(i32* %254)
  br label %256

256:                                              ; preds = %253, %250
  %257 = load %struct.inode*, %struct.inode** %4, align 8
  %258 = icmp ne %struct.inode* %257, null
  br i1 %258, label %259, label %264

259:                                              ; preds = %256
  %260 = load %struct.inode*, %struct.inode** %4, align 8
  %261 = call i32 @iput(%struct.inode* %260)
  %262 = load i32*, i32** %9, align 8
  %263 = call i32 @zfs_dirent_unlock(i32* %262)
  br label %264

264:                                              ; preds = %259, %256
  %265 = call i32 @zap_cursor_fini(i32* %7)
  %266 = load i32, i32* %16, align 4
  %267 = load i32, i32* @ENOENT, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %264
  br label %272

270:                                              ; preds = %264
  %271 = load i32, i32* %16, align 4
  br label %272

272:                                              ; preds = %270, %269
  %273 = phi i32 [ 0, %269 ], [ %271, %270 ]
  ret i32 %273
}

declare dso_local %struct.inode* @ZTOI(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @zap_cursor_init(i32*, i32*, i32) #1

declare dso_local i32 @zap_cursor_retrieve(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @zfs_dirent_lock(i32**, %struct.TYPE_14__*, i8*, %struct.TYPE_14__**, i32, i32*, i32*) #1

declare dso_local i64 @KUID_TO_SUID(i32) #1

declare dso_local i64 @KGID_TO_SGID(i32) #1

declare dso_local i32* @dmu_tx_create(i32*) #1

declare dso_local i32 @dmu_tx_hold_sa(i32*, i32, i32) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @zfs_uid_read(%struct.inode*) #1

declare dso_local i32 @SA_ADD_BULK_ATTR(i32*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @SA_ZPL_UID(%struct.TYPE_15__*) #1

declare dso_local i32 @zfs_gid_read(%struct.inode*) #1

declare dso_local i32 @SA_ZPL_GID(%struct.TYPE_15__*) #1

declare dso_local i32 @SA_ZPL_FLAGS(%struct.TYPE_15__*) #1

declare dso_local i32 @SA_ZPL_PROJID(%struct.TYPE_15__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @sa_bulk_update(i32, i32*, i32, i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @zfs_dirent_unlock(i32*) #1

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
