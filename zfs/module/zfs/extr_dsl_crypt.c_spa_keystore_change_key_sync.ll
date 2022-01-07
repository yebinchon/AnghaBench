; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_spa_keystore_change_key_sync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_spa_keystore_change_key_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_31__*, i32 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_31__* }
%struct.TYPE_28__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i8*, i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i32 }

@FTAG = common dso_local global i32 0, align 4
@DCP_CMD_NEW_KEY = common dso_local global i64 0, align 8
@DCP_CMD_FORCE_NEW_KEY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@ZFS_PROP_KEYLOCATION = common dso_local global i32 0, align 4
@ZPROP_SRC_LOCAL = common dso_local global i32 0, align 4
@DCP_CMD_INHERIT = common dso_local global i64 0, align 8
@ZPROP_SRC_NONE = common dso_local global i32 0, align 4
@DCP_CMD_FORCE_INHERIT = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @spa_keystore_change_key_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_keystore_change_key_sync(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_27__, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call %struct.TYPE_28__* @dmu_tx_pool(i32* %17)
  store %struct.TYPE_28__* %18, %struct.TYPE_28__** %7, align 8
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  store %struct.TYPE_25__* %21, %struct.TYPE_25__** %8, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %23, %struct.TYPE_26__** %9, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  store %struct.TYPE_30__* %26, %struct.TYPE_30__** %10, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %11, align 8
  %27 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %14, align 8
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @FTAG, align 4
  %35 = call i32 @dsl_dataset_hold(%struct.TYPE_28__* %30, i32 %33, i32 %34, %struct.TYPE_29__** %5)
  %36 = call i32 @VERIFY0(i32 %35)
  %37 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  %44 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DCP_CMD_NEW_KEY, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %2
  %50 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DCP_CMD_FORCE_NEW_KEY, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %98

55:                                               ; preds = %49, %2
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DCP_CMD_NEW_KEY, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %63, align 8
  store %struct.TYPE_27__* %64, %struct.TYPE_27__** %11, align 8
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_31__*, %struct.TYPE_31__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %73

72:                                               ; preds = %55
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %73

73:                                               ; preds = %72, %61
  %74 = load i8*, i8** %14, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %78 = load i32, i32* @ZFS_PROP_KEYLOCATION, align 4
  %79 = call i32 @zfs_prop_to_name(i32 %78)
  %80 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  %81 = load i8*, i8** %14, align 8
  %82 = call i64 @strlen(i8* %81)
  %83 = add nsw i64 %82, 1
  %84 = load i8*, i8** %14, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @dsl_prop_set_sync_impl(%struct.TYPE_29__* %77, i32 %79, i32 %80, i32 1, i64 %83, i8* %84, i32* %85)
  br label %87

87:                                               ; preds = %76, %73
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_31__*, %struct.TYPE_31__** %89, align 8
  %91 = call i32 @dsl_dir_get_encryption_root_ddobj(%struct.TYPE_31__* %90, i32* %15)
  %92 = call i32 @VERIFY0(i32 %91)
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %16, align 4
  br label %133

98:                                               ; preds = %49
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @DCP_CMD_INHERIT, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %98
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_31__*, %struct.TYPE_31__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_31__*, %struct.TYPE_31__** %109, align 8
  %111 = load i32, i32* @FTAG, align 4
  %112 = call i32 @spa_keystore_wkey_hold_dd(%struct.TYPE_25__* %105, %struct.TYPE_31__* %110, i32 %111, %struct.TYPE_27__** %11)
  %113 = call i32 @VERIFY0(i32 %112)
  br label %114

114:                                              ; preds = %104, %98
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %116 = load i32, i32* @ZFS_PROP_KEYLOCATION, align 4
  %117 = call i32 @zfs_prop_to_name(i32 %116)
  %118 = load i32, i32* @ZPROP_SRC_NONE, align 4
  %119 = load i32*, i32** %4, align 8
  %120 = call i32 @dsl_prop_set_sync_impl(%struct.TYPE_29__* %115, i32 %117, i32 %118, i32 0, i64 0, i8* null, i32* %119)
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_31__*, %struct.TYPE_31__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %15, align 4
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_31__*, %struct.TYPE_31__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_31__*, %struct.TYPE_31__** %129, align 8
  %131 = call i32 @dsl_dir_get_encryption_root_ddobj(%struct.TYPE_31__* %130, i32* %16)
  %132 = call i32 @VERIFY0(i32 %131)
  br label %133

133:                                              ; preds = %114, %87
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %135 = icmp eq %struct.TYPE_27__* %134, null
  br i1 %135, label %136, label %152

136:                                              ; preds = %133
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @DCP_CMD_FORCE_INHERIT, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %148, label %142

142:                                              ; preds = %136
  %143 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @DCP_CMD_FORCE_NEW_KEY, align 8
  %147 = icmp eq i64 %145, %146
  br label %148

148:                                              ; preds = %142, %136
  %149 = phi i1 [ true, %136 ], [ %147, %142 ]
  %150 = zext i1 %149 to i32
  %151 = call i32 @ASSERT(i32 %150)
  br label %152

152:                                              ; preds = %148, %133
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 0
  %156 = load i32, i32* @RW_WRITER, align 4
  %157 = call i32 @rw_enter(i32* %155, i32 %156)
  %158 = load i32, i32* %15, align 4
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_31__*, %struct.TYPE_31__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %16, align 4
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %166 = load i32, i32* @B_FALSE, align 4
  %167 = load i32*, i32** %4, align 8
  %168 = call i32 @spa_keystore_change_key_sync_impl(i32 %158, i32 %163, i32 %164, %struct.TYPE_27__* %165, i32 %166, i32* %167)
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_31__*, %struct.TYPE_31__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 1
  store i32 %173, i32* %174, align 4
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 1
  %178 = call %struct.TYPE_27__* @avl_find(i32* %177, %struct.TYPE_27__* %13, i32* null)
  store %struct.TYPE_27__* %178, %struct.TYPE_27__** %12, align 8
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %180 = icmp ne %struct.TYPE_27__* %179, null
  br i1 %180, label %181, label %193

181:                                              ; preds = %152
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %182, i32 0, i32 0
  %184 = call i32 @zfs_refcount_count(i32* %183)
  %185 = call i32 @ASSERT0(i32 %184)
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %190 = call i32 @avl_remove(i32* %188, %struct.TYPE_27__* %189)
  %191 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %192 = call i32 @dsl_wrapping_key_free(%struct.TYPE_27__* %191)
  br label %193

193:                                              ; preds = %181, %152
  %194 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @DCP_CMD_NEW_KEY, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %211

199:                                              ; preds = %193
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %204 = call %struct.TYPE_27__* @avl_find(i32* %202, %struct.TYPE_27__* %203, i32* %6)
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %209 = load i32, i32* %6, align 4
  %210 = call i32 @avl_insert(i32* %207, %struct.TYPE_27__* %208, i32 %209)
  br label %219

211:                                              ; preds = %193
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %213 = icmp ne %struct.TYPE_27__* %212, null
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %216 = load i32, i32* @FTAG, align 4
  %217 = call i32 @dsl_wrapping_key_rele(%struct.TYPE_27__* %215, i32 %216)
  br label %218

218:                                              ; preds = %214, %211
  br label %219

219:                                              ; preds = %218, %199
  %220 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %221, i32 0, i32 0
  %223 = call i32 @rw_exit(i32* %222)
  %224 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %225 = load i32, i32* @FTAG, align 4
  %226 = call i32 @dsl_dataset_rele(%struct.TYPE_29__* %224, i32 %225)
  ret void
}

declare dso_local %struct.TYPE_28__* @dmu_tx_pool(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dataset_hold(%struct.TYPE_28__*, i32, i32, %struct.TYPE_29__**) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_prop_set_sync_impl(%struct.TYPE_29__*, i32, i32, i32, i64, i8*, i32*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @dsl_dir_get_encryption_root_ddobj(%struct.TYPE_31__*, i32*) #1

declare dso_local i32 @spa_keystore_wkey_hold_dd(%struct.TYPE_25__*, %struct.TYPE_31__*, i32, %struct.TYPE_27__**) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @spa_keystore_change_key_sync_impl(i32, i32, i32, %struct.TYPE_27__*, i32, i32*) #1

declare dso_local %struct.TYPE_27__* @avl_find(i32*, %struct.TYPE_27__*, i32*) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @zfs_refcount_count(i32*) #1

declare dso_local i32 @avl_remove(i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @dsl_wrapping_key_free(%struct.TYPE_27__*) #1

declare dso_local i32 @avl_insert(i32*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @dsl_wrapping_key_rele(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_29__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
