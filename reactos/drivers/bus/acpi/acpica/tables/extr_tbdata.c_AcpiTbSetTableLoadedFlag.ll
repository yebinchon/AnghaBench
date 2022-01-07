; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/tables/extr_tbdata.c_AcpiTbSetTableLoadedFlag.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/tables/extr_tbdata.c_AcpiTbSetTableLoadedFlag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ACPI_MTX_TABLES = common dso_local global i32 0, align 4
@AcpiGbl_RootTableList = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ACPI_TABLE_IS_LOADED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiTbSetTableLoadedFlag(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @ACPI_MTX_TABLES, align 4
  %6 = call i32 @AcpiUtAcquireMutex(i32 %5)
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @AcpiGbl_RootTableList, i32 0, i32 0), align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load i32, i32* @ACPI_TABLE_IS_LOADED, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @AcpiGbl_RootTableList, i32 0, i32 1), align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %14
  store i32 %20, i32* %18, align 4
  br label %30

21:                                               ; preds = %10
  %22 = load i32, i32* @ACPI_TABLE_IS_LOADED, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @AcpiGbl_RootTableList, i32 0, i32 1), align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %23
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %21, %13
  br label %31

31:                                               ; preds = %30, %2
  %32 = load i32, i32* @ACPI_MTX_TABLES, align 4
  %33 = call i32 @AcpiUtReleaseMutex(i32 %32)
  ret void
}

declare dso_local i32 @AcpiUtAcquireMutex(i32) #1

declare dso_local i32 @AcpiUtReleaseMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
