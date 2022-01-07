; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_dsl_crypto_recv_raw_key_sync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_dsl_crypto_recv_raw_key_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8**, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32* }

@ZIO_CRYPT_KEY_CURRENT_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@DSL_CRYPTO_KEY_CRYPTO_SUITE = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_GUID = common dso_local global i32 0, align 4
@ZFS_PROP_KEYFORMAT = common dso_local global i32 0, align 4
@ZFS_PROP_PBKDF2_ITERS = common dso_local global i32 0, align 4
@ZFS_PROP_PBKDF2_SALT = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_MASTER_KEY = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_HMAC_KEY = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_IV = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_MAC = common dso_local global i32 0, align 4
@DMU_OTN_ZAP_METADATA = common dso_local global i32 0, align 4
@DMU_OT_NONE = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_REFCOUNT = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_VERSION = common dso_local global i32 0, align 4
@SPA_FEATURE_ENCRYPTION = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i64 0, align 8
@DD_FIELD_CRYPTO_KEY_OBJ = common dso_local global i32 0, align 4
@ZFS_PROP_KEYLOCATION = common dso_local global i32 0, align 4
@ZPROP_SRC_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_crypto_recv_raw_key_sync(%struct.TYPE_20__* %0, i32* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %6, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %7, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %8, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %9, align 8
  store i32 1, i32* %12, align 4
  %33 = load i32, i32* @ZIO_CRYPT_KEY_CURRENT_VERSION, align 4
  store i32 %33, i32* %22, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @DSL_CRYPTO_KEY_CRYPTO_SUITE, align 4
  %36 = call i32 @fnvlist_lookup_uint64(i32* %34, i32 %35)
  store i32 %36, i32* %17, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @DSL_CRYPTO_KEY_GUID, align 4
  %39 = call i32 @fnvlist_lookup_uint64(i32* %37, i32 %38)
  store i32 %39, i32* %18, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @ZFS_PROP_KEYFORMAT, align 4
  %42 = call i32 @zfs_prop_to_name(i32 %41)
  %43 = call i32 @fnvlist_lookup_uint64(i32* %40, i32 %42)
  store i32 %43, i32* %19, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @ZFS_PROP_PBKDF2_ITERS, align 4
  %46 = call i32 @zfs_prop_to_name(i32 %45)
  %47 = call i32 @fnvlist_lookup_uint64(i32* %44, i32 %46)
  store i32 %47, i32* %20, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @ZFS_PROP_PBKDF2_SALT, align 4
  %50 = call i32 @zfs_prop_to_name(i32 %49)
  %51 = call i32 @fnvlist_lookup_uint64(i32* %48, i32 %50)
  store i32 %51, i32* %21, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @DSL_CRYPTO_KEY_MASTER_KEY, align 4
  %54 = call i32 @nvlist_lookup_uint8_array(i32* %52, i32 %53, i32** %13, i32* %10)
  %55 = call i32 @VERIFY0(i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* @DSL_CRYPTO_KEY_HMAC_KEY, align 4
  %58 = call i32 @nvlist_lookup_uint8_array(i32* %56, i32 %57, i32** %14, i32* %10)
  %59 = call i32 @VERIFY0(i32 %58)
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* @DSL_CRYPTO_KEY_IV, align 4
  %62 = call i32 @nvlist_lookup_uint8_array(i32* %60, i32 %61, i32** %15, i32* %10)
  %63 = call i32 @VERIFY0(i32 %62)
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* @DSL_CRYPTO_KEY_MAC, align 4
  %66 = call i32 @nvlist_lookup_uint8_array(i32* %64, i32 %65, i32** %16, i32* %10)
  %67 = call i32 @VERIFY0(i32 %66)
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %150

72:                                               ; preds = %3
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %77 = call i32 @dmu_buf_will_dirty(i32 %75, %struct.TYPE_21__* %76)
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %80 = call i32 @dsl_dir_zapify(%struct.TYPE_19__* %78, %struct.TYPE_21__* %79)
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* @DMU_OTN_ZAP_METADATA, align 4
  %83 = load i32, i32* @DMU_OT_NONE, align 4
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %85 = call i64 @zap_create(i32* %81, i32 %82, i32 %83, i32 0, %struct.TYPE_21__* %84)
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @DSL_CRYPTO_KEY_REFCOUNT, align 4
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %98 = call i32 @zap_update(i32* %92, i64 %95, i32 %96, i32 4, i32 1, i32* %12, %struct.TYPE_21__* %97)
  %99 = call i32 @VERIFY0(i32 %98)
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @DSL_CRYPTO_KEY_VERSION, align 4
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %110 = call i32 @zap_update(i32* %104, i64 %107, i32 %108, i32 4, i32 1, i32* %22, %struct.TYPE_21__* %109)
  %111 = call i32 @VERIFY0(i32 %110)
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i64, i64* @SPA_FEATURE_ENCRYPTION, align 8
  %116 = load i64, i64* @B_TRUE, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %119 = call i32 @dsl_dataset_activate_feature(i32 %114, i64 %115, i8* %117, %struct.TYPE_21__* %118)
  %120 = load i64, i64* @B_TRUE, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = load i8**, i8*** %123, align 8
  %125 = load i64, i64* @SPA_FEATURE_ENCRYPTION, align 8
  %126 = getelementptr inbounds i8*, i8** %124, i64 %125
  store i8* %121, i8** %126, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @DD_FIELD_CRYPTO_KEY_OBJ, align 4
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %135 = call i32 @zap_add(i32* %127, i32 %130, i32 %131, i32 4, i32 1, i64* %133, %struct.TYPE_21__* %134)
  %136 = call i32 @VERIFY0(i32 %135)
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %138 = load i32, i32* @ZFS_PROP_KEYLOCATION, align 4
  %139 = call i32 @zfs_prop_to_name(i32 %138)
  %140 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  %141 = load i8*, i8** %23, align 8
  %142 = call i64 @strlen(i8* %141)
  %143 = add nsw i64 %142, 1
  %144 = load i8*, i8** %23, align 8
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %146 = call i32 @dsl_prop_set_sync_impl(%struct.TYPE_20__* %137, i32 %139, i32 %140, i32 1, i64 %143, i8* %144, %struct.TYPE_21__* %145)
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  store i32 %149, i32* %11, align 4
  br label %154

150:                                              ; preds = %3
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %152 = call i32 @dsl_dir_get_encryption_root_ddobj(%struct.TYPE_19__* %151, i32* %11)
  %153 = call i32 @VERIFY0(i32 %152)
  br label %154

154:                                              ; preds = %150, %72
  %155 = load i32*, i32** %8, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* %17, align 4
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %18, align 4
  %162 = load i32*, i32** %15, align 8
  %163 = load i32*, i32** %16, align 8
  %164 = load i32*, i32** %13, align 8
  %165 = load i32*, i32** %14, align 8
  %166 = load i32, i32* %19, align 4
  %167 = load i32, i32* %21, align 4
  %168 = load i32, i32* %20, align 4
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %170 = call i32 @dsl_crypto_key_sync_impl(i32* %155, i64 %158, i32 %159, i32 %160, i32 %161, i32* %162, i32* %163, i32* %164, i32* %165, i32 %166, i32 %167, i32 %168, %struct.TYPE_21__* %169)
  ret void
}

declare dso_local i32 @fnvlist_lookup_uint64(i32*, i32) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @nvlist_lookup_uint8_array(i32*, i32, i32**, i32*) #1

declare dso_local i32 @dmu_buf_will_dirty(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @dsl_dir_zapify(%struct.TYPE_19__*, %struct.TYPE_21__*) #1

declare dso_local i64 @zap_create(i32*, i32, i32, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @zap_update(i32*, i64, i32, i32, i32, i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @dsl_dataset_activate_feature(i32, i64, i8*, %struct.TYPE_21__*) #1

declare dso_local i32 @zap_add(i32*, i32, i32, i32, i32, i64*, %struct.TYPE_21__*) #1

declare dso_local i32 @dsl_prop_set_sync_impl(%struct.TYPE_20__*, i32, i32, i32, i64, i8*, %struct.TYPE_21__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @dsl_dir_get_encryption_root_ddobj(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @dsl_crypto_key_sync_impl(i32*, i64, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
