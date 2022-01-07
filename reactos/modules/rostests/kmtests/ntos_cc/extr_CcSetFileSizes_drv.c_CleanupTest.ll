; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/kmtests/ntos_cc/extr_CcSetFileSizes_drv.c_CleanupTest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/kmtests/ntos_cc/extr_CcSetFileSizes_drv.c_CleanupTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32* }
%struct.TYPE_7__ = type { i32 }

@TestDeviceObject = common dso_local global i32* null, align 8
@TestTestId = common dso_local global i32 0, align 4
@TestFileObject = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"No test FO\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@TestUncaching = common dso_local global i32 0, align 4
@NotificationEvent = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@Executive = common dso_local global i32 0, align 4
@KernelMode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @CleanupTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CleanupTest(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = call i32 @RTL_CONSTANT_LARGE_INTEGER(i64 0)
  store i32 %8, i32* %6, align 4
  %9 = load i32*, i32** @TestDeviceObject, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @ok_eq_pointer(i32* %9, i32 %10)
  %12 = load i32, i32* @TestTestId, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ok_eq_ulong(i32 %12, i32 %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TestFileObject, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @skip(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %55, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TestFileObject, align 8
  %22 = call i64 @CcIsFileCached(%struct.TYPE_8__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* @TestUncaching, align 4
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %27 = load i32, i32* @NotificationEvent, align 4
  %28 = load i32, i32* @FALSE, align 4
  %29 = call i32 @KeInitializeEvent(i32* %26, i32 %27, i32 %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TestFileObject, align 8
  %31 = call i32 @CcUninitializeCacheMap(%struct.TYPE_8__* %30, i32* %6, %struct.TYPE_7__* %7)
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %33 = load i32, i32* @Executive, align 4
  %34 = load i32, i32* @KernelMode, align 4
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i32 @KeWaitForSingleObject(i32* %32, i32 %33, i32 %34, i32 %35, i32* null)
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* @TestUncaching, align 4
  br label %38

38:                                               ; preds = %24, %20
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TestFileObject, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TestFileObject, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @ExFreePool(i32* %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TestFileObject, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TestFileObject, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %43, %38
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TestFileObject, align 8
  %54 = call i32 @ObDereferenceObject(%struct.TYPE_8__* %53)
  br label %55

55:                                               ; preds = %52, %2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** @TestFileObject, align 8
  store i32* null, i32** @TestDeviceObject, align 8
  store i32 -1, i32* @TestTestId, align 4
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @RTL_CONSTANT_LARGE_INTEGER(i64) #1

declare dso_local i32 @ok_eq_pointer(i32*, i32) #1

declare dso_local i32 @ok_eq_ulong(i32, i32) #1

declare dso_local i32 @skip(i32, i8*) #1

declare dso_local i64 @CcIsFileCached(%struct.TYPE_8__*) #1

declare dso_local i32 @KeInitializeEvent(i32*, i32, i32) #1

declare dso_local i32 @CcUninitializeCacheMap(%struct.TYPE_8__*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @KeWaitForSingleObject(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @ExFreePool(i32*) #1

declare dso_local i32 @ObDereferenceObject(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
