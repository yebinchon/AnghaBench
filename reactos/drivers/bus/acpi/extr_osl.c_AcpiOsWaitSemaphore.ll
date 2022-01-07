; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/extr_osl.c_AcpiOsWaitSemaphore.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/extr_osl.c_AcpiOsWaitSemaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Bad parameter\0A\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_DO_NOT_WAIT = common dso_local global i64 0, align 8
@AE_TIME = common dso_local global i32 0, align 4
@Executive = common dso_local global i32 0, align 4
@KernelMode = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IO_NO_INCREMENT = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiOsWaitSemaphore(%struct.TYPE_4__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %8, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = call i32 @DPRINT1(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %15, i32* %4, align 4
  br label %78

16:                                               ; preds = %3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = call i32 @KeAcquireSpinLock(i32* %18, i32* %9)
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @ACPI_DO_NOT_WAIT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %16
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @KeReleaseSpinLock(i32* %31, i32 %32)
  %34 = load i32, i32* @AE_TIME, align 4
  store i32 %34, i32* %4, align 4
  br label %78

35:                                               ; preds = %23, %16
  br label %36

36:                                               ; preds = %42, %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @KeReleaseSpinLock(i32* %44, i32 %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* @Executive, align 4
  %50 = load i32, i32* @KernelMode, align 4
  %51 = load i32, i32* @FALSE, align 4
  %52 = call i32 @KeWaitForSingleObject(i32* %48, i32 %49, i32 %50, i32 %51, i32* null)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = call i32 @KeAcquireSpinLock(i32* %54, i32* %9)
  br label %36

56:                                               ; preds = %36
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %56
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32, i32* @IO_NO_INCREMENT, align 4
  %70 = load i32, i32* @FALSE, align 4
  %71 = call i32 @KeSetEvent(i32* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %56
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @KeReleaseSpinLock(i32* %74, i32 %75)
  %77 = load i32, i32* @AE_OK, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %72, %29, %13
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @KeAcquireSpinLock(i32*, i32*) #1

declare dso_local i32 @KeReleaseSpinLock(i32*, i32) #1

declare dso_local i32 @KeWaitForSingleObject(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @KeSetEvent(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
