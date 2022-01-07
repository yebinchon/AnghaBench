; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evgpeblk.c_AcpiEvDeleteGpeBlock.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evgpeblk.c_AcpiEvDeleteGpeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_11__*, %struct.TYPE_11__*, i64, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }

@EvInstallGpeBlock = common dso_local global i32 0, align 4
@ACPI_MTX_EVENTS = common dso_local global i32 0, align 4
@AcpiGbl_GpeLock = common dso_local global i32 0, align 4
@AcpiCurrentGpeCount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiEvDeleteGpeBlock(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %6 = load i32, i32* @EvInstallGpeBlock, align 4
  %7 = call i32 @ACPI_FUNCTION_TRACE(i32 %6)
  %8 = load i32, i32* @ACPI_MTX_EVENTS, align 4
  %9 = call i32 @AcpiUtAcquireMutex(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @ACPI_FAILURE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @return_ACPI_STATUS(i32 %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = call i32 @AcpiHwDisableGpeBlock(%struct.TYPE_12__* %19, %struct.TYPE_11__* %20, i32* null)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @ACPI_FAILURE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @return_ACPI_STATUS(i32 %26)
  br label %28

28:                                               ; preds = %25, %16
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = icmp ne %struct.TYPE_10__* %31, null
  br i1 %32, label %48, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = icmp ne %struct.TYPE_9__* %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = call i32 @AcpiEvDeleteGpeXrupt(%struct.TYPE_12__* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @ACPI_FAILURE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %106

47:                                               ; preds = %38
  br label %88

48:                                               ; preds = %33, %28
  %49 = load i32, i32* @AcpiGbl_GpeLock, align 4
  %50 = call i32 @AcpiOsAcquireLock(i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = icmp ne %struct.TYPE_10__* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %62, align 8
  br label %71

63:                                               ; preds = %48
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 5
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %70, align 8
  br label %71

71:                                               ; preds = %63, %55
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = icmp ne %struct.TYPE_9__* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** %83, align 8
  br label %84

84:                                               ; preds = %76, %71
  %85 = load i32, i32* @AcpiGbl_GpeLock, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @AcpiOsReleaseLock(i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %47
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @AcpiCurrentGpeCount, align 4
  %93 = sext i32 %92 to i64
  %94 = sub nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* @AcpiCurrentGpeCount, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = call i32 @ACPI_FREE(%struct.TYPE_11__* %98)
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = call i32 @ACPI_FREE(%struct.TYPE_11__* %102)
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %105 = call i32 @ACPI_FREE(%struct.TYPE_11__* %104)
  br label %106

106:                                              ; preds = %88, %46
  %107 = load i32, i32* @ACPI_MTX_EVENTS, align 4
  %108 = call i32 @AcpiUtReleaseMutex(i32 %107)
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @return_ACPI_STATUS(i32 %109)
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @AcpiUtAcquireMutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiHwDisableGpeBlock(%struct.TYPE_12__*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @AcpiEvDeleteGpeXrupt(%struct.TYPE_12__*) #1

declare dso_local i32 @AcpiOsAcquireLock(i32) #1

declare dso_local i32 @AcpiOsReleaseLock(i32, i32) #1

declare dso_local i32 @ACPI_FREE(%struct.TYPE_11__*) #1

declare dso_local i32 @AcpiUtReleaseMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
