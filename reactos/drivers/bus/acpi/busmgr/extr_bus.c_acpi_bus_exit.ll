; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_bus.c_acpi_bus_exit.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_bus.c_acpi_bus_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"acpi_bus_exit\0A\00", align 1
@ACPI_ROOT_OBJECT = common dso_local global i32 0, align 4
@ACPI_SYSTEM_NOTIFY = common dso_local global i32 0, align 4
@acpi_bus_notify = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Error removing notify handler\0A\00", align 1
@acpi_root = common dso_local global i32 0, align 4
@ACPI_BUS_REMOVAL_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Unable to terminate the ACPI Interpreter\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Interpreter disabled\0A\00", align 1
@return_VOID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @acpi_bus_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_bus_exit() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @AE_OK, align 4
  store i32 %2, i32* %1, align 4
  %3 = call i32 @DPRINT1(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %5 = load i32, i32* @ACPI_SYSTEM_NOTIFY, align 4
  %6 = load i32, i32* @acpi_bus_notify, align 4
  %7 = call i32 @AcpiRemoveNotifyHandler(i32 %4, i32 %5, i32 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i64 @ACPI_FAILURE(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @DPRINT1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %0
  %14 = call i32 (...) @acpi_system_exit()
  %15 = load i32, i32* @acpi_root, align 4
  %16 = load i32, i32* @ACPI_BUS_REMOVAL_NORMAL, align 4
  %17 = call i32 @acpi_bus_remove(i32 %15, i32 %16)
  %18 = call i32 (...) @AcpiTerminate()
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = call i64 @ACPI_FAILURE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = call i32 @DPRINT1(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %26

24:                                               ; preds = %13
  %25 = call i32 @DPRINT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @AcpiRemoveNotifyHandler(i32, i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_system_exit(...) #1

declare dso_local i32 @acpi_bus_remove(i32, i32) #1

declare dso_local i32 @AcpiTerminate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
