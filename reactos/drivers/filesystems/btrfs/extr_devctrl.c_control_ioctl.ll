; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_devctrl.c_control_ioctl.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_devctrl.c_control_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_13__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }

@NormalPagePriority = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unhandled ioctl %x\0A\00", align 1
@STATUS_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @control_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control_ioctl(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %5 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %6 = call %struct.TYPE_17__* @IoGetCurrentIrpStackLocation(%struct.TYPE_16__* %5)
  store %struct.TYPE_17__* %6, %struct.TYPE_17__** %3, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %39 [
    i32 129, label %12
    i32 130, label %22
    i32 128, label %36
  ]

12:                                               ; preds = %1
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %14 = load i32, i32* @NormalPagePriority, align 4
  %15 = call i32 @map_user_buffer(%struct.TYPE_16__* %13, i32 %14)
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @query_filesystems(i32 %15, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %47

22:                                               ; preds = %1
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @probe_volume(i32 %26, i32 %31, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %47

36:                                               ; preds = %1
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %38 = call i32 @ioctl_unload(%struct.TYPE_16__* %37)
  store i32 %38, i32* %4, align 4
  br label %47

39:                                               ; preds = %1
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @STATUS_NOT_IMPLEMENTED, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %39, %36, %22, %12
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_17__* @IoGetCurrentIrpStackLocation(%struct.TYPE_16__*) #1

declare dso_local i32 @query_filesystems(i32, i32) #1

declare dso_local i32 @map_user_buffer(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @probe_volume(i32, i32, i32) #1

declare dso_local i32 @ioctl_unload(%struct.TYPE_16__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
