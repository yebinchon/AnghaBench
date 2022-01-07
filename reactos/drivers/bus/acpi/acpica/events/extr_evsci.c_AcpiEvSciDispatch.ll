; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evsci.c_AcpiEvSciDispatch.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evsci.c_AcpiEvSciDispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__*, i32, i32 (i32)* }

@ACPI_INTERRUPT_NOT_HANDLED = common dso_local global i32 0, align 4
@EvSciDispatch = common dso_local global i32 0, align 4
@AcpiGbl_SciHandlerList = common dso_local global %struct.TYPE_3__* null, align 8
@AcpiGbl_GpeLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiEvSciDispatch() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @ACPI_INTERRUPT_NOT_HANDLED, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @EvSciDispatch, align 4
  %7 = call i32 @ACPI_FUNCTION_NAME(i32 %6)
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @AcpiGbl_SciHandlerList, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %1, align 4
  br label %37

12:                                               ; preds = %0
  %13 = load i32, i32* @AcpiGbl_GpeLock, align 4
  %14 = call i32 @AcpiOsAcquireLock(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @AcpiGbl_SciHandlerList, align 8
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %2, align 8
  br label %16

16:                                               ; preds = %19, %12
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %22(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %2, align 8
  br label %16

32:                                               ; preds = %16
  %33 = load i32, i32* @AcpiGbl_GpeLock, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @AcpiOsReleaseLock(i32 %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %32, %10
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @AcpiOsAcquireLock(i32) #1

declare dso_local i32 @AcpiOsReleaseLock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
