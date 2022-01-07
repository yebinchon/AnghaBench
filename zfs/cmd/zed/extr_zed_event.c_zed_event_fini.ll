; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_event.c_zed_event_fini.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_event.c_zed_event_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zed_conf = type { i32, i32* }

@.str = private unnamed_addr constant [26 x i8] c"Failed zed_event_fini: %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to close \22%s\22: %s\00", align 1
@ZFS_DEV = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zed_event_fini(%struct.zed_conf* %0) #0 {
  %2 = alloca %struct.zed_conf*, align 8
  store %struct.zed_conf* %0, %struct.zed_conf** %2, align 8
  %3 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %4 = icmp ne %struct.zed_conf* %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* @EINVAL, align 4
  %7 = call i32 @strerror(i32 %6)
  %8 = call i32 @zed_log_die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %7)
  br label %9

9:                                                ; preds = %5, %1
  %10 = call i32 (...) @zed_disk_event_fini()
  %11 = call i32 (...) @zfs_agent_fini()
  %12 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %13 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %9
  %17 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %18 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @close(i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i32, i32* @LOG_WARNING, align 4
  %24 = load i32, i32* @ZFS_DEV, align 4
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @strerror(i32 %25)
  %27 = call i32 @zed_log_msg(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %26)
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %30 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %9
  %32 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %33 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %38 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @libzfs_fini(i32* %39)
  %41 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %42 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @zed_log_die(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @zed_disk_event_fini(...) #1

declare dso_local i32 @zfs_agent_fini(...) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @zed_log_msg(i32, i8*, i32, i32) #1

declare dso_local i32 @libzfs_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
