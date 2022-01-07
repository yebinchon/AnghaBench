; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_mount.c_zfs_unmount.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_mount.c_zfs_unmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32* }
%struct.mnttab = type { i8* }

@B_FALSE = common dso_local global i64 0, align 8
@ZFS_TYPE_FILESYSTEM = common dso_local global i64 0, align 8
@share_all_proto = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@MS_CRYPT = common dso_local global i32 0, align 4
@ZFS_PROP_ENCRYPTION = common dso_local global i32 0, align 4
@ZIO_CRYPT_OFF = common dso_local global i64 0, align 8
@ZFS_PROP_KEYSTATUS = common dso_local global i32 0, align 4
@ZFS_KEYSTATUS_AVAILABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_unmount(%struct.TYPE_11__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mnttab, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  store i8* null, i8** %10, align 8
  %16 = load i64, i64* @B_FALSE, align 8
  store i64 %16, i64* %12, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = call i64 @zfs_get_type(%struct.TYPE_11__* %20)
  %22 = load i64, i64* @ZFS_TYPE_FILESYSTEM, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %19
  %25 = load i32*, i32** %8, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @libzfs_mnttab_find(i32* %25, i32 %28, %struct.mnttab* %9)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %24, %3
  %32 = load i8*, i8** %6, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %9, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @zfs_strdup(i32* %35, i8* %37)
  store i8* %38, i8** %10, align 8
  br label %43

39:                                               ; preds = %31
  %40 = load i32*, i32** %8, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i8* @zfs_strdup(i32* %40, i8* %41)
  store i8* %42, i8** %10, align 8
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* @share_all_proto, align 4
  %47 = call i64 @zfs_unshare_proto(%struct.TYPE_11__* %44, i8* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @free(i8* %50)
  store i32 -1, i32* %4, align 4
  br label %113

52:                                               ; preds = %43
  %53 = load i32*, i32** %8, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @unmount_one(i32* %53, i8* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %62 = call i32 @zfs_shareall(%struct.TYPE_11__* %61)
  store i32 -1, i32* %4, align 4
  br label %113

63:                                               ; preds = %52
  %64 = load i32*, i32** %8, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @libzfs_mnttab_remove(i32* %64, i32 %67)
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @free(i8* %69)
  %71 = load i64, i64* @B_TRUE, align 8
  store i64 %71, i64* %12, align 8
  br label %72

72:                                               ; preds = %63, %24, %19
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @MS_CRYPT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %112

77:                                               ; preds = %72
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %79 = load i32, i32* @ZFS_PROP_ENCRYPTION, align 4
  %80 = call i64 @zfs_prop_get_int(%struct.TYPE_11__* %78, i32 %79)
  %81 = load i64, i64* @ZIO_CRYPT_OFF, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %112

83:                                               ; preds = %77
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %85 = call i32 @zfs_refresh_properties(%struct.TYPE_11__* %84)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = call i64 @zfs_crypto_get_encryption_root(%struct.TYPE_11__* %86, i64* %11, i32* null)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load i64, i64* %12, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %94 = call i32 @zfs_mount(%struct.TYPE_11__* %93, i32* null, i32 0)
  store i32 -1, i32* %4, align 4
  br label %113

95:                                               ; preds = %89, %83
  %96 = load i64, i64* %11, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %95
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %100 = load i32, i32* @ZFS_PROP_KEYSTATUS, align 4
  %101 = call i64 @zfs_prop_get_int(%struct.TYPE_11__* %99, i32 %100)
  %102 = load i64, i64* @ZFS_KEYSTATUS_AVAILABLE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %106 = call i64 @zfs_crypto_unload_key(%struct.TYPE_11__* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = call i32 @zfs_mount(%struct.TYPE_11__* %109, i32* null, i32 0)
  store i32 -1, i32* %4, align 4
  br label %113

111:                                              ; preds = %104, %98, %95
  br label %112

112:                                              ; preds = %111, %77, %72
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %108, %92, %58, %49
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i64 @zfs_get_type(%struct.TYPE_11__*) #1

declare dso_local i64 @libzfs_mnttab_find(i32*, i32, %struct.mnttab*) #1

declare dso_local i8* @zfs_strdup(i32*, i8*) #1

declare dso_local i64 @zfs_unshare_proto(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @unmount_one(i32*, i8*, i32) #1

declare dso_local i32 @zfs_shareall(%struct.TYPE_11__*) #1

declare dso_local i32 @libzfs_mnttab_remove(i32*, i32) #1

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @zfs_refresh_properties(%struct.TYPE_11__*) #1

declare dso_local i64 @zfs_crypto_get_encryption_root(%struct.TYPE_11__*, i64*, i32*) #1

declare dso_local i32 @zfs_mount(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i64 @zfs_crypto_unload_key(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
