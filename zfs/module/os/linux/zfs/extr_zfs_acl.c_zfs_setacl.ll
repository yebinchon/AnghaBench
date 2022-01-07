; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_setacl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_setacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_28__*, i32, i32 }
%struct.TYPE_28__ = type { i32, i64 }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_27__ = type { i64, i64, i32, i32* }
%struct.TYPE_26__ = type { i32 }

@VSA_ACE = common dso_local global i64 0, align 8
@VSA_ACECNT = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@ZFS_IMMUTABLE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ACE_WRITE_ACL = common dso_local global i32 0, align 4
@VSA_ACE_ACLFLAGS = common dso_local global i32 0, align 4
@V4_ACL_WIDE_FLAGS = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ZPL_VERSION_FUID = common dso_local global i64 0, align 8
@ZFS_ACL_VERSION_INITIAL = common dso_local global i64 0, align 8
@DMU_OBJECT_END = common dso_local global i32 0, align 4
@DMU_NEW_OBJECT = common dso_local global i32 0, align 4
@ZFS_ACE_SPACE = common dso_local global i64 0, align 8
@TXG_NOWAIT = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_setacl(%struct.TYPE_25__* %0, %struct.TYPE_29__* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %20 = call %struct.TYPE_27__* @ZTOZSB(%struct.TYPE_25__* %19)
  store %struct.TYPE_27__* %20, %struct.TYPE_27__** %10, align 8
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %11, align 8
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VSA_ACE, align 8
  %28 = load i64, i64* @VSA_ACECNT, align 8
  %29 = or i64 %27, %28
  %30 = and i64 %26, %29
  store i64 %30, i64* %12, align 8
  store i32* null, i32** %16, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i32, i32* @ENOSYS, align 4
  %35 = call i32 @SET_ERROR(i32 %34)
  store i32 %35, i32* %5, align 4
  br label %243

36:                                               ; preds = %4
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ZFS_IMMUTABLE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @EPERM, align 4
  %45 = call i32 @SET_ERROR(i32 %44)
  store i32 %45, i32* %5, align 4
  br label %243

46:                                               ; preds = %36
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %48 = load i32, i32* @ACE_WRITE_ACL, align 4
  %49 = load i64, i64* %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @zfs_zaccess(%struct.TYPE_25__* %47, i32 %48, i32 0, i64 %49, i32* %50)
  store i32 %51, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %5, align 4
  br label %243

55:                                               ; preds = %46
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %58 = call %struct.TYPE_26__* @ZTOI(%struct.TYPE_25__* %57)
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @zfs_vsec_2_aclp(%struct.TYPE_27__* %56, i32 %60, %struct.TYPE_29__* %61, i32* %62, i32** %16, %struct.TYPE_28__** %15)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %5, align 4
  br label %243

68:                                               ; preds = %55
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @VSA_ACE_ACLFLAGS, align 4
  %73 = sext i32 %72 to i64
  %74 = and i64 %71, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %68
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @V4_ACL_WIDE_FLAGS, align 4
  %81 = and i32 %79, %80
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %76, %68
  br label %87

87:                                               ; preds = %185, %86
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 1
  %90 = call i32 @mutex_enter(i32* %89)
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 2
  %93 = call i32 @mutex_enter(i32* %92)
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32* @dmu_tx_create(i32 %96)
  store i32* %97, i32** %13, align 8
  %98 = load i32*, i32** %13, align 8
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @B_TRUE, align 4
  %103 = call i32 @dmu_tx_hold_sa(i32* %98, i32 %101, i32 %102)
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %17, align 8
  %107 = load i64, i64* %17, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %87
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %111 = load i32*, i32** %13, align 8
  %112 = call i32 @zfs_fuid_txhold(%struct.TYPE_27__* %110, i32* %111)
  br label %113

113:                                              ; preds = %109, %87
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %115 = call i32 @zfs_external_acl(%struct.TYPE_25__* %114)
  store i32 %115, i32* %18, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %147

117:                                              ; preds = %113
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @ZPL_VERSION_FUID, align 8
  %122 = icmp sge i64 %120, %121
  br i1 %122, label %123, label %139

123:                                              ; preds = %117
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %125 = call i64 @zfs_znode_acl_version(%struct.TYPE_25__* %124)
  %126 = load i64, i64* @ZFS_ACL_VERSION_INITIAL, align 8
  %127 = icmp sle i64 %125, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %123
  %129 = load i32*, i32** %13, align 8
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* @DMU_OBJECT_END, align 4
  %132 = call i32 @dmu_tx_hold_free(i32* %129, i32 %130, i32 0, i32 %131)
  %133 = load i32*, i32** %13, align 8
  %134 = load i32, i32* @DMU_NEW_OBJECT, align 4
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @dmu_tx_hold_write(i32* %133, i32 %134, i32 0, i64 %137)
  br label %146

139:                                              ; preds = %123, %117
  %140 = load i32*, i32** %13, align 8
  %141 = load i32, i32* %18, align 4
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @dmu_tx_hold_write(i32* %140, i32 %141, i32 0, i64 %144)
  br label %146

146:                                              ; preds = %139, %128
  br label %166

147:                                              ; preds = %113
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %165, label %152

152:                                              ; preds = %147
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @ZFS_ACE_SPACE, align 8
  %157 = icmp sgt i64 %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %152
  %159 = load i32*, i32** %13, align 8
  %160 = load i32, i32* @DMU_NEW_OBJECT, align 4
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @dmu_tx_hold_write(i32* %159, i32 %160, i32 0, i64 %163)
  br label %165

165:                                              ; preds = %158, %152, %147
  br label %166

166:                                              ; preds = %165, %146
  %167 = load i32*, i32** %13, align 8
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %169 = call i32 @zfs_sa_upgrade_txholds(i32* %167, %struct.TYPE_25__* %168)
  %170 = load i32*, i32** %13, align 8
  %171 = load i32, i32* @TXG_NOWAIT, align 4
  %172 = call i32 @dmu_tx_assign(i32* %170, i32 %171)
  store i32 %172, i32* %14, align 4
  %173 = load i32, i32* %14, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %196

175:                                              ; preds = %166
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 1
  %178 = call i32 @mutex_exit(i32* %177)
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 2
  %181 = call i32 @mutex_exit(i32* %180)
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* @ERESTART, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %175
  %186 = load i32*, i32** %13, align 8
  %187 = call i32 @dmu_tx_wait(i32* %186)
  %188 = load i32*, i32** %13, align 8
  %189 = call i32 @dmu_tx_abort(i32* %188)
  br label %87

190:                                              ; preds = %175
  %191 = load i32*, i32** %13, align 8
  %192 = call i32 @dmu_tx_abort(i32* %191)
  %193 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %194 = call i32 @zfs_acl_free(%struct.TYPE_28__* %193)
  %195 = load i32, i32* %14, align 4
  store i32 %195, i32* %5, align 4
  br label %243

196:                                              ; preds = %166
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %199 = load i32*, i32** %9, align 8
  %200 = load i32*, i32** %13, align 8
  %201 = call i32 @zfs_aclset_common(%struct.TYPE_25__* %197, %struct.TYPE_28__* %198, i32* %199, i32* %200)
  store i32 %201, i32* %14, align 4
  %202 = load i32, i32* %14, align 4
  %203 = icmp eq i32 %202, 0
  %204 = zext i1 %203 to i32
  %205 = call i32 @ASSERT(i32 %204)
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 3
  %208 = load %struct.TYPE_28__*, %struct.TYPE_28__** %207, align 8
  %209 = icmp eq %struct.TYPE_28__* %208, null
  %210 = zext i1 %209 to i32
  %211 = call i32 @ASSERT(i32 %210)
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %213, i32 0, i32 3
  store %struct.TYPE_28__* %212, %struct.TYPE_28__** %214, align 8
  %215 = load i64, i64* %17, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %196
  %218 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %219 = load i32*, i32** %13, align 8
  %220 = call i32 @zfs_fuid_sync(%struct.TYPE_27__* %218, i32* %219)
  br label %221

221:                                              ; preds = %217, %196
  %222 = load i32*, i32** %11, align 8
  %223 = load i32*, i32** %13, align 8
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %225 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %226 = load i32*, i32** %16, align 8
  %227 = call i32 @zfs_log_acl(i32* %222, i32* %223, %struct.TYPE_25__* %224, %struct.TYPE_29__* %225, i32* %226)
  %228 = load i32*, i32** %16, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %233

230:                                              ; preds = %221
  %231 = load i32*, i32** %16, align 8
  %232 = call i32 @zfs_fuid_info_free(i32* %231)
  br label %233

233:                                              ; preds = %230, %221
  %234 = load i32*, i32** %13, align 8
  %235 = call i32 @dmu_tx_commit(i32* %234)
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %236, i32 0, i32 2
  %238 = call i32 @mutex_exit(i32* %237)
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 1
  %241 = call i32 @mutex_exit(i32* %240)
  %242 = load i32, i32* %14, align 4
  store i32 %242, i32* %5, align 4
  br label %243

243:                                              ; preds = %233, %190, %66, %53, %43, %33
  %244 = load i32, i32* %5, align 4
  ret i32 %244
}

