; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/namespace/extr_nsrepair.c_AcpiNsRepairNullElement.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/namespace/extr_nsrepair.c_AcpiNsRepairNullElement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@NsRepairNullElement = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_RTYPE_INTEGER = common dso_local global i32 0, align 4
@ACPI_RTYPE_STRING = common dso_local global i32 0, align 4
@ACPI_RTYPE_BUFFER = common dso_local global i32 0, align 4
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_DB_REPAIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"%s: Converted NULL package element to expected %s at index %u\0A\00", align 1
@ACPI_OBJECT_REPAIRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiNsRepairNullElement(%struct.TYPE_16__* %0, i32 %1, i32 %2, %struct.TYPE_15__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__**, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_15__** %3, %struct.TYPE_15__*** %9, align 8
  %12 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %10, align 8
  %14 = load i32, i32* @NsRepairNullElement, align 4
  %15 = call i32 @ACPI_FUNCTION_NAME(i32 %14)
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %17 = icmp ne %struct.TYPE_15__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @AE_OK, align 4
  store i32 %19, i32* %5, align 4
  br label %76

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @ACPI_RTYPE_INTEGER, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call %struct.TYPE_15__* @AcpiUtCreateIntegerObject(i32 0)
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %11, align 8
  br label %45

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @ACPI_RTYPE_STRING, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call %struct.TYPE_15__* @AcpiUtCreateStringObject(i32 0)
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %11, align 8
  br label %44

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @ACPI_RTYPE_BUFFER, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call %struct.TYPE_15__* @AcpiUtCreateBufferObject(i32 0)
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %11, align 8
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  store i32 %42, i32* %5, align 4
  br label %76

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43, %32
  br label %45

45:                                               ; preds = %44, %25
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %47 = icmp ne %struct.TYPE_15__* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %49, i32* %5, align 4
  br label %76

50:                                               ; preds = %45
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @ACPI_DB_REPAIR, align 4
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %65 = call i32 @AcpiUtGetObjectTypeName(%struct.TYPE_15__* %64)
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @ACPI_DEBUG_PRINT(i32 %66)
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %69 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  store %struct.TYPE_15__* %68, %struct.TYPE_15__** %69, align 8
  %70 = load i32, i32* @ACPI_OBJECT_REPAIRED, align 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load i32, i32* @AE_OK, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %50, %48, %41, %18
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local %struct.TYPE_15__* @AcpiUtCreateIntegerObject(i32) #1

declare dso_local %struct.TYPE_15__* @AcpiUtCreateStringObject(i32) #1

declare dso_local %struct.TYPE_15__* @AcpiUtCreateBufferObject(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AcpiUtGetObjectTypeName(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
