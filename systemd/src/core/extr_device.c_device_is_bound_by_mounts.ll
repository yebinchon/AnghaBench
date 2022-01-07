; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_device.c_device_is_bound_by_mounts.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_device.c_device_is_bound_by_mounts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"SYSTEMD_MOUNT_DEVICE_BOUND\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"Failed to parse SYSTEMD_MOUNT_DEVICE_BOUND='%s' udev property, ignoring: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_8__*)* @device_is_bound_by_mounts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_is_bound_by_mounts(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = call i32 @assert(%struct.TYPE_8__* %7)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = call i32 @assert(%struct.TYPE_8__* %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = call i64 @sd_device_get_property_value(%struct.TYPE_8__* %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8** %5)
  %13 = icmp sge i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @parse_boolean(i8* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @log_device_warning_errno(%struct.TYPE_8__* %20, i32 %21, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %24
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  ret i32 %36
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i64 @sd_device_get_property_value(%struct.TYPE_8__*, i8*, i8**) #1

declare dso_local i32 @parse_boolean(i8*) #1

declare dso_local i32 @log_device_warning_errno(%struct.TYPE_8__*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
