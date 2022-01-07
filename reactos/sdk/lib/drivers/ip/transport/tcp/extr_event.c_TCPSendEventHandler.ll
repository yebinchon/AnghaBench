; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/tcp/extr_event.c_TCPSendEventHandler.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/tcp/extr_event.c_TCPSendEventHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@TDI_BUCKET = common dso_local global i32 0, align 4
@DEBUG_TCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Getting the user buffer from %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Writing %d bytes to %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Connection: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Connection->SocketContext: %x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"TCP Bytes: %d\0A\00", align 1
@STATUS_PENDING = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"Completing Send request: %x %x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TCPSendEventHandler(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %6, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = call i32 @ReferenceObject(%struct.TYPE_15__* %17)
  br label %19

19:                                               ; preds = %110, %2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  %24 = call i32 @ExInterlockedRemoveHeadList(i32* %21, i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %111

26:                                               ; preds = %19
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @TDI_BUCKET, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.TYPE_13__* @CONTAINING_RECORD(i32 %27, i32 %28, i32 %29)
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %7, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %9, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* @DEBUG_TCP, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @TI_DbgPrint(i32 %38, i8* %41)
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @NdisQueryBuffer(i32 %43, i32* %14, i32* %13)
  %45 = load i32, i32* @DEBUG_TCP, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @TI_DbgPrint(i32 %45, i8* %49)
  %51 = load i32, i32* @DEBUG_TCP, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %53 = bitcast %struct.TYPE_15__* %52 to i8*
  %54 = call i32 @TI_DbgPrint(i32 %51, i8* %53)
  %55 = load i32, i32* @DEBUG_TCP, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @TI_DbgPrint(i32 %55, i8* %60)
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @TRUE, align 4
  %66 = call i32 @LibTCPSend(%struct.TYPE_15__* %62, i32 %63, i32 %64, i32* %12, i32 %65)
  %67 = call i64 @TCPTranslateError(i32 %66)
  store i64 %67, i64* %10, align 8
  %68 = load i32, i32* @DEBUG_TCP, align 4
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @TI_DbgPrint(i32 %68, i8* %71)
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* @STATUS_PENDING, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %26
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 2
  %83 = call i32 @ExInterlockedInsertHeadList(i32* %78, i32* %80, i32* %82)
  br label %111

84:                                               ; preds = %26
  %85 = load i32, i32* @DEBUG_TCP, align 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load i64, i64* %10, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = call i32 @TI_DbgPrint(i32 %85, i8* %89)
  %91 = load i64, i64* %10, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @STATUS_SUCCESS, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %84
  %100 = load i32, i32* %12, align 4
  br label %102

101:                                              ; preds = %84
  br label %102

102:                                              ; preds = %101, %99
  %103 = phi i32 [ %100, %99 ], [ 0, %101 ]
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %108 = load i32, i32* @FALSE, align 4
  %109 = call i32 @CompleteBucket(%struct.TYPE_15__* %106, %struct.TYPE_13__* %107, i32 %108)
  br label %110

110:                                              ; preds = %102
  br label %19

111:                                              ; preds = %76, %19
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = call i64 @IsListEmpty(i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %111
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %118 = load i64, i64* @STATUS_SUCCESS, align 8
  %119 = load i32, i32* @FALSE, align 4
  %120 = call i32 @FlushShutdownQueue(%struct.TYPE_15__* %117, i64 %118, i32 %119)
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = call i64 @KeCancelTimer(i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %116
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %127 = call i32 @DereferenceObject(%struct.TYPE_15__* %126)
  br label %128

128:                                              ; preds = %125, %116
  br label %129

129:                                              ; preds = %128, %111
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %131 = call i32 @DereferenceObject(%struct.TYPE_15__* %130)
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @ReferenceObject(%struct.TYPE_15__*) #1

declare dso_local i32 @ExInterlockedRemoveHeadList(i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @CONTAINING_RECORD(i32, i32, i32) #1

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @NdisQueryBuffer(i32, i32*, i32*) #1

declare dso_local i64 @TCPTranslateError(i32) #1

declare dso_local i32 @LibTCPSend(%struct.TYPE_15__*, i32, i32, i32*, i32) #1

declare dso_local i32 @ExInterlockedInsertHeadList(i32*, i32*, i32*) #1

declare dso_local i32 @CompleteBucket(%struct.TYPE_15__*, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @IsListEmpty(i32*) #1

declare dso_local i32 @FlushShutdownQueue(%struct.TYPE_15__*, i64, i32) #1

declare dso_local i64 @KeCancelTimer(i32*) #1

declare dso_local i32 @DereferenceObject(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
