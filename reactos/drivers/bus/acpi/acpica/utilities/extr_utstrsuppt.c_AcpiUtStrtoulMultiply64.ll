; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utstrsuppt.c_AcpiUtStrtoulMultiply64.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utstrsuppt.c_AcpiUtStrtoulMultiply64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AE_OK = common dso_local global i32 0, align 4
@ACPI_UINT64_MAX = common dso_local global i32 0, align 4
@AE_NUMERIC_OVERFLOW = common dso_local global i32 0, align 4
@AcpiGbl_IntegerBitWidth = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64*)* @AcpiUtStrtoulMultiply64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiUtStrtoulMultiply64(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i64*, i64** %7, align 8
  store i64 0, i64* %10, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @AE_OK, align 4
  store i32 %17, i32* %4, align 4
  br label %43

18:                                               ; preds = %13
  %19 = load i32, i32* @ACPI_UINT64_MAX, align 4
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @AcpiUtShortDivide(i32 %19, i64 %20, i64* %9, i32* null)
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @AE_NUMERIC_OVERFLOW, align 4
  store i32 %26, i32* %4, align 4
  br label %43

27:                                               ; preds = %18
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = mul nsw i64 %28, %29
  store i64 %30, i64* %8, align 8
  %31 = load i32, i32* @AcpiGbl_IntegerBitWidth, align 4
  %32 = icmp eq i32 %31, 32
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @ACPI_UINT32_MAX, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @AE_NUMERIC_OVERFLOW, align 4
  store i32 %38, i32* %4, align 4
  br label %43

39:                                               ; preds = %33, %27
  %40 = load i64, i64* %8, align 8
  %41 = load i64*, i64** %7, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i32, i32* @AE_OK, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %37, %25, %16
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @AcpiUtShortDivide(i32, i64, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
