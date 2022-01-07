; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/hardware/extr_hwvalid.c_AcpiHwWritePort.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/hardware/extr_hwvalid.c_AcpiHwWritePort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AcpiGbl_TruncateIoAddresses = common dso_local global i64 0, align 8
@ACPI_UINT16_MAX = common dso_local global i32 0, align 4
@AE_AML_ILLEGAL_ADDRESS = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AcpiHwWritePort(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* @AcpiGbl_TruncateIoAddresses, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @ACPI_UINT16_MAX, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %12, %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @AcpiHwValidateIoRequest(i32 %17, i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i64 @ACPI_SUCCESS(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @AcpiOsWritePort(i32 %24, i32 %25, i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  store i64 %28, i64* %4, align 8
  br label %66

29:                                               ; preds = %16
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @AE_AML_ILLEGAL_ADDRESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* %8, align 8
  store i64 %34, i64* %4, align 8
  br label %66

35:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %61, %35
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @AcpiHwValidateIoRequest(i32 %41, i32 8)
  %43 = load i64, i64* @AE_OK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %9, align 4
  %49 = ashr i32 %47, %48
  %50 = and i32 %49, 255
  %51 = call i64 @AcpiOsWritePort(i32 %46, i32 %50, i32 8)
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @ACPI_FAILURE(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i64, i64* %8, align 8
  store i64 %56, i64* %4, align 8
  br label %66

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %40
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 8
  store i32 %63, i32* %9, align 4
  br label %36

64:                                               ; preds = %36
  %65 = load i64, i64* @AE_OK, align 8
  store i64 %65, i64* %4, align 8
  br label %66

66:                                               ; preds = %64, %55, %33, %23
  %67 = load i64, i64* %4, align 8
  ret i64 %67
}

declare dso_local i64 @AcpiHwValidateIoRequest(i32, i32) #1

declare dso_local i64 @ACPI_SUCCESS(i64) #1

declare dso_local i64 @AcpiOsWritePort(i32, i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
