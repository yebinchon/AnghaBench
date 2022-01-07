; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/tcp/extr_event.c_TCPAcceptEventHandler.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/tcp/extr_event.c_TCPAcceptEventHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_22__*, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_24__*, i64, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_23__ = type { i32 }

@TDI_BUCKET = common dso_local global i32 0, align 4
@DEBUG_TCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"[IP, TCPAcceptEventHandler] Getting the socket\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Socket: Status: %x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@CLOSED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TCPAcceptEventHandler(i8* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_23__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %14, %struct.TYPE_24__** %6, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %16 = call i32 @ReferenceObject(%struct.TYPE_24__* %15)
  br label %17

17:                                               ; preds = %108, %2
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 1
  %22 = call i32 @ExInterlockedRemoveHeadList(i32* %19, i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %109

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @TDI_BUCKET, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.TYPE_21__* @CONTAINING_RECORD(i32 %25, i32 %26, i32 %27)
  store %struct.TYPE_21__* %28, %struct.TYPE_21__** %7, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call %struct.TYPE_23__* @IoGetCurrentIrpStackLocation(i32 %33)
  store %struct.TYPE_23__* %34, %struct.TYPE_23__** %12, align 8
  %35 = load i32, i32* @DEBUG_TCP, align 4
  %36 = call i32 @TI_DbgPrint(i32 %35, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  %40 = ptrtoint i32* %39 to i32
  %41 = call i32 @TCPCheckPeerForAccept(%struct.TYPE_22__* %37, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* @DEBUG_TCP, align 4
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @TI_DbgPrint(i32 %42, i8* %45)
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @STATUS_SUCCESS, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %95

55:                                               ; preds = %24
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %57, align 8
  %59 = call i32 @LockObject(%struct.TYPE_24__* %58, i32* %11)
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CLOSED, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @ASSERT(i32 %69)
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %72, align 8
  %74 = load i32, i32* @TRUE, align 4
  %75 = load i32, i32* @FALSE, align 4
  %76 = call i32 @LibTCPClose(%struct.TYPE_24__* %73, i32 %74, i32 %75)
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 0
  store %struct.TYPE_22__* %77, %struct.TYPE_22__** %81, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %84, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %87, align 8
  %89 = call i32 @LibTCPAccept(%struct.TYPE_22__* %82, %struct.TYPE_22__* %85, %struct.TYPE_24__* %88)
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @UnlockObject(%struct.TYPE_24__* %92, i32 %93)
  br label %95

95:                                               ; preds = %55, %24
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %97, align 8
  %99 = call i32 @DereferenceObject(%struct.TYPE_24__* %98)
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %102 = load i32, i32* @FALSE, align 4
  %103 = call i32 @CompleteBucket(%struct.TYPE_24__* %100, %struct.TYPE_21__* %101, i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @STATUS_SUCCESS, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %95
  br label %109

108:                                              ; preds = %95
  br label %17

109:                                              ; preds = %107, %17
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %111 = call i32 @DereferenceObject(%struct.TYPE_24__* %110)
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @ReferenceObject(%struct.TYPE_24__*) #1

declare dso_local i32 @ExInterlockedRemoveHeadList(i32*, i32*) #1

declare dso_local %struct.TYPE_21__* @CONTAINING_RECORD(i32, i32, i32) #1

declare dso_local %struct.TYPE_23__* @IoGetCurrentIrpStackLocation(i32) #1

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @TCPCheckPeerForAccept(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @LockObject(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @LibTCPClose(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @LibTCPAccept(%struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_24__*) #1

declare dso_local i32 @UnlockObject(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @DereferenceObject(%struct.TYPE_24__*) #1

declare dso_local i32 @CompleteBucket(%struct.TYPE_24__*, %struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
