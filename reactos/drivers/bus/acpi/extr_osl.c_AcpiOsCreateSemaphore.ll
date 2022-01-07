; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/extr_osl.c_AcpiOsCreateSemaphore.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/extr_osl.c_AcpiOsCreateSemaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Bad parameter\0A\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@NonPagedPool = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@SynchronizationEvent = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiOsCreateSemaphore(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i64*, i64** %7, align 8
  %10 = icmp ne i64* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = call i32 @DPRINT1(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %13, i32* %4, align 4
  br label %41

14:                                               ; preds = %3
  %15 = load i32, i32* @NonPagedPool, align 4
  %16 = call %struct.TYPE_3__* @ExAllocatePoolWithTag(i32 %15, i32 4, i8 signext 65)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %8, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %20, i32* %4, align 4
  br label %41

21:                                               ; preds = %14
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* @SynchronizationEvent, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @KeInitializeEvent(i32* %26, i32 %27, i32 %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = call i32 @KeInitializeSpinLock(i32* %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = ptrtoint %struct.TYPE_3__* %37 to i64
  %39 = load i64*, i64** %7, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i32, i32* @AE_OK, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %21, %19, %11
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local %struct.TYPE_3__* @ExAllocatePoolWithTag(i32, i32, i8 signext) #1

declare dso_local i32 @KeInitializeEvent(i32*, i32, i32) #1

declare dso_local i32 @KeInitializeSpinLock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
