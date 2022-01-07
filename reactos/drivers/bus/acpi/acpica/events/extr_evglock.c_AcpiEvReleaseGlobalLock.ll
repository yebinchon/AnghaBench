; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evglock.c_AcpiEvReleaseGlobalLock.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evglock.c_AcpiEvReleaseGlobalLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@AE_OK = common dso_local global i32 0, align 4
@EvReleaseGlobalLock = common dso_local global i32 0, align 4
@AcpiGbl_GlobalLockAcquired = common dso_local global i8* null, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Cannot release the ACPI Global Lock, it has not been acquired\00", align 1
@AE_NOT_ACQUIRED = common dso_local global i32 0, align 4
@AcpiGbl_GlobalLockPresent = common dso_local global i64 0, align 8
@AcpiGbl_FACS = common dso_local global i32 0, align 4
@ACPI_BITREG_GLOBAL_LOCK_RELEASE = common dso_local global i32 0, align 4
@ACPI_ENABLE_EVENT = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Released hardware Global Lock\0A\00", align 1
@AcpiGbl_GlobalLockMutex = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiEvReleaseGlobalLock() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load i8*, i8** @FALSE, align 8
  store i8* %4, i8** %2, align 8
  %5 = load i32, i32* @AE_OK, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @EvReleaseGlobalLock, align 4
  %7 = call i32 @ACPI_FUNCTION_TRACE(i32 %6)
  %8 = load i8*, i8** @AcpiGbl_GlobalLockAcquired, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @AE_INFO, align 4
  %12 = call i32 @ACPI_WARNING(i32 ptrtoint ([62 x i8]* @.str to i32))
  %13 = load i32, i32* @AE_NOT_ACQUIRED, align 4
  %14 = call i32 @return_ACPI_STATUS(i32 %13)
  br label %15

15:                                               ; preds = %10, %0
  %16 = load i64, i64* @AcpiGbl_GlobalLockPresent, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load i32, i32* @AcpiGbl_FACS, align 4
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @ACPI_RELEASE_GLOBAL_LOCK(i32 %19, i8* %20)
  %22 = load i8*, i8** %2, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @ACPI_BITREG_GLOBAL_LOCK_RELEASE, align 4
  %26 = load i32, i32* @ACPI_ENABLE_EVENT, align 4
  %27 = call i32 @AcpiWriteBitRegister(i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %18
  %29 = load i32, i32* @ACPI_DB_EXEC, align 4
  %30 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([31 x i8]* @.str.1 to i32))
  br label %31

31:                                               ; preds = %28, %15
  %32 = load i8*, i8** @FALSE, align 8
  store i8* %32, i8** @AcpiGbl_GlobalLockAcquired, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiGbl_GlobalLockMutex, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @AcpiOsReleaseMutex(i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @return_ACPI_STATUS(i32 %38)
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_WARNING(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_RELEASE_GLOBAL_LOCK(i32, i8*) #1

declare dso_local i32 @AcpiWriteBitRegister(i32, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AcpiOsReleaseMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
