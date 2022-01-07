; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_mod.c_zfsdle_vdev_online.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_mod.c_zfsdle_vdev_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"zfsdle_vdev_online: searching for '%s' in '%s'\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_WHOLE_DISK = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZPOOL_PROP_AUTOEXPAND = common dso_local global i32 0, align 4
@POOL_STATE_UNAVAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [73 x i8] c"zfsdle_vdev_online: setting device '%s' to ONLINE state in pool '%s': %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @zfsdle_vdev_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfsdle_vdev_online(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %6, align 8
  %19 = load i32, i32* @LOG_INFO, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @zpool_get_name(i32* %21)
  %23 = call i32 (i32, i8*, i8*, i32, ...) @zed_log_msg(i32 %19, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32* @zpool_find_vdev_by_physpath(i32* %24, i8* %25, i32* %7, i32* %8, i32* null)
  store i32* %26, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %106

28:                                               ; preds = %2
  %29 = load i32, i32* @MAXPATHLEN, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %12, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %13, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %35 = call i32 @nvlist_lookup_string(i32* %33, i32 %34, i8** %11)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @zpool_close(i32* %39)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %104

41:                                               ; preds = %28
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* @ZPOOL_CONFIG_WHOLE_DISK, align 4
  %44 = call i32 @nvlist_lookup_uint64(i32* %42, i32 %43, i64* %14)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i64 0, i64* %14, align 8
  br label %48

48:                                               ; preds = %47, %41
  %49 = load i64, i64* %14, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %48
  %52 = load i8*, i8** %11, align 8
  %53 = call i8* @strrchr(i8* %52, i8 signext 47)
  store i8* %53, i8** %11, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load i8*, i8** %11, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = call i8* @zfs_strip_partition(i8* %58)
  store i8* %59, i8** %11, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @zpool_close(i32* %63)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %104

65:                                               ; preds = %56
  br label %69

66:                                               ; preds = %51
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @zpool_close(i32* %67)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %104

69:                                               ; preds = %65
  %70 = load i8*, i8** %11, align 8
  %71 = trunc i64 %30 to i32
  %72 = call i32 @strlcpy(i8* %32, i8* %70, i32 %71)
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i32, i32* @B_FALSE, align 4
  store i32 %75, i32* %16, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @zpool_reopen_one(i32* %76, i32* %16)
  br label %82

78:                                               ; preds = %48
  %79 = load i8*, i8** %11, align 8
  %80 = trunc i64 %30 to i32
  %81 = call i32 @strlcpy(i8* %32, i8* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %69
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* @ZPOOL_PROP_AUTOEXPAND, align 4
  %85 = call i64 @zpool_get_prop_int(i32* %83, i32 %84, i32* null)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %82
  %88 = load i32*, i32** %4, align 8
  %89 = call i64 @zpool_get_state(i32* %88)
  %90 = load i64, i64* @POOL_STATE_UNAVAIL, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @zpool_vdev_online(i32* %93, i8* %32, i32 0, i32* %17)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* @LOG_INFO, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @zpool_get_name(i32* %96)
  %98 = load i32, i32* %10, align 4
  %99 = call i32 (i32, i8*, i8*, i32, ...) @zed_log_msg(i32 %95, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %92, %87
  br label %101

101:                                              ; preds = %100, %82
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @zpool_close(i32* %102)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %104

104:                                              ; preds = %101, %66, %62, %38
  %105 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %105)
  br label %109

106:                                              ; preds = %2
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @zpool_close(i32* %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %106, %104
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @zed_log_msg(i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @zpool_get_name(i32*) #1

declare dso_local i32* @zpool_find_vdev_by_physpath(i32*, i8*, i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i32 @zpool_close(i32*) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @zfs_strip_partition(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @zpool_reopen_one(i32*, i32*) #1

declare dso_local i64 @zpool_get_prop_int(i32*, i32, i32*) #1

declare dso_local i64 @zpool_get_state(i32*) #1

declare dso_local i32 @zpool_vdev_online(i32*, i8*, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
