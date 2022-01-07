; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/tcp/extr_event.c_FlushShutdownQueue.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/tcp/extr_event.c_FlushShutdownQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i64 }

@TDI_BUCKET = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FlushShutdownQueue(%struct.TYPE_10__* %0, i32 %1, i64 %2) #0 {
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
  br i1 %13, label %14, label %37

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
  br i1 %21, label %22, label %36

22:                                               ; preds = %15
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @TDI_BUCKET, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.TYPE_9__* @CONTAINING_RECORD(i32 %23, i32 %24, i32 %25)
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = load i32, i32* @FALSE, align 4
  %35 = call i32 @CompleteBucket(%struct.TYPE_10__* %32, %struct.TYPE_9__* %33, i32 %34)
  br label %15

36:                                               ; preds = %15
  br label %62

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %44, %37
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = call i32 @IsListEmpty(i32* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br i1 %43, label %44, label %61

44:                                               ; preds = %38
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = call i32 @RemoveHeadList(i32* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @TDI_BUCKET, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call %struct.TYPE_9__* @CONTAINING_RECORD(i32 %48, i32 %49, i32 %50)
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %8, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %59 = load i32, i32* @FALSE, align 4
  %60 = call i32 @CompleteBucket(%struct.TYPE_10__* %57, %struct.TYPE_9__* %58, i32 %59)
  br label %38

61:                                               ; preds = %38
  br label %62

62:                                               ; preds = %61, %36
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = call i32 @DereferenceObject(%struct.TYPE_10__* %63)
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @ReferenceObject(%struct.TYPE_10__*) #1

declare dso_local i32 @ExInterlockedRemoveHeadList(i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @CONTAINING_RECORD(i32, i32, i32) #1

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
