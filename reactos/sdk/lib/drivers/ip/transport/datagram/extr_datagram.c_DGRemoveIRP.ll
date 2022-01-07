; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/datagram/extr_datagram.c_DGRemoveIRP.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/datagram/extr_datagram.c_DGRemoveIRP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@MAX_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Called (Cancel IRP %08x for file %08x).\0A\00", align 1
@DATAGRAM_RECEIVE_REQUEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Request: %08x?\0A\00", align 1
@DATAGRAM_RECV_TAG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DGRemoveIRP(%struct.TYPE_13__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @MAX_TRACE, align 4
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = bitcast %struct.TYPE_13__* %12 to i8*
  %14 = call i32 @TI_DbgPrint(i32 %10, i8* %13)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = call i32 @LockObject(%struct.TYPE_13__* %15, i32* %7)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %5, align 8
  br label %21

21:                                               ; preds = %49, %2
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = icmp ne %struct.TYPE_11__* %22, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %21
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = load i32, i32* @DATAGRAM_RECEIVE_REQUEST, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = call %struct.TYPE_12__* @CONTAINING_RECORD(%struct.TYPE_11__* %27, i32 %28, %struct.TYPE_11__* %29)
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %6, align 8
  %31 = load i32, i32* @MAX_TRACE, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = bitcast %struct.TYPE_12__* %32 to i8*
  %34 = call i32 @TI_DbgPrint(i32 %31, i8* %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %26
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = call i32 @RemoveEntryList(i32* %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %45 = load i32, i32* @DATAGRAM_RECV_TAG, align 4
  %46 = call i32 @ExFreePoolWithTag(%struct.TYPE_12__* %44, i32 %45)
  %47 = load i32, i32* @TRUE, align 4
  store i32 %47, i32* %8, align 4
  br label %53

48:                                               ; preds = %26
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %5, align 8
  br label %21

53:                                               ; preds = %40, %21
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @UnlockObject(%struct.TYPE_13__* %54, i32 %55)
  %57 = load i32, i32* @MAX_TRACE, align 4
  %58 = call i32 @TI_DbgPrint(i32 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @LockObject(%struct.TYPE_13__*, i32*) #1

declare dso_local %struct.TYPE_12__* @CONTAINING_RECORD(%struct.TYPE_11__*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @RemoveEntryList(i32*) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @UnlockObject(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
