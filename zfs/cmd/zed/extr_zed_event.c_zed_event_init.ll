; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_event.c_zed_event_init.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_event.c_zed_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zed_conf = type { i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Failed zed_event_init: %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to initialize libzfs\00", align 1
@ZFS_DEV = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to open \22%s\22: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to initialize disk events\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zed_event_init(%struct.zed_conf* %0) #0 {
  %2 = alloca %struct.zed_conf*, align 8
  store %struct.zed_conf* %0, %struct.zed_conf** %2, align 8
  %3 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %4 = icmp ne %struct.zed_conf* %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* @EINVAL, align 4
  %7 = call i32 @strerror(i32 %6)
  %8 = call i32 (i8*, ...) @zed_log_die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %7)
  br label %9

9:                                                ; preds = %5, %1
  %10 = call i32 (...) @libzfs_init()
  %11 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %12 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %14 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %9
  %18 = call i32 (i8*, ...) @zed_log_die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %9
  %20 = load i32, i32* @ZFS_DEV, align 4
  %21 = load i32, i32* @O_RDWR, align 4
  %22 = call i64 @open(i32 %20, i32 %21)
  %23 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %24 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %26 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load i32, i32* @ZFS_DEV, align 4
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @strerror(i32 %31)
  %33 = call i32 (i8*, ...) @zed_log_die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %29, %19
  %35 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %36 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @zfs_agent_init(i32 %37)
  %39 = call i64 (...) @zed_disk_event_init()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 (i8*, ...) @zed_log_die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %34
  ret void
}

declare dso_local i32 @zed_log_die(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @libzfs_init(...) #1

declare dso_local i64 @open(i32, i32) #1

declare dso_local i32 @zfs_agent_init(i32) #1

declare dso_local i64 @zed_disk_event_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
