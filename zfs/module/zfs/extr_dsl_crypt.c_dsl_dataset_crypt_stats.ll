; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_dsl_dataset_crypt_stats.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_dsl_dataset_crypt_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ZFS_PROP_KEYSTATUS = common dso_local global i32 0, align 4
@ZFS_PROP_ENCRYPTION = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_GUID = common dso_local global i32 0, align 4
@ZFS_PROP_KEY_GUID = common dso_local global i32 0, align 4
@ZFS_PROP_KEYFORMAT = common dso_local global i32 0, align 4
@ZFS_PROP_PBKDF2_SALT = common dso_local global i32 0, align 4
@ZFS_PROP_PBKDF2_ITERS = common dso_local global i32 0, align 4
@DS_FIELD_IVSET_GUID = common dso_local global i32 0, align 4
@ZFS_PROP_IVSET_GUID = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ZFS_PROP_ENCRYPTION_ROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_dataset_crypt_stats(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %6, align 8
  %14 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  br label %149

23:                                               ; preds = %2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = call i32 @dsl_dataset_get_keystatus(%struct.TYPE_11__* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @ZFS_PROP_KEYSTATUS, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @dsl_prop_nvlist_add_uint64(i32* %26, i32 %27, i32 %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = call i64 @dsl_dir_get_crypt(%struct.TYPE_11__* %30, i32* %5)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @ZFS_PROP_ENCRYPTION, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @dsl_prop_nvlist_add_uint64(i32* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %23
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @DSL_CRYPTO_KEY_GUID, align 4
  %48 = call i64 @zap_lookup(i32 %43, i64 %46, i32 %47, i32 8, i32 1, i32* %5)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %38
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @ZFS_PROP_KEY_GUID, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @dsl_prop_nvlist_add_uint64(i32* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %38
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @ZFS_PROP_KEYFORMAT, align 4
  %65 = call i32 @zfs_prop_to_name(i32 %64)
  %66 = call i64 @zap_lookup(i32 %60, i64 %63, i32 %65, i32 8, i32 1, i32* %5)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %55
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* @ZFS_PROP_KEYFORMAT, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @dsl_prop_nvlist_add_uint64(i32* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %55
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @ZFS_PROP_PBKDF2_SALT, align 4
  %83 = call i32 @zfs_prop_to_name(i32 %82)
  %84 = call i64 @zap_lookup(i32 %78, i64 %81, i32 %83, i32 8, i32 1, i32* %5)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %73
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* @ZFS_PROP_PBKDF2_SALT, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @dsl_prop_nvlist_add_uint64(i32* %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %73
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @ZFS_PROP_PBKDF2_ITERS, align 4
  %101 = call i32 @zfs_prop_to_name(i32 %100)
  %102 = call i64 @zap_lookup(i32 %96, i64 %99, i32 %101, i32 8, i32 1, i32* %5)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %91
  %105 = load i32*, i32** %4, align 8
  %106 = load i32, i32* @ZFS_PROP_PBKDF2_ITERS, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @dsl_prop_nvlist_add_uint64(i32* %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %91
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* @DS_FIELD_IVSET_GUID, align 4
  %119 = call i64 @zap_lookup(i32 %114, i64 %117, i32 %118, i32 8, i32 1, i32* %5)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %109
  %122 = load i32*, i32** %4, align 8
  %123 = load i32, i32* @ZFS_PROP_IVSET_GUID, align 4
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @dsl_prop_nvlist_add_uint64(i32* %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %121, %109
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %128 = call i64 @dsl_dir_get_encryption_root_ddobj(%struct.TYPE_11__* %127, i32* %5)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %148

130:                                              ; preds = %126
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @FTAG, align 4
  %136 = call i64 @dsl_dir_hold_obj(%struct.TYPE_13__* %133, i32 %134, i32* null, i32 %135, %struct.TYPE_11__** %7)
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %130
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %140 = call i32 @dsl_dir_name(%struct.TYPE_11__* %139, i8* %17)
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %142 = load i32, i32* @FTAG, align 4
  %143 = call i32 @dsl_dir_rele(%struct.TYPE_11__* %141, i32 %142)
  %144 = load i32*, i32** %4, align 8
  %145 = load i32, i32* @ZFS_PROP_ENCRYPTION_ROOT, align 4
  %146 = call i32 @dsl_prop_nvlist_add_string(i32* %144, i32 %145, i8* %17)
  br label %147

147:                                              ; preds = %138, %130
  br label %148

148:                                              ; preds = %147, %126
  store i32 0, i32* %10, align 4
  br label %149

149:                                              ; preds = %148, %22
  %150 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %10, align 4
  switch i32 %151, label %153 [
    i32 0, label %152
    i32 1, label %152
  ]

152:                                              ; preds = %149, %149
  ret void

153:                                              ; preds = %149
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dsl_dataset_get_keystatus(%struct.TYPE_11__*) #2

declare dso_local i32 @dsl_prop_nvlist_add_uint64(i32*, i32, i32) #2

declare dso_local i64 @dsl_dir_get_crypt(%struct.TYPE_11__*, i32*) #2

declare dso_local i64 @zap_lookup(i32, i64, i32, i32, i32, i32*) #2

declare dso_local i32 @zfs_prop_to_name(i32) #2

declare dso_local i64 @dsl_dir_get_encryption_root_ddobj(%struct.TYPE_11__*, i32*) #2

declare dso_local i64 @dsl_dir_hold_obj(%struct.TYPE_13__*, i32, i32*, i32, %struct.TYPE_11__**) #2

declare dso_local i32 @dsl_dir_name(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @dsl_dir_rele(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @dsl_prop_nvlist_add_string(i32*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
