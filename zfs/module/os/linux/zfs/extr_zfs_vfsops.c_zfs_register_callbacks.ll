; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfs_register_callbacks.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfs_register_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i8*, i32*, %struct.TYPE_22__* }
%struct.dsl_dataset = type { i32 }

@B_TRUE = common dso_local global i8* null, align 8
@FTAG = common dso_local global i32 0, align 4
@ZFS_PROP_ATIME = common dso_local global i32 0, align 4
@ZFS_PROP_RELATIME = common dso_local global i32 0, align 4
@ZFS_PROP_XATTR = common dso_local global i32 0, align 4
@ZFS_PROP_RECORDSIZE = common dso_local global i32 0, align 4
@ZFS_PROP_READONLY = common dso_local global i32 0, align 4
@ZFS_PROP_DEVICES = common dso_local global i32 0, align 4
@ZFS_PROP_SETUID = common dso_local global i32 0, align 4
@ZFS_PROP_EXEC = common dso_local global i32 0, align 4
@ZFS_PROP_SNAPDIR = common dso_local global i32 0, align 4
@ZFS_PROP_ACLTYPE = common dso_local global i32 0, align 4
@ZFS_PROP_ACLINHERIT = common dso_local global i32 0, align 4
@ZFS_PROP_VSCAN = common dso_local global i32 0, align 4
@ZFS_PROP_NBMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*)* @zfs_register_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_register_callbacks(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.dsl_dataset*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.dsl_dataset* null, %struct.dsl_dataset** %4, align 8
  store i32* null, i32** %5, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %9 = call i32 @ASSERT(%struct.TYPE_22__* %8)
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 17
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_22__* %12, %struct.TYPE_22__** %6, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %14 = call i32 @ASSERT(%struct.TYPE_22__* %13)
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 16
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %19 = call i64 @zfs_is_readonly(%struct.TYPE_22__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @dmu_objset_spa(i32* %22)
  %24 = call i32 @spa_writeable(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %21, %1
  %27 = load i8*, i8** @B_TRUE, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 15
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @B_TRUE, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 14
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %26, %21
  %34 = load i32*, i32** %5, align 8
  %35 = call %struct.dsl_dataset* @dmu_objset_ds(i32* %34)
  store %struct.dsl_dataset* %35, %struct.dsl_dataset** %4, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @dmu_objset_pool(i32* %36)
  %38 = load i32, i32* @FTAG, align 4
  %39 = call i32 @dsl_pool_config_enter(i32 %37, i32 %38)
  %40 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %41 = load i32, i32* @ZFS_PROP_ATIME, align 4
  %42 = call i32 @zfs_prop_to_name(i32 %41)
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %44 = call i32 @dsl_prop_register(%struct.dsl_dataset* %40, i32 %42, i32 (%struct.TYPE_22__*, i8*)* @atime_changed_cb, %struct.TYPE_22__* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i32, i32* %7, align 4
  br label %55

49:                                               ; preds = %33
  %50 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %51 = load i32, i32* @ZFS_PROP_RELATIME, align 4
  %52 = call i32 @zfs_prop_to_name(i32 %51)
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %54 = call i32 @dsl_prop_register(%struct.dsl_dataset* %50, i32 %52, i32 (%struct.TYPE_22__*, i8*)* @relatime_changed_cb, %struct.TYPE_22__* %53)
  br label %55

55:                                               ; preds = %49, %47
  %56 = phi i32 [ %48, %47 ], [ %54, %49 ]
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  br label %67

61:                                               ; preds = %55
  %62 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %63 = load i32, i32* @ZFS_PROP_XATTR, align 4
  %64 = call i32 @zfs_prop_to_name(i32 %63)
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %66 = call i32 @dsl_prop_register(%struct.dsl_dataset* %62, i32 %64, i32 (%struct.TYPE_22__*, i8*)* @xattr_changed_cb, %struct.TYPE_22__* %65)
  br label %67

67:                                               ; preds = %61, %59
  %68 = phi i32 [ %60, %59 ], [ %66, %61 ]
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  br label %79

73:                                               ; preds = %67
  %74 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %75 = load i32, i32* @ZFS_PROP_RECORDSIZE, align 4
  %76 = call i32 @zfs_prop_to_name(i32 %75)
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %78 = call i32 @dsl_prop_register(%struct.dsl_dataset* %74, i32 %76, i32 (%struct.TYPE_22__*, i8*)* @blksz_changed_cb, %struct.TYPE_22__* %77)
  br label %79

79:                                               ; preds = %73, %71
  %80 = phi i32 [ %72, %71 ], [ %78, %73 ]
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* %7, align 4
  br label %91

85:                                               ; preds = %79
  %86 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %87 = load i32, i32* @ZFS_PROP_READONLY, align 4
  %88 = call i32 @zfs_prop_to_name(i32 %87)
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %90 = call i32 @dsl_prop_register(%struct.dsl_dataset* %86, i32 %88, i32 (%struct.TYPE_22__*, i8*)* @readonly_changed_cb, %struct.TYPE_22__* %89)
  br label %91

91:                                               ; preds = %85, %83
  %92 = phi i32 [ %84, %83 ], [ %90, %85 ]
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* %7, align 4
  br label %103

97:                                               ; preds = %91
  %98 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %99 = load i32, i32* @ZFS_PROP_DEVICES, align 4
  %100 = call i32 @zfs_prop_to_name(i32 %99)
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %102 = call i32 @dsl_prop_register(%struct.dsl_dataset* %98, i32 %100, i32 (%struct.TYPE_22__*, i8*)* @devices_changed_cb, %struct.TYPE_22__* %101)
  br label %103

103:                                              ; preds = %97, %95
  %104 = phi i32 [ %96, %95 ], [ %102, %97 ]
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* %7, align 4
  br label %115

109:                                              ; preds = %103
  %110 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %111 = load i32, i32* @ZFS_PROP_SETUID, align 4
  %112 = call i32 @zfs_prop_to_name(i32 %111)
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %114 = call i32 @dsl_prop_register(%struct.dsl_dataset* %110, i32 %112, i32 (%struct.TYPE_22__*, i8*)* @setuid_changed_cb, %struct.TYPE_22__* %113)
  br label %115

115:                                              ; preds = %109, %107
  %116 = phi i32 [ %108, %107 ], [ %114, %109 ]
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32, i32* %7, align 4
  br label %127

121:                                              ; preds = %115
  %122 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %123 = load i32, i32* @ZFS_PROP_EXEC, align 4
  %124 = call i32 @zfs_prop_to_name(i32 %123)
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %126 = call i32 @dsl_prop_register(%struct.dsl_dataset* %122, i32 %124, i32 (%struct.TYPE_22__*, i8*)* @exec_changed_cb, %struct.TYPE_22__* %125)
  br label %127

127:                                              ; preds = %121, %119
  %128 = phi i32 [ %120, %119 ], [ %126, %121 ]
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i32, i32* %7, align 4
  br label %139

133:                                              ; preds = %127
  %134 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %135 = load i32, i32* @ZFS_PROP_SNAPDIR, align 4
  %136 = call i32 @zfs_prop_to_name(i32 %135)
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %138 = call i32 @dsl_prop_register(%struct.dsl_dataset* %134, i32 %136, i32 (%struct.TYPE_22__*, i8*)* @snapdir_changed_cb, %struct.TYPE_22__* %137)
  br label %139

139:                                              ; preds = %133, %131
  %140 = phi i32 [ %132, %131 ], [ %138, %133 ]
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i32, i32* %7, align 4
  br label %151

145:                                              ; preds = %139
  %146 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %147 = load i32, i32* @ZFS_PROP_ACLTYPE, align 4
  %148 = call i32 @zfs_prop_to_name(i32 %147)
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %150 = call i32 @dsl_prop_register(%struct.dsl_dataset* %146, i32 %148, i32 (%struct.TYPE_22__*, i8*)* @acltype_changed_cb, %struct.TYPE_22__* %149)
  br label %151

151:                                              ; preds = %145, %143
  %152 = phi i32 [ %144, %143 ], [ %150, %145 ]
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i32, i32* %7, align 4
  br label %163

157:                                              ; preds = %151
  %158 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %159 = load i32, i32* @ZFS_PROP_ACLINHERIT, align 4
  %160 = call i32 @zfs_prop_to_name(i32 %159)
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %162 = call i32 @dsl_prop_register(%struct.dsl_dataset* %158, i32 %160, i32 (%struct.TYPE_22__*, i8*)* @acl_inherit_changed_cb, %struct.TYPE_22__* %161)
  br label %163

163:                                              ; preds = %157, %155
  %164 = phi i32 [ %156, %155 ], [ %162, %157 ]
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load i32, i32* %7, align 4
  br label %175

169:                                              ; preds = %163
  %170 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %171 = load i32, i32* @ZFS_PROP_VSCAN, align 4
  %172 = call i32 @zfs_prop_to_name(i32 %171)
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %174 = call i32 @dsl_prop_register(%struct.dsl_dataset* %170, i32 %172, i32 (%struct.TYPE_22__*, i8*)* @vscan_changed_cb, %struct.TYPE_22__* %173)
  br label %175

175:                                              ; preds = %169, %167
  %176 = phi i32 [ %168, %167 ], [ %174, %169 ]
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %7, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = load i32, i32* %7, align 4
  br label %187

181:                                              ; preds = %175
  %182 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %183 = load i32, i32* @ZFS_PROP_NBMAND, align 4
  %184 = call i32 @zfs_prop_to_name(i32 %183)
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %186 = call i32 @dsl_prop_register(%struct.dsl_dataset* %182, i32 %184, i32 (%struct.TYPE_22__*, i8*)* @nbmand_changed_cb, %struct.TYPE_22__* %185)
  br label %187

187:                                              ; preds = %181, %179
  %188 = phi i32 [ %180, %179 ], [ %186, %181 ]
  store i32 %188, i32* %7, align 4
  %189 = load i32*, i32** %5, align 8
  %190 = call i32 @dmu_objset_pool(i32* %189)
  %191 = load i32, i32* @FTAG, align 4
  %192 = call i32 @dsl_pool_config_exit(i32 %190, i32 %191)
  %193 = load i32, i32* %7, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  br label %285

196:                                              ; preds = %187
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 15
  %199 = load i8*, i8** %198, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %207

201:                                              ; preds = %196
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 14
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @readonly_changed_cb(%struct.TYPE_22__* %202, i8* %205)
  br label %207

207:                                              ; preds = %201, %196
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 13
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %207
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 12
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 @setuid_changed_cb(%struct.TYPE_22__* %213, i8* %216)
  br label %218

218:                                              ; preds = %212, %207
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 11
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %218
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 10
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @exec_changed_cb(%struct.TYPE_22__* %224, i8* %227)
  br label %229

229:                                              ; preds = %223, %218
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 9
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %229
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 8
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @devices_changed_cb(%struct.TYPE_22__* %235, i8* %238)
  br label %240

240:                                              ; preds = %234, %229
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 7
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %240
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 6
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 @xattr_changed_cb(%struct.TYPE_22__* %246, i8* %249)
  br label %251

251:                                              ; preds = %245, %240
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 5
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %251
  %257 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %258 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 4
  %260 = load i8*, i8** %259, align 8
  %261 = call i32 @atime_changed_cb(%struct.TYPE_22__* %257, i8* %260)
  br label %262

262:                                              ; preds = %256, %251
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %262
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %269 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 2
  %271 = load i8*, i8** %270, align 8
  %272 = call i32 @relatime_changed_cb(%struct.TYPE_22__* %268, i8* %271)
  br label %273

273:                                              ; preds = %267, %262
  %274 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %273
  %279 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 0
  %282 = load i8*, i8** %281, align 8
  %283 = call i32 @nbmand_changed_cb(%struct.TYPE_22__* %279, i8* %282)
  br label %284

284:                                              ; preds = %278, %273
  store i32 0, i32* %2, align 4
  br label %290

285:                                              ; preds = %195
  %286 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %287 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %288 = call i32 @dsl_prop_unregister_all(%struct.dsl_dataset* %286, %struct.TYPE_22__* %287)
  %289 = load i32, i32* %7, align 4
  store i32 %289, i32* %2, align 4
  br label %290

290:                                              ; preds = %285, %284
  %291 = load i32, i32* %2, align 4
  ret i32 %291
}

declare dso_local i32 @ASSERT(%struct.TYPE_22__*) #1

declare dso_local i64 @zfs_is_readonly(%struct.TYPE_22__*) #1

declare dso_local i32 @spa_writeable(i32) #1

declare dso_local i32 @dmu_objset_spa(i32*) #1

declare dso_local %struct.dsl_dataset* @dmu_objset_ds(i32*) #1

declare dso_local i32 @dsl_pool_config_enter(i32, i32) #1

declare dso_local i32 @dmu_objset_pool(i32*) #1

declare dso_local i32 @dsl_prop_register(%struct.dsl_dataset*, i32, i32 (%struct.TYPE_22__*, i8*)*, %struct.TYPE_22__*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @atime_changed_cb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @relatime_changed_cb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @xattr_changed_cb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @blksz_changed_cb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @readonly_changed_cb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @devices_changed_cb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @setuid_changed_cb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @exec_changed_cb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @snapdir_changed_cb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @acltype_changed_cb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @acl_inherit_changed_cb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @vscan_changed_cb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @nbmand_changed_cb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @dsl_pool_config_exit(i32, i32) #1

declare dso_local i32 @dsl_prop_unregister_all(%struct.dsl_dataset*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
