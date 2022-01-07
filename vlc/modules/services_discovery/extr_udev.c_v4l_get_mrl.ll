; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_udev.c_v4l_get_mrl.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_udev.c_v4l_get_mrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udev_device = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"v4l2://%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.udev_device*)* @v4l_get_mrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @v4l_get_mrl(%struct.udev_device* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.udev_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.udev_device* %0, %struct.udev_device** %3, align 8
  %6 = load %struct.udev_device*, %struct.udev_device** %3, align 8
  %7 = call i64 @v4l_is_legacy(%struct.udev_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.udev_device*, %struct.udev_device** %3, align 8
  %11 = call i32 @v4l_can_capture(%struct.udev_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %1
  store i8* null, i8** %2, align 8
  br label %23

14:                                               ; preds = %9
  %15 = load %struct.udev_device*, %struct.udev_device** %3, align 8
  %16 = call i8* @udev_device_get_devnode(%struct.udev_device* %15)
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @asprintf(i8** %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i8* null, i8** %5, align 8
  br label %21

21:                                               ; preds = %20, %14
  %22 = load i8*, i8** %5, align 8
  store i8* %22, i8** %2, align 8
  br label %23

23:                                               ; preds = %21, %13
  %24 = load i8*, i8** %2, align 8
  ret i8* %24
}

declare dso_local i64 @v4l_is_legacy(%struct.udev_device*) #1

declare dso_local i32 @v4l_can_capture(%struct.udev_device*) #1

declare dso_local i8* @udev_device_get_devnode(%struct.udev_device*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
