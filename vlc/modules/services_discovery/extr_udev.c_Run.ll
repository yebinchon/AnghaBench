; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_udev.c_Run.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_udev.c_Run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.udev_monitor* }
%struct.udev_monitor = type { i32 }
%struct.pollfd = type { i32, i32 }
%struct.udev_device = type { i32 }

@POLLIN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"change\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @Run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.udev_monitor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pollfd, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.udev_device*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %3, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %4, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.udev_monitor*, %struct.udev_monitor** %17, align 8
  store %struct.udev_monitor* %18, %struct.udev_monitor** %5, align 8
  %19 = load %struct.udev_monitor*, %struct.udev_monitor** %5, align 8
  %20 = call i32 @udev_monitor_get_fd(%struct.udev_monitor* %19)
  store i32 %20, i32* %6, align 4
  %21 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %7, i32 0, i32 0
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %7, i32 0, i32 1
  %24 = load i32, i32* @POLLIN, align 4
  store i32 %24, i32* %23, align 4
  br label %25

25:                                               ; preds = %73, %41, %1
  br label %26

26:                                               ; preds = %34, %25
  %27 = call i32 @poll(%struct.pollfd* %7, i32 1, i32 -1)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @EINTR, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %35

34:                                               ; preds = %29
  br label %26

35:                                               ; preds = %33, %26
  %36 = call i32 (...) @vlc_savecancel()
  store i32 %36, i32* %8, align 4
  %37 = load %struct.udev_monitor*, %struct.udev_monitor** %5, align 8
  %38 = call %struct.udev_device* @udev_monitor_receive_device(%struct.udev_monitor* %37)
  store %struct.udev_device* %38, %struct.udev_device** %9, align 8
  %39 = load %struct.udev_device*, %struct.udev_device** %9, align 8
  %40 = icmp eq %struct.udev_device* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %25

42:                                               ; preds = %35
  %43 = load %struct.udev_device*, %struct.udev_device** %9, align 8
  %44 = call i8* @udev_device_get_action(%struct.udev_device* %43)
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = load %struct.udev_device*, %struct.udev_device** %9, align 8
  %51 = call i32 @AddDevice(%struct.TYPE_5__* %49, %struct.udev_device* %50)
  br label %73

52:                                               ; preds = %42
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = load %struct.udev_device*, %struct.udev_device** %9, align 8
  %59 = call i32 @RemoveDevice(%struct.TYPE_5__* %57, %struct.udev_device* %58)
  br label %72

60:                                               ; preds = %52
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = load %struct.udev_device*, %struct.udev_device** %9, align 8
  %67 = call i32 @RemoveDevice(%struct.TYPE_5__* %65, %struct.udev_device* %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = load %struct.udev_device*, %struct.udev_device** %9, align 8
  %70 = call i32 @AddDevice(%struct.TYPE_5__* %68, %struct.udev_device* %69)
  br label %71

71:                                               ; preds = %64, %60
  br label %72

72:                                               ; preds = %71, %56
  br label %73

73:                                               ; preds = %72, %48
  %74 = load %struct.udev_device*, %struct.udev_device** %9, align 8
  %75 = call i32 @udev_device_unref(%struct.udev_device* %74)
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @vlc_restorecancel(i32 %76)
  br label %25
}

declare dso_local i32 @udev_monitor_get_fd(%struct.udev_monitor*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local %struct.udev_device* @udev_monitor_receive_device(%struct.udev_monitor*) #1

declare dso_local i8* @udev_device_get_action(%struct.udev_device*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @AddDevice(%struct.TYPE_5__*, %struct.udev_device*) #1

declare dso_local i32 @RemoveDevice(%struct.TYPE_5__*, %struct.udev_device*) #1

declare dso_local i32 @udev_device_unref(%struct.udev_device*) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
