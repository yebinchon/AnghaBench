; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utdecode.c_AcpiUtGetObjectTypeName.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utdecode.c_AcpiUtGetObjectTypeName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@UtGetObjectTypeName = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Null Object Descriptor\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"[NULL Object Descriptor]\00", align 1
@ACPI_DESC_TYPE_OPERAND = common dso_local global i64 0, align 8
@ACPI_DESC_TYPE_NAMED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"Invalid object descriptor type: 0x%2.2X [%s] (%p)\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Invalid object\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @AcpiUtGetObjectTypeName(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %4 = load i32, i32* @UtGetObjectTypeName, align 4
  %5 = call i32 @ACPI_FUNCTION_TRACE(i32 %4)
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = icmp ne %struct.TYPE_7__* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ACPI_DB_EXEC, align 4
  %10 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([24 x i8]* @.str to i32))
  %11 = call i32 @return_STR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_7__* %13)
  %15 = load i64, i64* @ACPI_DESC_TYPE_OPERAND, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %12
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_7__* %18)
  %20 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load i32, i32* @ACPI_DB_EXEC, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_7__* %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = call i32 @AcpiUtGetDescriptorName(%struct.TYPE_7__* %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = ptrtoint %struct.TYPE_7__* %28 to i32
  %30 = call i32 @ACPI_DEBUG_PRINT(i32 %29)
  %31 = call i32 @return_STR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %22, %17, %12
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @AcpiUtGetTypeName(i32 %36)
  %38 = call i32 @return_STR(i8* %37)
  %39 = load i8*, i8** %2, align 8
  ret i8* %39
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @return_STR(i8*) #1

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_7__*) #1

declare dso_local i32 @AcpiUtGetDescriptorName(%struct.TYPE_7__*) #1

declare dso_local i8* @AcpiUtGetTypeName(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
