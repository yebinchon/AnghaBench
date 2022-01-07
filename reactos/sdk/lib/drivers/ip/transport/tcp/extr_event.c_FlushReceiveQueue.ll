; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/tcp/extr_event.c_FlushReceiveQueue.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/tcp/extr_event.c_FlushReceiveQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i64, i32 }

@TDI_BUCKET = common dso_local global i32 0, align 4
@DEBUG_TCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Completing Receive request: %x %x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FlushReceiveQueue(%struct.TYPE_10__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = call i32 @ReferenceObject(%struct.TYPE_10__* %10)
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %22, %14
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = call i32 @ExInterlockedRemoveHeadList(i32* %17, i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %15
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @TDI_BUCKET, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.TYPE_9__* @CONTAINING_RECORD(i32 %23, i32 %24, i32 %25)
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %8, align 8
  %27 = load i32, i32* @DEBUG_TCP, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @TI_DbgPrint(i32 %27, i8* %33)
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = load i32, i32* @FALSE, align 4
  %43 = call i32 @CompleteBucket(%struct.TYPE_10__* %40, %struct.TYPE_9__* %41, i32 %42)
  br label %15

44:                                               ; preds = %15
  br label %70

45:                                               ; preds = %3
  br label %46

46:                                               ; preds = %52, %45
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = call i32 @IsListEmpty(i32* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br i1 %51, label %52, label %69

52:                                               ; preds = %46
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = call i32 @RemoveHeadList(i32* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @TDI_BUCKET, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call %struct.TYPE_9__* @CONTAINING_RECORD(i32 %56, i32 %57, i32 %58)
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %8, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = load i32, i32* @FALSE, align 4
  %68 = call i32 @CompleteBucket(%struct.TYPE_10__* %65, %struct.TYPE_9__* %66, i32 %67)
  br label %46

69:                                               ; preds = %46
  br label %70

70:                                               ; preds = %69, %44
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = call i32 @DereferenceObject(%struct.TYPE_10__* %71)
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @ReferenceObject(%struct.TYPE_10__*) #1

declare dso_local i32 @ExInterlockedRemoveHeadList(i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @CONTAINING_RECORD(i32, i32, i32) #1

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @CompleteBucket(%struct.TYPE_10__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @IsListEmpty(i32*) #1

declare dso_local i32 @RemoveHeadList(i32*) #1

declare dso_local i32 @DereferenceObject(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
