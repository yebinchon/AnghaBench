; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/sound/mmixer/extr_filter.c_MMixerGetPinInstanceCount.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/sound/mmixer/extr_filter.c_MMixerGetPinInstanceCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 (i32, i32, i32, i32, i32, i32, i32*)* }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@KSPROPSETID_Pin = common dso_local global i32 0, align 4
@KSPROPERTY_TYPE_GET = common dso_local global i32 0, align 4
@KSPROPERTY_PIN_CINSTANCES = common dso_local global i32 0, align 4
@IOCTL_KS_PROPERTY = common dso_local global i32 0, align 4
@MM_STATUS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MMixerGetPinInstanceCount(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca %struct.TYPE_9__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @KSPROPSETID_Pin, align 4
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @KSPROPERTY_TYPE_GET, align 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @KSPROPERTY_PIN_CINSTANCES, align 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64 (i32, i32, i32, i32, i32, i32, i32*)*, i64 (i32, i32, i32, i32, i32, i32, i32*)** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @IOCTL_KS_PROPERTY, align 4
  %28 = ptrtoint %struct.TYPE_8__* %7 to i32
  %29 = ptrtoint %struct.TYPE_9__* %8 to i32
  %30 = call i64 %25(i32 %26, i32 %27, i32 %28, i32 24, i32 %29, i32 4, i32* %9)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @MM_STATUS_SUCCESS, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  ret i32 %37
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
