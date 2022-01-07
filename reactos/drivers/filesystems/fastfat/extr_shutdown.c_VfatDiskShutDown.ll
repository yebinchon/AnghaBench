; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_shutdown.c_VfatDiskShutDown.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_shutdown.c_VfatDiskShutDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@NotificationEvent = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IRP_MJ_SHUTDOWN = common dso_local global i32 0, align 4
@STATUS_PENDING = common dso_local global i64 0, align 8
@Executive = common dso_local global i32 0, align 4
@KernelMode = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*)* @VfatDiskShutDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @VfatDiskShutDown(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load i32, i32* @NotificationEvent, align 4
  %8 = load i32, i32* @FALSE, align 4
  %9 = call i32 @KeInitializeEvent(i32* %4, i32 %7, i32 %8)
  %10 = load i32, i32* @IRP_MJ_SHUTDOWN, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @IoBuildSynchronousFsdRequest(i32 %10, i32 %13, i32* null, i32 0, i32* null, i32* %4, %struct.TYPE_6__* %6)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @IoCallDriver(i32 %20, i64 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @STATUS_PENDING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load i32, i32* @Executive, align 4
  %28 = load i32, i32* @KernelMode, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = call i32 @KeWaitForSingleObject(i32* %4, i32 %27, i32 %28, i32 %29, i32* null)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %26, %17
  br label %36

34:                                               ; preds = %1
  %35 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %34, %33
  %37 = load i64, i64* %5, align 8
  ret i64 %37
}

declare dso_local i32 @KeInitializeEvent(i32*, i32, i32) #1

declare dso_local i64 @IoBuildSynchronousFsdRequest(i32, i32, i32*, i32, i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @IoCallDriver(i32, i64) #1

declare dso_local i32 @KeWaitForSingleObject(i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
