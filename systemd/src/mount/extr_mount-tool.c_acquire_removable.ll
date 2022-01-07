; ModuleID = '/home/carl/AnghaBench/systemd/src/mount/extr_mount-tool.c_acquire_removable.c'
source_filename = "/home/carl/AnghaBench/systemd/src/mount/extr_mount-tool.c_acquire_removable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_action = common dso_local global i64 0, align 8
@ACTION_DEFAULT = common dso_local global i64 0, align 8
@arg_timeout_idle_set = common dso_local global i64 0, align 8
@arg_bind_device = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"removable\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Discovered removable device.\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Automatically turning on automount.\00", align 1
@ACTION_AUTOMOUNT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"Setting idle timeout to 1s.\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@arg_timeout_idle = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Binding automount unit to device.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @acquire_removable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acquire_removable(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i64, i64* @arg_action, align 8
  %6 = load i64, i64* @ACTION_DEFAULT, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i64, i64* @arg_timeout_idle_set, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* @arg_bind_device, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %61

15:                                               ; preds = %11, %8, %1
  br label %16

16:                                               ; preds = %35, %15
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @sd_device_get_sysattr_value(i32* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %4)
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %36

21:                                               ; preds = %16
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @sd_device_get_parent(i32* %22, i32** %3)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %61

26:                                               ; preds = %21
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @sd_device_get_subsystem(i32* %27, i8** %4)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @streq(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30, %26
  store i32 0, i32* %2, align 4
  br label %61

35:                                               ; preds = %30
  br label %16

36:                                               ; preds = %20
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 @parse_boolean(i8* %37)
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %61

41:                                               ; preds = %36
  %42 = call i32 @log_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i64, i64* @arg_action, align 8
  %44 = load i64, i64* @ACTION_DEFAULT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = call i32 @log_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i64, i64* @ACTION_AUTOMOUNT, align 8
  store i64 %48, i64* @arg_action, align 8
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i64, i64* @arg_timeout_idle_set, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = call i32 @log_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32, i32* @USEC_PER_SEC, align 4
  store i32 %54, i32* @arg_timeout_idle, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* @arg_bind_device, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 @log_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* @arg_bind_device, align 4
  br label %60

60:                                               ; preds = %58, %55
  store i32 1, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %40, %34, %25, %14
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @sd_device_get_sysattr_value(i32*, i8*, i8**) #1

declare dso_local i64 @sd_device_get_parent(i32*, i32**) #1

declare dso_local i64 @sd_device_get_subsystem(i32*, i8**) #1

declare dso_local i32 @streq(i8*, i8*) #1

declare dso_local i64 @parse_boolean(i8*) #1

declare dso_local i32 @log_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
