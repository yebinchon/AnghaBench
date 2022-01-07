; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/ndis/ndis/extr_miniport.c_MiniIndicateData.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/ndis/ndis/extr_miniport.c_MiniIndicateData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_16__* }
%struct.TYPE_17__ = type { %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (i32, i32, i32, i32, i32, i32, i32)* }

@DEBUG_MINIPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [123 x i8] c"Called. Adapter (0x%X)  HeaderBuffer (0x%X)  HeaderBufferSize (0x%X)  LookaheadBuffer (0x%X)  LookaheadBufferSize (0x%X).\0A\00", align 1
@MAX_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"acquiring miniport block lock\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"CurrentEntry = %x\0A\00", align 1
@MIN_TRACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"WARNING: No upper protocol layer.\0A\00", align 1
@ADAPTER_BINDING = common dso_local global i32 0, align 4
@AdapterListEntry = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"AdapterBinding = %x\0A\00", align 1
@MID_TRACE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"XXX (%x) %x %x %x %x %x %x %x XXX\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Leaving.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MiniIndicateData(%struct.TYPE_15__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* @DEBUG_MINIPORT, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @NDIS_DbgPrint(i32 %19, i8* %26)
  %28 = load i32, i32* @MAX_TRACE, align 4
  %29 = call i32 @NDIS_DbgPrint(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = call i32 @KeAcquireSpinLock(i32* %32, i32* %16)
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  store %struct.TYPE_16__* %37, %struct.TYPE_16__** %17, align 8
  %38 = load i32, i32* @DEBUG_MINIPORT, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %40 = bitcast %struct.TYPE_16__* %39 to i8*
  %41 = call i32 @NDIS_DbgPrint(i32 %38, i8* %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = icmp eq %struct.TYPE_16__* %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %7
  %47 = load i32, i32* @MIN_TRACE, align 4
  %48 = call i32 @NDIS_DbgPrint(i32 %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %7
  br label %50

50:                                               ; preds = %55, %49
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = icmp ne %struct.TYPE_16__* %51, %53
  br i1 %54, label %55, label %104

55:                                               ; preds = %50
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %57 = load i32, i32* @ADAPTER_BINDING, align 4
  %58 = load i32, i32* @AdapterListEntry, align 4
  %59 = call %struct.TYPE_17__* @CONTAINING_RECORD(%struct.TYPE_16__* %56, i32 %57, i32 %58)
  store %struct.TYPE_17__* %59, %struct.TYPE_17__** %18, align 8
  %60 = load i32, i32* @DEBUG_MINIPORT, align 4
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %62 = bitcast %struct.TYPE_17__* %61 to i8*
  %63 = call i32 @NDIS_DbgPrint(i32 %60, i8* %62)
  %64 = load i32, i32* @MID_TRACE, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32 (i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32)** %69, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 @NDIS_DbgPrint(i32 %64, i8* %82)
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32 (i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32)** %88, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %15, align 4
  %100 = call i32 %89(i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99)
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  store %struct.TYPE_16__* %103, %struct.TYPE_16__** %17, align 8
  br label %50

104:                                              ; preds = %50
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @KeReleaseSpinLock(i32* %107, i32 %108)
  %110 = load i32, i32* @MAX_TRACE, align 4
  %111 = call i32 @NDIS_DbgPrint(i32 %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %112 = load i32, i32* %8, align 4
  ret i32 %112
}

declare dso_local i32 @NDIS_DbgPrint(i32, i8*) #1

declare dso_local i32 @KeAcquireSpinLock(i32*, i32*) #1

declare dso_local %struct.TYPE_17__* @CONTAINING_RECORD(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @KeReleaseSpinLock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
