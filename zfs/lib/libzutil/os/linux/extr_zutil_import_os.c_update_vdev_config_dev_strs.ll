; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzutil/os/linux/extr_zutil_import_os.c_update_vdev_config_dev_strs.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzutil/os/linux/extr_zutil_import_os.c_update_vdev_config_dev_strs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@.str = private unnamed_addr constant [23 x i8] c"ZFS_VDEV_DEVID_OPT_OUT\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@ZPOOL_CONFIG_DEVID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_PHYS_PATH = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@VDEV_TYPE_DISK = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_WHOLE_DISK = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_ENC_SYSFS_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_vdev_config_dev_strs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %7, align 8
  %10 = call i8* @getenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strtoul(i8* %14, i32* null, i32 0)
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strncasecmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @strncasecmp(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21, %17, %13
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @ZPOOL_CONFIG_DEVID, align 4
  %28 = call i32 @nvlist_remove_all(i32* %26, i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @ZPOOL_CONFIG_PHYS_PATH, align 4
  %31 = call i32 @nvlist_remove_all(i32* %29, i32 %30)
  br label %107

32:                                               ; preds = %21, %1
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %35 = call i64 @nvlist_lookup_string(i32* %33, i32 %34, i8** %5)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* @VDEV_TYPE_DISK, align 4
  %40 = call i64 @strcmp(i8* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %32
  br label %107

43:                                               ; preds = %37
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %46 = call i64 @nvlist_lookup_string(i32* %44, i32 %45, i8** %6)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %107

49:                                               ; preds = %43
  %50 = load i32*, i32** %2, align 8
  %51 = load i32, i32* @ZPOOL_CONFIG_WHOLE_DISK, align 4
  %52 = call i32 @nvlist_lookup_uint64(i32* %50, i32 %51, i64* %7)
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i64 @encode_device_strings(i8* %53, %struct.TYPE_3__* %3, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %97

58:                                               ; preds = %49
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* @ZPOOL_CONFIG_DEVID, align 4
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @nvlist_add_string(i32* %59, i32 %60, i8* %62)
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %58
  %71 = load i32*, i32** %2, align 8
  %72 = load i32, i32* @ZPOOL_CONFIG_PHYS_PATH, align 4
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @nvlist_add_string(i32* %71, i32 %72, i8* %74)
  br label %76

76:                                               ; preds = %70, %58
  %77 = load i8*, i8** %6, align 8
  %78 = call i8* @zfs_get_underlying_path(i8* %77)
  store i8* %78, i8** %8, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = call i8* @zfs_get_enclosure_sysfs_path(i8* %79)
  store i8* %80, i8** %9, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i32*, i32** %2, align 8
  %85 = load i32, i32* @ZPOOL_CONFIG_VDEV_ENC_SYSFS_PATH, align 4
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @nvlist_add_string(i32* %84, i32 %85, i8* %86)
  br label %92

88:                                               ; preds = %76
  %89 = load i32*, i32** %2, align 8
  %90 = load i32, i32* @ZPOOL_CONFIG_VDEV_ENC_SYSFS_PATH, align 4
  %91 = call i32 @nvlist_remove_all(i32* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %83
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @free(i8* %93)
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 @free(i8* %95)
  br label %107

97:                                               ; preds = %49
  %98 = load i32*, i32** %2, align 8
  %99 = load i32, i32* @ZPOOL_CONFIG_DEVID, align 4
  %100 = call i32 @nvlist_remove_all(i32* %98, i32 %99)
  %101 = load i32*, i32** %2, align 8
  %102 = load i32, i32* @ZPOOL_CONFIG_PHYS_PATH, align 4
  %103 = call i32 @nvlist_remove_all(i32* %101, i32 %102)
  %104 = load i32*, i32** %2, align 8
  %105 = load i32, i32* @ZPOOL_CONFIG_VDEV_ENC_SYSFS_PATH, align 4
  %106 = call i32 @nvlist_remove_all(i32* %104, i32 %105)
  br label %107

107:                                              ; preds = %25, %42, %48, %97, %92
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @nvlist_remove_all(i32*, i32) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i64 @encode_device_strings(i8*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i8* @zfs_get_underlying_path(i8*) #1

declare dso_local i8* @zfs_get_enclosure_sysfs_path(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
