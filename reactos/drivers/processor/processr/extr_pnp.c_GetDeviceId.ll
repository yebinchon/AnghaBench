; ModuleID = '/home/carl/AnghaBench/reactos/drivers/processor/processr/extr_pnp.c_GetDeviceId.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/processor/processr/extr_pnp.c_GetDeviceId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@NotificationEvent = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IRP_MJ_PNP = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i64 0, align 8
@STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@IRP_MN_QUERY_ID = common dso_local global i32 0, align 4
@STATUS_PENDING = common dso_local global i64 0, align 8
@Executive = common dso_local global i32 0, align 4
@KernelMode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64*)* @GetDeviceId to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GetDeviceId(i32 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %13 = call i32 (...) @PAGED_CODE()
  %14 = load i32, i32* @NotificationEvent, align 4
  %15 = load i32, i32* @FALSE, align 4
  %16 = call i32 @KeInitializeEvent(i32* %10, i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @IoGetAttachedDeviceReference(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @IRP_MJ_PNP, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.TYPE_16__* @IoBuildSynchronousFsdRequest(i32 %19, i32 %20, i32* null, i32 0, i32* null, i32* %10, %struct.TYPE_18__* %8)
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %11, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %23 = icmp eq %struct.TYPE_16__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %25, i64* %12, align 8
  br label %68

26:                                               ; preds = %3
  %27 = load i32, i32* @STATUS_NOT_SUPPORTED, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %32 = call %struct.TYPE_17__* @IoGetNextIrpStackLocation(%struct.TYPE_16__* %31)
  store %struct.TYPE_17__* %32, %struct.TYPE_17__** %7, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %34 = call i32 @RtlZeroMemory(%struct.TYPE_17__* %33, i32 4)
  %35 = load i32, i32* @IRP_MJ_PNP, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @IRP_MN_QUERY_ID, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %48 = call i64 @IoCallDriver(i32 %46, %struct.TYPE_16__* %47)
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* @STATUS_PENDING, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %26
  %53 = load i32, i32* @Executive, align 4
  %54 = load i32, i32* @KernelMode, align 4
  %55 = load i32, i32* @FALSE, align 4
  %56 = call i32 @KeWaitForSingleObject(i32* %10, i32 %53, i32 %54, i32 %55, i32* null)
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %12, align 8
  br label %59

59:                                               ; preds = %52, %26
  %60 = load i64, i64* %12, align 8
  %61 = call i64 @NT_SUCCESS(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %6, align 8
  store i64 %65, i64* %66, align 8
  br label %67

67:                                               ; preds = %63, %59
  br label %68

68:                                               ; preds = %67, %24
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @ObDereferenceObject(i32 %69)
  %71 = load i64, i64* %12, align 8
  ret i64 %71
}

declare dso_local i32 @PAGED_CODE(...) #1

declare dso_local i32 @KeInitializeEvent(i32*, i32, i32) #1

declare dso_local i32 @IoGetAttachedDeviceReference(i32) #1

declare dso_local %struct.TYPE_16__* @IoBuildSynchronousFsdRequest(i32, i32, i32*, i32, i32*, i32*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_17__* @IoGetNextIrpStackLocation(%struct.TYPE_16__*) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @IoCallDriver(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @KeWaitForSingleObject(i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @NT_SUCCESS(i64) #1

declare dso_local i32 @ObDereferenceObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
