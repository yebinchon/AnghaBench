; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evevent.c_AcpiEvFixedEventDetect.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evevent.c_AcpiEvFixedEventDetect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@ACPI_INTERRUPT_NOT_HANDLED = common dso_local global i64 0, align 8
@EvFixedEventDetect = common dso_local global i32 0, align 4
@ACPI_REGISTER_PM1_STATUS = common dso_local global i32 0, align 4
@ACPI_REGISTER_PM1_ENABLE = common dso_local global i32 0, align 4
@ACPI_DB_INTERRUPTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Fixed Event Block: Enable %08X Status %08X\0A\00", align 1
@ACPI_NUM_FIXED_EVENTS = common dso_local global i64 0, align 8
@AcpiGbl_FixedEventInfo = common dso_local global %struct.TYPE_2__* null, align 8
@AcpiFixedEventCount = common dso_local global i32* null, align 8
@ACPI_EVENT_TYPE_FIXED = common dso_local global i32 0, align 4
@AcpiGbl_GlobalEventHandlerContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AcpiEvFixedEventDetect() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i64, i64* @ACPI_INTERRUPT_NOT_HANDLED, align 8
  store i64 %7, i64* %2, align 8
  %8 = load i32, i32* @EvFixedEventDetect, align 4
  %9 = call i32 @ACPI_FUNCTION_NAME(i32 %8)
  %10 = load i32, i32* @ACPI_REGISTER_PM1_STATUS, align 4
  %11 = call i32 @AcpiHwRegisterRead(i32 %10, i64* %3)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @ACPI_REGISTER_PM1_ENABLE, align 4
  %13 = call i32 @AcpiHwRegisterRead(i32 %12, i64* %4)
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @ACPI_FAILURE(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %0
  %20 = load i64, i64* %2, align 8
  store i64 %20, i64* %1, align 8
  br label %71

21:                                               ; preds = %0
  %22 = load i32, i32* @ACPI_DB_INTERRUPTS, align 4
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %3, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @ACPI_DEBUG_PRINT(i32 %25)
  store i64 0, i64* %5, align 8
  br label %27

27:                                               ; preds = %66, %21
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @ACPI_NUM_FIXED_EVENTS, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %69

31:                                               ; preds = %27
  %32 = load i64, i64* %3, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AcpiGbl_FixedEventInfo, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = and i64 %32, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %31
  %41 = load i64, i64* %4, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AcpiGbl_FixedEventInfo, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = and i64 %41, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %40
  %50 = load i32*, i32** @AcpiFixedEventCount, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br i1 true, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32, i32* @ACPI_EVENT_TYPE_FIXED, align 4
  %57 = load i64, i64* %5, align 8
  %58 = load i32, i32* @AcpiGbl_GlobalEventHandlerContext, align 4
  %59 = call i32 @AcpiGbl_GlobalEventHandler(i32 %56, i32* null, i64 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %49
  %61 = load i64, i64* %5, align 8
  %62 = call i64 @AcpiEvFixedEventDispatch(i64 %61)
  %63 = load i64, i64* %2, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %2, align 8
  br label %65

65:                                               ; preds = %60, %40, %31
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %5, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %5, align 8
  br label %27

69:                                               ; preds = %27
  %70 = load i64, i64* %2, align 8
  store i64 %70, i64* %1, align 8
  br label %71

71:                                               ; preds = %69, %19
  %72 = load i64, i64* %1, align 8
  ret i64 %72
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @AcpiHwRegisterRead(i32, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AcpiGbl_GlobalEventHandler(i32, i32*, i64, i32) #1

declare dso_local i64 @AcpiEvFixedEventDispatch(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
