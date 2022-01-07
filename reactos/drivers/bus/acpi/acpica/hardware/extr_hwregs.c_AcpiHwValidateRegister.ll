; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/hardware/extr_hwregs.c_AcpiHwValidateRegister.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/hardware/extr_hwregs.c_AcpiHwValidateRegister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, i64, i32 }

@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_BAD_ADDRESS = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_SYSTEM_MEMORY = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_SYSTEM_IO = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unsupported address space: 0x%X\00", align 1
@AE_SUPPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Unsupported register access width: 0x%X\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Requested bit width 0x%X is smaller than register bit width 0x%X\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiHwValidateRegister(%struct.TYPE_4__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %13, i32* %4, align 4
  br label %83

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 4
  %18 = call i32 @ACPI_MOVE_64_TO_64(i32* %15, i32* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @AE_BAD_ADDRESS, align 4
  store i32 %23, i32* %4, align 4
  br label %83

24:                                               ; preds = %14
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ACPI_ADR_SPACE_SYSTEM_MEMORY, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ACPI_ADR_SPACE_SYSTEM_IO, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i32, i32* @AE_INFO, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @ACPI_ERROR(i32 %41)
  %43 = load i32, i32* @AE_SUPPORT, align 4
  store i32 %43, i32* %4, align 4
  br label %83

44:                                               ; preds = %30, %24
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, 4
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i32, i32* @AE_INFO, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ACPI_ERROR(i32 %53)
  %55 = load i32, i32* @AE_SUPPORT, align 4
  store i32 %55, i32* %4, align 4
  br label %83

56:                                               ; preds = %44
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i64 @AcpiHwGetAccessBitWidth(i32 %58, %struct.TYPE_4__* %59, i64 %60)
  store i64 %61, i64* %9, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load i64, i64* %9, align 8
  %70 = call i64 @ACPI_ROUND_UP(i64 %68, i64 %69)
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* %8, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %56
  %75 = load i32, i32* @AE_INFO, align 4
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* %8, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @ACPI_WARNING(i32 %78)
  %80 = load i32, i32* @AE_SUPPORT, align 4
  store i32 %80, i32* %4, align 4
  br label %83

81:                                               ; preds = %56
  %82 = load i32, i32* @AE_OK, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %74, %49, %36, %22, %12
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @ACPI_MOVE_64_TO_64(i32*, i32*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i64 @AcpiHwGetAccessBitWidth(i32, %struct.TYPE_4__*, i64) #1

declare dso_local i64 @ACPI_ROUND_UP(i64, i64) #1

declare dso_local i32 @ACPI_WARNING(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
