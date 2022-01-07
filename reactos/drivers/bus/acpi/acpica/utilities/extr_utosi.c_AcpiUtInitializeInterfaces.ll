; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utosi.c_AcpiUtInitializeInterfaces.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utosi.c_AcpiUtInitializeInterfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@AcpiGbl_OsiMutex = common dso_local global i32 0, align 4
@ACPI_WAIT_FOREVER = common dso_local global i32 0, align 4
@AcpiDefaultSupportedInterfaces = common dso_local global %struct.TYPE_4__* null, align 8
@AcpiGbl_SupportedInterfaces = common dso_local global %struct.TYPE_4__* null, align 8
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiUtInitializeInterfaces() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @AcpiGbl_OsiMutex, align 4
  %5 = load i32, i32* @ACPI_WAIT_FOREVER, align 4
  %6 = call i32 @AcpiOsAcquireMutex(i32 %4, i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @ACPI_FAILURE(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  store i32 %11, i32* %1, align 4
  br label %38

12:                                               ; preds = %0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiDefaultSupportedInterfaces, align 8
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** @AcpiGbl_SupportedInterfaces, align 8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %31, %12
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiDefaultSupportedInterfaces, align 8
  %17 = call i32 @ACPI_ARRAY_LENGTH(%struct.TYPE_4__* %16)
  %18 = sub nsw i32 %17, 1
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiDefaultSupportedInterfaces, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 %23, 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiDefaultSupportedInterfaces, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %30, align 8
  br label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %14

34:                                               ; preds = %14
  %35 = load i32, i32* @AcpiGbl_OsiMutex, align 4
  %36 = call i32 @AcpiOsReleaseMutex(i32 %35)
  %37 = load i32, i32* @AE_OK, align 4
  store i32 %37, i32* %1, align 4
  br label %38

38:                                               ; preds = %34, %10
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @AcpiOsAcquireMutex(i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_ARRAY_LENGTH(%struct.TYPE_4__*) #1

declare dso_local i32 @AcpiOsReleaseMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
