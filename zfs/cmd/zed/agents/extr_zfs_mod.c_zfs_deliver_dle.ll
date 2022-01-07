; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_mod.c_zfs_deliver_dle.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_mod.c_zfs_deliver_dle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@ZFS_EV_VDEV_GUID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@DEV_PHYS_PATH = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"zfs_deliver_dle: no guid or physpath\00", align 1
@g_zfshdl = common dso_local global i32 0, align 4
@zfsdle_vdev_online = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"zfs_deliver_dle: device '%s' not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @zfs_deliver_dle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_deliver_dle(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32, i32* @MAXPATHLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @ZFS_EV_VDEV_GUID, align 4
  %15 = call i64 @nvlist_lookup_uint64(i32* %13, i32 %14, i64* %7)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i64, i64* %7, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %36

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @DEV_PHYS_PATH, align 4
  %24 = call i64 @nvlist_lookup_string(i32* %22, i32 %23, i8** %4)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* @MAXPATHLEN, align 4
  %29 = call i32 @strlcpy(i8* %12, i8* %27, i32 %28)
  %30 = load i32, i32* @MAXPATHLEN, align 4
  %31 = call i32 @zfs_append_partition(i8* %12, i32 %30)
  br label %35

32:                                               ; preds = %21
  %33 = load i32, i32* @LOG_INFO, align 4
  %34 = call i32 (i32, i8*, ...) @zed_log_msg(i32 %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %26
  br label %36

36:                                               ; preds = %35, %17
  %37 = load i32, i32* @g_zfshdl, align 4
  %38 = load i32, i32* @zfsdle_vdev_online, align 4
  %39 = call i32 @zpool_iter(i32 %37, i32 %38, i8* %12)
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @LOG_INFO, align 4
  %43 = call i32 (i32, i8*, ...) @zed_log_msg(i32 %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %45

44:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %45

45:                                               ; preds = %44, %41
  %46 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @zfs_append_partition(i8*, i32) #2

declare dso_local i32 @zed_log_msg(i32, i8*, ...) #2

declare dso_local i32 @zpool_iter(i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
