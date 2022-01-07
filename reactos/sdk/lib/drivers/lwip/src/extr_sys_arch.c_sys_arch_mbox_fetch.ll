; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_sys_arch.c_sys_arch_mbox_fetch.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_sys_arch.c_sys_arch_mbox_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32* }

@TerminationEvent = common dso_local global i32 0, align 4
@WaitAny = common dso_local global i32 0, align 4
@Executive = common dso_local global i32 0, align 4
@KernelMode = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@STATUS_WAIT_0 = common dso_local global i64 0, align 8
@LWIP_MESSAGE_CONTAINER = common dso_local global i32 0, align 4
@ListEntry = common dso_local global i32 0, align 4
@STATUS_WAIT_1 = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SYS_ARCH_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sys_arch_mbox_fetch(%struct.TYPE_9__* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca %struct.TYPE_11__, align 4
  %10 = alloca %struct.TYPE_11__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2 x i32*], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = getelementptr inbounds [2 x i32*], [2 x i32*]* %17, i64 0, i64 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  store i32* %20, i32** %18, align 8
  %21 = getelementptr inbounds i32*, i32** %18, i64 1
  store i32* @TerminationEvent, i32** %21, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @Int32x32To64(i64 %22, i32 -10000)
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = call i32 @KeQuerySystemTime(%struct.TYPE_11__* %9)
  %26 = getelementptr inbounds [2 x i32*], [2 x i32*]* %17, i64 0, i64 0
  %27 = load i32, i32* @WaitAny, align 4
  %28 = load i32, i32* @Executive, align 4
  %29 = load i32, i32* @KernelMode, align 4
  %30 = load i32, i32* @FALSE, align 4
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %35

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %34, %33
  %36 = phi %struct.TYPE_11__* [ %8, %33 ], [ null, %34 ]
  %37 = call i64 @KeWaitForMultipleObjects(i32 2, i32** %26, i32 %27, i32 %28, i32 %29, i32 %30, %struct.TYPE_11__* %36, i32* null)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @STATUS_WAIT_0, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %89

41:                                               ; preds = %35
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = call i32 @KeAcquireSpinLock(i32* %43, i32* %16)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = call i32 @RemoveHeadList(i32* %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @ASSERT(i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = call i64 @IsListEmpty(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %41
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = call i32 @KeClearEvent(i32* %56)
  br label %58

58:                                               ; preds = %54, %41
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @KeReleaseSpinLock(i32* %60, i32 %61)
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* @LWIP_MESSAGE_CONTAINER, align 4
  %65 = load i32, i32* @ListEntry, align 4
  %66 = call %struct.TYPE_10__* @CONTAINING_RECORD(i32 %63, i32 %64, i32 %65)
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %14, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %13, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %71 = call i32 @ExFreePool(%struct.TYPE_10__* %70)
  %72 = load i8**, i8*** %6, align 8
  %73 = icmp ne i8** %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %58
  %75 = load i32*, i32** %13, align 8
  %76 = bitcast i32* %75 to i8*
  %77 = load i8**, i8*** %6, align 8
  store i8* %76, i8** %77, align 8
  br label %78

78:                                               ; preds = %74, %58
  %79 = call i32 @KeQuerySystemTime(%struct.TYPE_11__* %10)
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %81, %83
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = sdiv i32 %85, 10000
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %4, align 8
  br label %101

89:                                               ; preds = %35
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* @STATUS_WAIT_1, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i32, i32* @STATUS_SUCCESS, align 4
  %95 = call i32 @PsTerminateSystemThread(i32 %94)
  %96 = load i32, i32* @FALSE, align 4
  %97 = call i32 @ASSERT(i32 %96)
  store i64 0, i64* %4, align 8
  br label %101

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* @SYS_ARCH_TIMEOUT, align 8
  store i64 %100, i64* %4, align 8
  br label %101

101:                                              ; preds = %99, %93, %78
  %102 = load i64, i64* %4, align 8
  ret i64 %102
}

declare dso_local i32 @Int32x32To64(i64, i32) #1

declare dso_local i32 @KeQuerySystemTime(%struct.TYPE_11__*) #1

declare dso_local i64 @KeWaitForMultipleObjects(i32, i32**, i32, i32, i32, i32, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @KeAcquireSpinLock(i32*, i32*) #1

declare dso_local i32 @RemoveHeadList(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @IsListEmpty(i32*) #1

declare dso_local i32 @KeClearEvent(i32*) #1

declare dso_local i32 @KeReleaseSpinLock(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @CONTAINING_RECORD(i32, i32, i32) #1

declare dso_local i32 @ExFreePool(%struct.TYPE_10__*) #1

declare dso_local i32 @PsTerminateSystemThread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
