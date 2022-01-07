; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_bus.c_acpi_bus_init.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_bus.c_acpi_bus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"acpi_bus_init\0A\00", align 1
@event_dpc = common dso_local global i32 0, align 4
@acpi_bus_generate_event_dpc = common dso_local global i32 0, align 4
@ACPI_FULL_INITIALIZATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Unable to start the ACPI Interpreter\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Unable to initialize ACPI objects\0A\00", align 1
@ACPI_ROOT_OBJECT = common dso_local global i32 0, align 4
@ACPI_SYSTEM_NOTIFY = common dso_local global i32 0, align 4
@acpi_bus_notify = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Unable to register for device notifications\0A\00", align 1
@AE_NOT_FOUND = common dso_local global i32 0, align 4
@acpi_root = common dso_local global i32 0, align 4
@ACPI_BUS_TYPE_SYSTEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"acpi_bus_scan_fixed failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"acpi_bus_scan failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_bus_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %4 = load i32, i32* @AE_OK, align 4
  store i32 %4, i32* %3, align 4
  %5 = call i32 @DPRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @acpi_bus_generate_event_dpc, align 4
  %7 = call i32 @KeInitializeDpc(i32* @event_dpc, i32 %6, i32* null)
  %8 = load i32, i32* @ACPI_FULL_INITIALIZATION, align 4
  %9 = call i32 @AcpiEnableSubsystem(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @ACPI_FAILURE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 @DPRINT1(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %62

15:                                               ; preds = %0
  %16 = load i32, i32* @ACPI_FULL_INITIALIZATION, align 4
  %17 = call i32 @AcpiInitializeObjects(i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @ACPI_FAILURE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 @DPRINT1(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %62

23:                                               ; preds = %15
  %24 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %25 = load i32, i32* @ACPI_SYSTEM_NOTIFY, align 4
  %26 = load i32, i32* @acpi_bus_notify, align 4
  %27 = call i32 @AcpiInstallNotifyHandler(i32 %24, i32 %25, i32 %26, i32* null)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @ACPI_FAILURE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = call i32 @DPRINT1(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* @AE_NOT_FOUND, align 4
  store i32 %33, i32* %2, align 4
  br label %62

34:                                               ; preds = %23
  %35 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %36 = load i32, i32* @ACPI_BUS_TYPE_SYSTEM, align 4
  %37 = call i32 @acpi_bus_add(i32* @acpi_root, i32* null, i32 %35, i32 %36)
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %57

41:                                               ; preds = %34
  %42 = load i32, i32* @acpi_root, align 4
  %43 = call i32 @acpi_bus_scan_fixed(i32 %42)
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %2, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 @DPRINT1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %41
  %49 = load i32, i32* @acpi_root, align 4
  %50 = call i32 @acpi_bus_scan(i32 %49)
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* %2, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @DPRINT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %48
  %56 = call i32 @return_VALUE(i32 0)
  br label %57

57:                                               ; preds = %55, %40
  %58 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %59 = load i32, i32* @ACPI_SYSTEM_NOTIFY, align 4
  %60 = load i32, i32* @acpi_bus_notify, align 4
  %61 = call i32 @AcpiRemoveNotifyHandler(i32 %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %31, %21, %13
  %63 = call i32 (...) @AcpiTerminate()
  %64 = load i32, i32* @AE_NOT_FOUND, align 4
  %65 = call i32 @return_VALUE(i32 %64)
  %66 = load i32, i32* %1, align 4
  ret i32 %66
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @KeInitializeDpc(i32*, i32, i32*) #1

declare dso_local i32 @AcpiEnableSubsystem(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @AcpiInitializeObjects(i32) #1

declare dso_local i32 @AcpiInstallNotifyHandler(i32, i32, i32, i32*) #1

declare dso_local i32 @acpi_bus_add(i32*, i32*, i32, i32) #1

declare dso_local i32 @acpi_bus_scan_fixed(i32) #1

declare dso_local i32 @acpi_bus_scan(i32) #1

declare dso_local i32 @return_VALUE(i32) #1

declare dso_local i32 @AcpiRemoveNotifyHandler(i32, i32, i32) #1

declare dso_local i32 @AcpiTerminate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
