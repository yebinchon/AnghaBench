; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/namespace/extr_nsutils.c_AcpiNsOpensScope.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/namespace/extr_nsutils.c_AcpiNsOpensScope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_TYPE_LOCAL_MAX = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid Object Type 0x%X\00", align 1
@ACPI_NS_NORMAL = common dso_local global i32 0, align 4
@AcpiGbl_NsProperties = common dso_local global i64* null, align 8
@ACPI_NS_NEWSCOPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiNsOpensScope(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @ACPI_TYPE_LOCAL_MAX, align 8
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @AE_INFO, align 4
  %10 = load i64, i64* %3, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 @ACPI_WARNING(i32 %11)
  %13 = load i32, i32* @ACPI_NS_NORMAL, align 4
  store i32 %13, i32* %2, align 4
  br label %22

14:                                               ; preds = %1
  %15 = load i64*, i64** @AcpiGbl_NsProperties, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @ACPI_NS_NEWSCOPE, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %14, %8
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i32 @ACPI_WARNING(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
