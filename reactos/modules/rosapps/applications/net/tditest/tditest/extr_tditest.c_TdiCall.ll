; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tditest/tditest/extr_tditest.c_TdiCall.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tditest/tditest/extr_tditest.c_TdiCall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i64 }

@StopEvent = common dso_local global i32 0, align 4
@NotificationEvent = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@STATUS_PENDING = common dso_local global i64 0, align 8
@WaitAny = common dso_local global i32 0, align 4
@Executive = common dso_local global i32 0, align 4
@KernelMode = common dso_local global i32 0, align 4
@MAX_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Cancelled IRP.\0A\00", align 1
@MIN_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Could not cancel IRP.\0A\00", align 1
@STATUS_CANCELLED = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @TdiCall(%struct.TYPE_7__* %0, i32 %1, %struct.TYPE_8__* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32*], align 16
  %12 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 0
  store i32* @StopEvent, i32** %13, align 16
  %14 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 1
  store i32* %10, i32** %14, align 8
  %15 = load i32, i32* @NotificationEvent, align 4
  %16 = load i32, i32* @FALSE, align 4
  %17 = call i32 @KeInitializeEvent(i32* %10, i32 %15, i32 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  store i32* %10, i32** %19, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = call i64 @IoCallDriver(i32 %23, %struct.TYPE_7__* %24)
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @STATUS_PENDING, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %4
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %29
  %33 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 0
  %34 = ptrtoint i32** %33 to i32
  %35 = load i32, i32* @WaitAny, align 4
  %36 = load i32, i32* @Executive, align 4
  %37 = load i32, i32* @KernelMode, align 4
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i64 @KeWaitForMultipleObjects(i32 2, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32* null, i32* null)
  store i64 %39, i64* %12, align 8
  %40 = call i64 @KeReadStateEvent(i32* @StopEvent)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %32
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = call i64 @IoCancelIrp(%struct.TYPE_7__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @MAX_TRACE, align 4
  %48 = call i32 @TDI_DbgPrint(i32 %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @MIN_TRACE, align 4
  %51 = call i32 @TDI_DbgPrint(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i64, i64* @STATUS_CANCELLED, align 8
  store i64 %53, i64* %5, align 8
  br label %73

54:                                               ; preds = %32
  br label %60

55:                                               ; preds = %29
  %56 = load i32, i32* @Executive, align 4
  %57 = load i32, i32* @KernelMode, align 4
  %58 = load i32, i32* @FALSE, align 4
  %59 = call i64 @KeWaitForSingleObject(i32* %10, i32 %56, i32 %57, i32 %58, i32* null)
  store i64 %59, i64* %12, align 8
  br label %60

60:                                               ; preds = %55, %54
  br label %61

61:                                               ; preds = %60, %4
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* @STATUS_SUCCESS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  br label %71

69:                                               ; preds = %61
  %70 = load i64, i64* @STATUS_SUCCESS, align 8
  br label %71

71:                                               ; preds = %69, %65
  %72 = phi i64 [ %68, %65 ], [ %70, %69 ]
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %71, %52
  %74 = load i64, i64* %5, align 8
  ret i64 %74
}

declare dso_local i32 @KeInitializeEvent(i32*, i32, i32) #1

declare dso_local i64 @IoCallDriver(i32, %struct.TYPE_7__*) #1

declare dso_local i64 @KeWaitForMultipleObjects(i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @KeReadStateEvent(i32*) #1

declare dso_local i64 @IoCancelIrp(%struct.TYPE_7__*) #1

declare dso_local i32 @TDI_DbgPrint(i32, i8*) #1

declare dso_local i64 @KeWaitForSingleObject(i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
