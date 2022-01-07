; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_dispatch.c_DispPrepareIrpForCancel.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_dispatch.c_DispPrepareIrpForCancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@DEBUG_IRP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Called.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Leaving (IRP at 0x%X can now be cancelled).\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_CANCELLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Leaving (IRP was already cancelled).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DispPrepareIrpForCancel(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @DEBUG_IRP, align 4
  %12 = call i32 @TI_DbgPrint(i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %14 = call %struct.TYPE_15__* @IoGetCurrentIrpStackLocation(%struct.TYPE_14__* %13)
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %9, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %10, align 8
  %21 = call i32 @IoAcquireCancelSpinLock(i32* %8)
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %3
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @IoSetCancelRoutine(%struct.TYPE_14__* %32, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @IoReleaseCancelSpinLock(i32 %35)
  %37 = load i32, i32* @DEBUG_IRP, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = bitcast %struct.TYPE_14__* %38 to i8*
  %40 = call i32 @TI_DbgPrint(i32 %37, i8* %39)
  %41 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %41, i32* %4, align 4
  br label %58

42:                                               ; preds = %26, %3
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @IoReleaseCancelSpinLock(i32 %43)
  %45 = load i32, i32* @STATUS_CANCELLED, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @DEBUG_IRP, align 4
  %53 = call i32 @TI_DbgPrint(i32 %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %42, %31
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local %struct.TYPE_15__* @IoGetCurrentIrpStackLocation(%struct.TYPE_14__*) #1

declare dso_local i32 @IoAcquireCancelSpinLock(i32*) #1

declare dso_local i32 @IoSetCancelRoutine(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @IoReleaseCancelSpinLock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