declare dso_local %struct.TYPE_27__* @ZTOZSB(%struct.TYPE_25__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zfs_zaccess(%struct.TYPE_25__*, i32, i32, i64, i32*) #1

declare dso_local i32 @zfs_vsec_2_aclp(%struct.TYPE_27__*, i32, %struct.TYPE_29__*, i32*, i32**, %struct.TYPE_28__**) #1

declare dso_local %struct.TYPE_26__* @ZTOI(%struct.TYPE_25__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32* @dmu_tx_create(i32) #1

declare dso_local i32 @dmu_tx_hold_sa(i32*, i32, i32) #1

declare dso_local i32 @zfs_fuid_txhold(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @zfs_external_acl(%struct.TYPE_25__*) #1

declare dso_local i64 @zfs_znode_acl_version(%struct.TYPE_25__*) #1

declare dso_local i32 @dmu_tx_hold_free(i32*, i32, i32, i32) #1

declare dso_local i32 @dmu_tx_hold_write(i32*, i32, i32, i64) #1

declare dso_local i32 @zfs_sa_upgrade_txholds(i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @dmu_tx_wait(i32*) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @zfs_acl_free(%struct.TYPE_28__*) #1

declare dso_local i32 @zfs_aclset_common(%struct.TYPE_25__*, %struct.TYPE_28__*, i32*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zfs_fuid_sync(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @zfs_log_acl(i32*, i32*, %struct.TYPE_25__*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @zfs_fuid_info_free(i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
