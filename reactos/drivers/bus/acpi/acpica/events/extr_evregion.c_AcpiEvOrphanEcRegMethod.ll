; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evregion.c_AcpiEvOrphanEcRegMethod.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evregion.c_AcpiEvOrphanEcRegMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__, i8* }
%struct.TYPE_15__ = type { i64 }

@EvOrphanEcRegMethod = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4
@ACPI_MTX_NAMESPACE = common dso_local global i32 0, align 4
@METHOD_NAME__REG = common dso_local global i32 0, align 4
@ACPI_TYPE_REGION = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_EC = common dso_local global i64 0, align 8
@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@ACPI_REG_CONNECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @AcpiEvOrphanEcRegMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AcpiEvOrphanEcRegMethod(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__, align 8
  %7 = alloca [2 x %struct.TYPE_17__], align 16
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %8 = load i32, i32* @EvOrphanEcRegMethod, align 4
  %9 = call i32 @ACPI_FUNCTION_TRACE(i32 %8)
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %11 = icmp ne %struct.TYPE_18__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @return_VOID, align 4
  br label %14

14:                                               ; preds = %12, %1
  %15 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %16 = call i32 @AcpiUtReleaseMutex(i32 %15)
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %18 = load i32, i32* @METHOD_NAME__REG, align 4
  %19 = call i32 @AcpiGetHandle(%struct.TYPE_18__* %17, i32 %18, i32* %3)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @ACPI_FAILURE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %75

24:                                               ; preds = %14
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %26 = call %struct.TYPE_18__* @AcpiNsGetNextNode(%struct.TYPE_18__* %25, %struct.TYPE_18__* null)
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %4, align 8
  br label %27

27:                                               ; preds = %51, %24
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = icmp ne %struct.TYPE_18__* %28, null
  br i1 %29, label %30, label %55

30:                                               ; preds = %27
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ACPI_TYPE_REGION, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = icmp ne %struct.TYPE_14__* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ACPI_ADR_SPACE_EC, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %75

51:                                               ; preds = %41, %36, %30
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %54 = call %struct.TYPE_18__* @AcpiNsGetNextNode(%struct.TYPE_18__* %52, %struct.TYPE_18__* %53)
  store %struct.TYPE_18__* %54, %struct.TYPE_18__** %4, align 8
  br label %27

55:                                               ; preds = %27
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  store i32 2, i32* %56, align 8
  %57 = getelementptr inbounds [2 x %struct.TYPE_17__], [2 x %struct.TYPE_17__]* %7, i64 0, i64 0
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %58, align 8
  %59 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %60 = getelementptr inbounds [2 x %struct.TYPE_17__], [2 x %struct.TYPE_17__]* %7, i64 0, i64 0
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load i64, i64* @ACPI_ADR_SPACE_EC, align 8
  %63 = getelementptr inbounds [2 x %struct.TYPE_17__], [2 x %struct.TYPE_17__]* %7, i64 0, i64 0
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  store i64 %62, i64* %65, align 16
  %66 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %67 = getelementptr inbounds [2 x %struct.TYPE_17__], [2 x %struct.TYPE_17__]* %7, i64 0, i64 1
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load i64, i64* @ACPI_REG_CONNECT, align 8
  %70 = getelementptr inbounds [2 x %struct.TYPE_17__], [2 x %struct.TYPE_17__]* %7, i64 0, i64 1
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  store i64 %69, i64* %72, align 16
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @AcpiEvaluateObject(i32 %73, i32* null, %struct.TYPE_16__* %6, i32* null)
  br label %75

75:                                               ; preds = %55, %50, %23
  %76 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %77 = call i32 @AcpiUtAcquireMutex(i32 %76)
  %78 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @AcpiUtReleaseMutex(i32) #1

declare dso_local i32 @AcpiGetHandle(%struct.TYPE_18__*, i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local %struct.TYPE_18__* @AcpiNsGetNextNode(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @AcpiEvaluateObject(i32, i32*, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @AcpiUtAcquireMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
