; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_sys_arch.c_sys_arch_sem_wait.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_sys_arch.c_sys_arch_sem_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@TerminationEvent = common dso_local global i32 0, align 4
@WaitAny = common dso_local global i32 0, align 4
@Executive = common dso_local global i32 0, align 4
@KernelMode = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@STATUS_WAIT_0 = common dso_local global i64 0, align 8
@STATUS_WAIT_1 = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SYS_ARCH_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sys_arch_sem_wait(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [2 x i32*], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32* %14, i32** %12, align 8
  %15 = getelementptr inbounds i32*, i32** %12, i64 1
  store i32* @TerminationEvent, i32** %15, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @Int32x32To64(i64 %16, i32 -10000)
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = call i32 @KeQuerySystemTime(%struct.TYPE_7__* %7)
  %20 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 0
  %21 = load i32, i32* @WaitAny, align 4
  %22 = load i32, i32* @Executive, align 4
  %23 = load i32, i32* @KernelMode, align 4
  %24 = load i32, i32* @FALSE, align 4
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %29

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %28, %27
  %30 = phi %struct.TYPE_7__* [ %6, %27 ], [ null, %28 ]
  %31 = call i64 @KeWaitForMultipleObjects(i32 2, i32** %20, i32 %21, i32 %22, i32 %23, i32 %24, %struct.TYPE_7__* %30, i32* null)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @STATUS_WAIT_0, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = call i32 @KeQuerySystemTime(%struct.TYPE_7__* %8)
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %38, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sdiv i32 %42, 10000
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %3, align 8
  br label %58

46:                                               ; preds = %29
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @STATUS_WAIT_1, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* @STATUS_SUCCESS, align 4
  %52 = call i32 @PsTerminateSystemThread(i32 %51)
  %53 = load i32, i32* @FALSE, align 4
  %54 = call i32 @ASSERT(i32 %53)
  store i64 0, i64* %3, align 8
  br label %58

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* @SYS_ARCH_TIMEOUT, align 8
  store i64 %57, i64* %3, align 8
  br label %58

58:                                               ; preds = %56, %50, %35
  %59 = load i64, i64* %3, align 8
  ret i64 %59
}

declare dso_local i32 @Int32x32To64(i64, i32) #1

declare dso_local i32 @KeQuerySystemTime(%struct.TYPE_7__*) #1

declare dso_local i64 @KeWaitForMultipleObjects(i32, i32**, i32, i32, i32, i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @PsTerminateSystemThread(i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
