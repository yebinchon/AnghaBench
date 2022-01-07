; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfsvfs_init.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfsvfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i32*, i32, i8*, i32, i32 }

@SPA_OLD_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@ZFS_SNAPDIR_VISIBLE = common dso_local global i32 0, align 4
@ZFS_PROP_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [114 x i8] c"Can't mount a version %lld file system on a version %lld pool\0A. Pool must be upgraded to mount this file system.\0A\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4
@ZFS_PROP_NORMALIZE = common dso_local global i32 0, align 4
@ZFS_PROP_UTF8ONLY = common dso_local global i32 0, align 4
@ZFS_PROP_CASE = common dso_local global i32 0, align 4
@ZFS_PROP_ACLTYPE = common dso_local global i32 0, align 4
@ZFS_CASE_INSENSITIVE = common dso_local global i64 0, align 8
@ZFS_CASE_MIXED = common dso_local global i64 0, align 8
@U8_TEXTPREP_TOUPPER = common dso_local global i32 0, align 4
@MASTER_NODE_OBJ = common dso_local global i32 0, align 4
@ZFS_SA_ATTRS = common dso_local global i32 0, align 4
@ZFS_PROP_XATTR = common dso_local global i32 0, align 4
@ZFS_XATTR_SA = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@ZFS_ROOT_OBJ = common dso_local global i32 0, align 4
@ZFS_UNLINKED_SET = common dso_local global i32 0, align 4
@zfs_userquota_prop_prefixes = common dso_local global i32* null, align 8
@ZFS_PROP_USERQUOTA = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@ZFS_PROP_GROUPQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_PROJECTQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_USEROBJQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_GROUPOBJQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_PROJECTOBJQUOTA = common dso_local global i64 0, align 8
@ZFS_FUID_TABLES = common dso_local global i32 0, align 4
@ZFS_SHARES_DIR = common dso_local global i32 0, align 4
@zfs_attr_table = common dso_local global i32 0, align 4
@ZPL_END = common dso_local global i32 0, align 4
@ZPL_VERSION_SA = common dso_local global i64 0, align 8
@zfs_sa_upgrade = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @zfsvfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfsvfs_init(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @SPA_OLD_MAXBLOCKSIZE, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 21
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @ZFS_SNAPDIR_VISIBLE, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 20
  store i32 %12, i32* %14, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 17
  store i32* %15, i32** %17, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @ZFS_PROP_VERSION, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @zfs_get_zplprop(i32* %18, i32 %19, i64* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %383

27:                                               ; preds = %2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @dmu_objset_spa(i32* %31)
  %33 = call i64 @spa_version(i32 %32)
  %34 = call i64 @zfs_zpl_version_map(i64 %33)
  %35 = icmp sgt i64 %30, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %27
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @dmu_objset_spa(i32* %41)
  %43 = call i64 @spa_version(i32 %42)
  %44 = trunc i64 %43 to i32
  %45 = call i32 @printk(i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %44)
  %46 = load i32, i32* @ENOTSUP, align 4
  %47 = call i32 @SET_ERROR(i32 %46)
  store i32 %47, i32* %3, align 4
  br label %383

48:                                               ; preds = %27
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @ZFS_PROP_NORMALIZE, align 4
  %51 = call i32 @zfs_get_zplprop(i32* %49, i32 %50, i64* %7)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %383

56:                                               ; preds = %48
  %57 = load i64, i64* %7, align 8
  %58 = trunc i64 %57 to i32
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* @ZFS_PROP_UTF8ONLY, align 4
  %63 = call i32 @zfs_get_zplprop(i32* %61, i32 %62, i64* %7)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %383

68:                                               ; preds = %56
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* @ZFS_PROP_CASE, align 4
  %76 = call i32 @zfs_get_zplprop(i32* %74, i32 %75, i64* %7)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %383

81:                                               ; preds = %68
  %82 = load i64, i64* %7, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = ptrtoint i8* %83 to i64
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* @ZFS_PROP_ACLTYPE, align 4
  %89 = call i32 @zfs_get_zplprop(i32* %87, i32 %88, i64* %7)
  store i32 %89, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %383

93:                                               ; preds = %81
  %94 = load i64, i64* %7, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 19
  store i8* %95, i8** %97, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @ZFS_CASE_INSENSITIVE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %93
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ZFS_CASE_MIXED, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %103, %93
  %110 = load i32, i32* @U8_TEXTPREP_TOUPPER, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %109, %103
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 17
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @USE_FUIDS(i64 %118, i32* %121)
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 18
  store i32 %122, i32* %124, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 17
  %130 = load i32*, i32** %129, align 8
  %131 = call i64 @USE_SA(i64 %127, i32* %130)
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 16
  store i64 %131, i64* %133, align 8
  store i64 0, i64* %8, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 16
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %162

138:                                              ; preds = %115
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* @MASTER_NODE_OBJ, align 4
  %141 = load i32, i32* @ZFS_SA_ATTRS, align 4
  %142 = call i32 @zap_lookup(i32* %139, i32 %140, i32 %141, i32 8, i32 1, i64* %8)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = load i32, i32* %6, align 4
  store i32 %146, i32* %3, align 4
  br label %383

147:                                              ; preds = %138
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* @ZFS_PROP_XATTR, align 4
  %150 = call i32 @zfs_get_zplprop(i32* %148, i32 %149, i64* %7)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %147
  %154 = load i64, i64* %7, align 8
  %155 = load i64, i64* @ZFS_XATTR_SA, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i32, i32* @B_TRUE, align 4
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 15
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %157, %153, %147
  br label %162

162:                                              ; preds = %161, %115
  %163 = load i32*, i32** %5, align 8
  %164 = load i32, i32* @MASTER_NODE_OBJ, align 4
  %165 = load i32, i32* @ZFS_ROOT_OBJ, align 4
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 4
  %168 = call i32 @zap_lookup(i32* %163, i32 %164, i32 %165, i32 8, i32 1, i64* %167)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %162
  %172 = load i32, i32* %6, align 4
  store i32 %172, i32* %3, align 4
  br label %383

173:                                              ; preds = %162
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  %178 = zext i1 %177 to i32
  %179 = call i32 @ASSERT(i32 %178)
  %180 = load i32*, i32** %5, align 8
  %181 = load i32, i32* @MASTER_NODE_OBJ, align 4
  %182 = load i32, i32* @ZFS_UNLINKED_SET, align 4
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 5
  %185 = call i32 @zap_lookup(i32* %180, i32 %181, i32 %182, i32 8, i32 1, i64* %184)
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %173
  %189 = load i32, i32* %6, align 4
  store i32 %189, i32* %3, align 4
  br label %383

190:                                              ; preds = %173
  %191 = load i32*, i32** %5, align 8
  %192 = load i32, i32* @MASTER_NODE_OBJ, align 4
  %193 = load i32*, i32** @zfs_userquota_prop_prefixes, align 8
  %194 = load i64, i64* @ZFS_PROP_USERQUOTA, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 6
  %199 = call i32 @zap_lookup(i32* %191, i32 %192, i32 %196, i32 8, i32 1, i64* %198)
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* @ENOENT, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %190
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 6
  store i64 0, i64* %205, align 8
  br label %212

206:                                              ; preds = %190
  %207 = load i32, i32* %6, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = load i32, i32* %6, align 4
  store i32 %210, i32* %3, align 4
  br label %383

211:                                              ; preds = %206
  br label %212

212:                                              ; preds = %211, %203
  %213 = load i32*, i32** %5, align 8
  %214 = load i32, i32* @MASTER_NODE_OBJ, align 4
  %215 = load i32*, i32** @zfs_userquota_prop_prefixes, align 8
  %216 = load i64, i64* @ZFS_PROP_GROUPQUOTA, align 8
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 7
  %221 = call i32 @zap_lookup(i32* %213, i32 %214, i32 %218, i32 8, i32 1, i64* %220)
  store i32 %221, i32* %6, align 4
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* @ENOENT, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %212
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 7
  store i64 0, i64* %227, align 8
  br label %234

228:                                              ; preds = %212
  %229 = load i32, i32* %6, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %228
  %232 = load i32, i32* %6, align 4
  store i32 %232, i32* %3, align 4
  br label %383

233:                                              ; preds = %228
  br label %234

234:                                              ; preds = %233, %225
  %235 = load i32*, i32** %5, align 8
  %236 = load i32, i32* @MASTER_NODE_OBJ, align 4
  %237 = load i32*, i32** @zfs_userquota_prop_prefixes, align 8
  %238 = load i64, i64* @ZFS_PROP_PROJECTQUOTA, align 8
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 8
  %243 = call i32 @zap_lookup(i32* %235, i32 %236, i32 %240, i32 8, i32 1, i64* %242)
  store i32 %243, i32* %6, align 4
  %244 = load i32, i32* %6, align 4
  %245 = load i32, i32* @ENOENT, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %247, label %250

247:                                              ; preds = %234
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 8
  store i64 0, i64* %249, align 8
  br label %256

250:                                              ; preds = %234
  %251 = load i32, i32* %6, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %250
  %254 = load i32, i32* %6, align 4
  store i32 %254, i32* %3, align 4
  br label %383

255:                                              ; preds = %250
  br label %256

256:                                              ; preds = %255, %247
  %257 = load i32*, i32** %5, align 8
  %258 = load i32, i32* @MASTER_NODE_OBJ, align 4
  %259 = load i32*, i32** @zfs_userquota_prop_prefixes, align 8
  %260 = load i64, i64* @ZFS_PROP_USEROBJQUOTA, align 8
  %261 = getelementptr inbounds i32, i32* %259, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 9
  %265 = call i32 @zap_lookup(i32* %257, i32 %258, i32 %262, i32 8, i32 1, i64* %264)
  store i32 %265, i32* %6, align 4
  %266 = load i32, i32* %6, align 4
  %267 = load i32, i32* @ENOENT, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %272

269:                                              ; preds = %256
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 9
  store i64 0, i64* %271, align 8
  br label %278

272:                                              ; preds = %256
  %273 = load i32, i32* %6, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %272
  %276 = load i32, i32* %6, align 4
  store i32 %276, i32* %3, align 4
  br label %383

277:                                              ; preds = %272
  br label %278

278:                                              ; preds = %277, %269
  %279 = load i32*, i32** %5, align 8
  %280 = load i32, i32* @MASTER_NODE_OBJ, align 4
  %281 = load i32*, i32** @zfs_userquota_prop_prefixes, align 8
  %282 = load i64, i64* @ZFS_PROP_GROUPOBJQUOTA, align 8
  %283 = getelementptr inbounds i32, i32* %281, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 10
  %287 = call i32 @zap_lookup(i32* %279, i32 %280, i32 %284, i32 8, i32 1, i64* %286)
  store i32 %287, i32* %6, align 4
  %288 = load i32, i32* %6, align 4
  %289 = load i32, i32* @ENOENT, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %294

291:                                              ; preds = %278
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 10
  store i64 0, i64* %293, align 8
  br label %300

294:                                              ; preds = %278
  %295 = load i32, i32* %6, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %294
  %298 = load i32, i32* %6, align 4
  store i32 %298, i32* %3, align 4
  br label %383

299:                                              ; preds = %294
  br label %300

300:                                              ; preds = %299, %291
  %301 = load i32*, i32** %5, align 8
  %302 = load i32, i32* @MASTER_NODE_OBJ, align 4
  %303 = load i32*, i32** @zfs_userquota_prop_prefixes, align 8
  %304 = load i64, i64* @ZFS_PROP_PROJECTOBJQUOTA, align 8
  %305 = getelementptr inbounds i32, i32* %303, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 11
  %309 = call i32 @zap_lookup(i32* %301, i32 %302, i32 %306, i32 8, i32 1, i64* %308)
  store i32 %309, i32* %6, align 4
  %310 = load i32, i32* %6, align 4
  %311 = load i32, i32* @ENOENT, align 4
  %312 = icmp eq i32 %310, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %300
  %314 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %314, i32 0, i32 11
  store i64 0, i64* %315, align 8
  br label %322

316:                                              ; preds = %300
  %317 = load i32, i32* %6, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %316
  %320 = load i32, i32* %6, align 4
  store i32 %320, i32* %3, align 4
  br label %383

321:                                              ; preds = %316
  br label %322

322:                                              ; preds = %321, %313
  %323 = load i32*, i32** %5, align 8
  %324 = load i32, i32* @MASTER_NODE_OBJ, align 4
  %325 = load i32, i32* @ZFS_FUID_TABLES, align 4
  %326 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %326, i32 0, i32 12
  %328 = call i32 @zap_lookup(i32* %323, i32 %324, i32 %325, i32 8, i32 1, i64* %327)
  store i32 %328, i32* %6, align 4
  %329 = load i32, i32* %6, align 4
  %330 = load i32, i32* @ENOENT, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %332, label %335

332:                                              ; preds = %322
  %333 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 12
  store i64 0, i64* %334, align 8
  br label %341

335:                                              ; preds = %322
  %336 = load i32, i32* %6, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %335
  %339 = load i32, i32* %6, align 4
  store i32 %339, i32* %3, align 4
  br label %383

340:                                              ; preds = %335
  br label %341

341:                                              ; preds = %340, %332
  %342 = load i32*, i32** %5, align 8
  %343 = load i32, i32* @MASTER_NODE_OBJ, align 4
  %344 = load i32, i32* @ZFS_SHARES_DIR, align 4
  %345 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %345, i32 0, i32 13
  %347 = call i32 @zap_lookup(i32* %342, i32 %343, i32 %344, i32 8, i32 1, i64* %346)
  store i32 %347, i32* %6, align 4
  %348 = load i32, i32* %6, align 4
  %349 = load i32, i32* @ENOENT, align 4
  %350 = icmp eq i32 %348, %349
  br i1 %350, label %351, label %354

351:                                              ; preds = %341
  %352 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %352, i32 0, i32 13
  store i64 0, i64* %353, align 8
  br label %360

354:                                              ; preds = %341
  %355 = load i32, i32* %6, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %359

357:                                              ; preds = %354
  %358 = load i32, i32* %6, align 4
  store i32 %358, i32* %3, align 4
  br label %383

359:                                              ; preds = %354
  br label %360

360:                                              ; preds = %359, %351
  %361 = load i32*, i32** %5, align 8
  %362 = load i64, i64* %8, align 8
  %363 = load i32, i32* @zfs_attr_table, align 4
  %364 = load i32, i32* @ZPL_END, align 4
  %365 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %365, i32 0, i32 14
  %367 = call i32 @sa_setup(i32* %361, i64 %362, i32 %363, i32 %364, i32* %366)
  store i32 %367, i32* %6, align 4
  %368 = load i32, i32* %6, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %372

370:                                              ; preds = %360
  %371 = load i32, i32* %6, align 4
  store i32 %371, i32* %3, align 4
  br label %383

372:                                              ; preds = %360
  %373 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @ZPL_VERSION_SA, align 8
  %377 = icmp sge i64 %375, %376
  br i1 %377, label %378, label %382

378:                                              ; preds = %372
  %379 = load i32*, i32** %5, align 8
  %380 = load i32, i32* @zfs_sa_upgrade, align 4
  %381 = call i32 @sa_register_update_callback(i32* %379, i32 %380)
  br label %382

382:                                              ; preds = %378, %372
  store i32 0, i32* %3, align 4
  br label %383

383:                                              ; preds = %382, %370, %357, %338, %319, %297, %275, %253, %231, %209, %188, %171, %145, %91, %79, %66, %54, %36, %25
  %384 = load i32, i32* %3, align 4
  ret i32 %384
}

declare dso_local i32 @zfs_get_zplprop(i32*, i32, i64*) #1

declare dso_local i64 @zfs_zpl_version_map(i64) #1

declare dso_local i64 @spa_version(i32) #1

declare dso_local i32 @dmu_objset_spa(i32*) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @USE_FUIDS(i64, i32*) #1

declare dso_local i64 @USE_SA(i64, i32*) #1

declare dso_local i32 @zap_lookup(i32*, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @sa_setup(i32*, i64, i32, i32, i32*) #1

declare dso_local i32 @sa_register_update_callback(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
