; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/extr_buspdo.c_Bus_GetDeviceCapabilities.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/extr_buspdo.c_Bus_GetDeviceCapabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, %struct.TYPE_17__, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@NotificationEvent = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IRP_MJ_PNP = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i64 0, align 8
@STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@IRP_MN_QUERY_CAPABILITIES = common dso_local global i32 0, align 4
@STATUS_PENDING = common dso_local global i64 0, align 8
@Executive = common dso_local global i32 0, align 4
@KernelMode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Bus_GetDeviceCapabilities(i32 %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %11 = call i32 (...) @PAGED_CODE()
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %13 = call i32 @RtlZeroMemory(%struct.TYPE_19__* %12, i32 4)
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  store i32 4, i32* %15, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 2
  store i32 -1, i32* %19, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 3
  store i32 -1, i32* %21, align 4
  %22 = load i32, i32* @NotificationEvent, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = call i32 @KeInitializeEvent(i32* %6, i32 %22, i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @IoGetAttachedDeviceReference(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @IRP_MJ_PNP, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call %struct.TYPE_18__* @IoBuildSynchronousFsdRequest(i32 %27, i32 %28, i32* null, i32 0, i32* null, i32* %6, %struct.TYPE_20__* %5)
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %10, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %31 = icmp eq %struct.TYPE_18__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %33, i64* %7, align 8
  br label %68

34:                                               ; preds = %2
  %35 = load i32, i32* @STATUS_NOT_SUPPORTED, align 4
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %40 = call %struct.TYPE_19__* @IoGetNextIrpStackLocation(%struct.TYPE_18__* %39)
  store %struct.TYPE_19__* %40, %struct.TYPE_19__** %9, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %42 = call i32 @RtlZeroMemory(%struct.TYPE_19__* %41, i32 4)
  %43 = load i32, i32* @IRP_MJ_PNP, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @IRP_MN_QUERY_CAPABILITIES, align 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  store %struct.TYPE_19__* %49, %struct.TYPE_19__** %53, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %56 = call i64 @IoCallDriver(i32 %54, %struct.TYPE_18__* %55)
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @STATUS_PENDING, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %34
  %61 = load i32, i32* @Executive, align 4
  %62 = load i32, i32* @KernelMode, align 4
  %63 = load i32, i32* @FALSE, align 4
  %64 = call i32 @KeWaitForSingleObject(i32* %6, i32 %61, i32 %62, i32 %63, i32* null)
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %7, align 8
  br label %67

67:                                               ; preds = %60, %34
  br label %68

68:                                               ; preds = %67, %32
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @ObDereferenceObject(i32 %69)
  %71 = load i64, i64* %7, align 8
  ret i64 %71
}

declare dso_local i32 @PAGED_CODE(...) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @KeInitializeEvent(i32*, i32, i32) #1

declare dso_local i32 @IoGetAttachedDeviceReference(i32) #1

declare dso_local %struct.TYPE_18__* @IoBuildSynchronousFsdRequest(i32, i32, i32*, i32, i32*, i32*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_19__* @IoGetNextIrpStackLocation(%struct.TYPE_18__*) #1

declare dso_local i64 @IoCallDriver(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @KeWaitForSingleObject(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @ObDereferenceObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
