; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_mount.c_mount_enumerate.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_mount.c_mount_enumerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [53 x i8] c"Failed to enable watching of kernel mount events: %m\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Failed to enable watching of userspace mount events: %m\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to acquire watch file descriptor: %m\00", align 1
@EPOLLIN = common dso_local global i32 0, align 4
@mount_dispatch_io = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Failed to watch mount file descriptor: %m\00", align 1
@SD_EVENT_PRIORITY_NORMAL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"Failed to adjust mount watch priority: %m\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"mount-monitor-dispatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @mount_enumerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mount_enumerate(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = call i32 @assert(%struct.TYPE_7__* %5)
  %7 = call i32 @mnt_init_debug(i32 0)
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %85, label %12

12:                                               ; preds = %1
  %13 = call i64 (...) @mnt_new_monitor()
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  store i64 %13, i64* %15, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  %21 = call i32 (...) @log_oom()
  br label %92

22:                                               ; preds = %12
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @mnt_monitor_enable_kernel(i64 %25, i32 1)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @log_error_errno(i32 %30, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %92

32:                                               ; preds = %22
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @mnt_monitor_enable_userspace(i64 %35, i32 1, i32* null)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @log_error_errno(i32 %40, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %92

42:                                               ; preds = %32
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @mnt_monitor_get_fd(i64 %45)
  store i32 %46, i32* %3, align 4
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @log_error_errno(i32 %50, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %92

52:                                               ; preds = %42
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @EPOLLIN, align 4
  %60 = load i32, i32* @mount_dispatch_io, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %62 = call i32 @sd_event_add_io(i32 %55, i32* %57, i32 %58, i32 %59, i32 %60, %struct.TYPE_7__* %61)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %52
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @log_error_errno(i32 %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %92

68:                                               ; preds = %52
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i64, i64* @SD_EVENT_PRIORITY_NORMAL, align 8
  %73 = sub nsw i64 %72, 10
  %74 = call i32 @sd_event_source_set_priority(i32 %71, i64 %73)
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @log_error_errno(i32 %78, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %92

80:                                               ; preds = %68
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @sd_event_source_set_description(i32 %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %85

85:                                               ; preds = %80, %1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %87 = call i32 @mount_load_proc_self_mountinfo(%struct.TYPE_7__* %86, i32 0)
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %3, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %92

91:                                               ; preds = %85
  br label %95

92:                                               ; preds = %90, %77, %65, %49, %39, %29, %20
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %94 = call i32 @mount_shutdown(%struct.TYPE_7__* %93)
  br label %95

95:                                               ; preds = %92, %91
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32 @mnt_init_debug(i32) #1

declare dso_local i64 @mnt_new_monitor(...) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i32 @mnt_monitor_enable_kernel(i64, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @mnt_monitor_enable_userspace(i64, i32, i32*) #1

declare dso_local i32 @mnt_monitor_get_fd(i64) #1

declare dso_local i32 @sd_event_add_io(i32, i32*, i32, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @sd_event_source_set_priority(i32, i64) #1

declare dso_local i32 @sd_event_source_set_description(i32, i8*) #1

declare dso_local i32 @mount_load_proc_self_mountinfo(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @mount_shutdown(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
