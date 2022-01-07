; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/executer/extr_exmutex.c_AcpiExReleaseMutexObject.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/executer/extr_exmutex.c_AcpiExReleaseMutexObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32, i32* }

@AE_OK = common dso_local global i32 0, align 4
@ExReleaseMutexObject = common dso_local global i32 0, align 4
@AE_NOT_ACQUIRED = common dso_local global i32 0, align 4
@AcpiGbl_GlobalLockMutex = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiExReleaseMutexObject(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load i32, i32* @AE_OK, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @ExReleaseMutexObject, align 4
  %7 = call i32 @ACPI_FUNCTION_TRACE(i32 %6)
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @AE_NOT_ACQUIRED, align 4
  %15 = call i32 @return_ACPI_STATUS(i32 %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load i32, i32* @AE_OK, align 4
  %29 = call i32 @return_ACPI_STATUS(i32 %28)
  br label %30

30:                                               ; preds = %27, %16
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = call i32 @AcpiExUnlinkMutex(%struct.TYPE_7__* %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AcpiGbl_GlobalLockMutex, align 8
  %45 = icmp eq %struct.TYPE_7__* %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 (...) @AcpiEvReleaseGlobalLock()
  store i32 %47, i32* %4, align 4
  br label %54

48:                                               ; preds = %42
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @AcpiOsReleaseMutex(i32 %52)
  br label %54

54:                                               ; preds = %48, %46
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @return_ACPI_STATUS(i32 %58)
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiExUnlinkMutex(%struct.TYPE_7__*) #1

declare dso_local i32 @AcpiEvReleaseGlobalLock(...) #1

declare dso_local i32 @AcpiOsReleaseMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
