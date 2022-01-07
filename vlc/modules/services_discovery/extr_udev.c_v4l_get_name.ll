; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_udev.c_v4l_get_name.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_udev.c_v4l_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udev_device = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"ID_V4L_PRODUCT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.udev_device*)* @v4l_get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @v4l_get_name(%struct.udev_device* %0) #0 {
  %2 = alloca %struct.udev_device*, align 8
  %3 = alloca i8*, align 8
  store %struct.udev_device* %0, %struct.udev_device** %2, align 8
  %4 = load %struct.udev_device*, %struct.udev_device** %2, align 8
  %5 = call i8* @udev_device_get_property_value(%struct.udev_device* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @strdup(i8* %9)
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi i8* [ %10, %8 ], [ null, %11 ]
  ret i8* %13
}

declare dso_local i8* @udev_device_get_property_value(%struct.udev_device*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
