; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/tcp/extr_event.c_TCPRecvEventHandler.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/tcp/extr_event.c_TCPRecvEventHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i64, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@TDI_BUCKET = common dso_local global i32 0, align 4
@STATUS_PENDING = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TCPRecvEventHandler(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %4, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = call i32 @ReferenceObject(%struct.TYPE_14__* %15)
  br label %17

17:                                               ; preds = %53, %1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = call i32 @ExInterlockedRemoveHeadList(i32* %19, i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @TDI_BUCKET, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.TYPE_12__* @CONTAINING_RECORD(i32 %25, i32 %26, i32 %27)
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %5, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %7, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @NdisQueryBuffer(i32 %36, i32* %11, i32* %10)
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @LibTCPGetDataFromConnectionQueue(%struct.TYPE_14__* %38, i32 %39, i32 %40, i32* %9)
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* @STATUS_PENDING, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %24
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = call i32 @ExInterlockedInsertHeadList(i32* %47, i32* %49, i32* %51)
  br label %64

53:                                               ; preds = %24
  %54 = load i64, i64* %12, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = load i32, i32* @FALSE, align 4
  %63 = call i32 @CompleteBucket(%struct.TYPE_14__* %60, %struct.TYPE_12__* %61, i32 %62)
  br label %17

64:                                               ; preds = %45, %17
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %66 = call i32 @DereferenceObject(%struct.TYPE_14__* %65)
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @ReferenceObject(%struct.TYPE_14__*) #1

declare dso_local i32 @ExInterlockedRemoveHeadList(i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @CONTAINING_RECORD(i32, i32, i32) #1

declare dso_local i32 @NdisQueryBuffer(i32, i32*, i32*) #1

declare dso_local i64 @LibTCPGetDataFromConnectionQueue(%struct.TYPE_14__*, i32, i32, i32*) #1

declare dso_local i32 @ExInterlockedInsertHeadList(i32*, i32*, i32*) #1

declare dso_local i32 @CompleteBucket(%struct.TYPE_14__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @DereferenceObject(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
