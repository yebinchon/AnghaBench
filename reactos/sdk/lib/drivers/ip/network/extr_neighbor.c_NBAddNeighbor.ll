; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_neighbor.c_NBAddNeighbor.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_neighbor.c_NBAddNeighbor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, i32, i64, i8*, i32, i64, i8*, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }

@DEBUG_NCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [100 x i8] c"Called. Interface (0x%X)  Address (0x%X)  LinkAddress (0x%X)  LinkAddressLength (%d)  State (0x%X)\0A\00", align 1
@NonPagedPool = common dso_local global i32 0, align 4
@NCE_TAG = common dso_local global i32 0, align 4
@MIN_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Insufficient resources.\0A\00", align 1
@MID_TRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"NCE: %x\0A\00", align 1
@NB_HASHMASK = common dso_local global i32 0, align 4
@NeighborCache = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @NBAddNeighbor(i32 %0, %struct.TYPE_8__* %1, i64 %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %17 = load i32, i32* @DEBUG_NCACHE, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @TI_DbgPrint(i32 %17, i8* %24)
  %26 = load i32, i32* @NonPagedPool, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = getelementptr i8, i8* %27, i64 4
  %29 = ptrtoint i8* %28 to i32
  %30 = load i32, i32* @NCE_TAG, align 4
  %31 = call %struct.TYPE_7__* @ExAllocatePoolWithTag(i32 %26, i32 %29, i32 %30)
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %14, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %33 = icmp eq %struct.TYPE_7__* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %6
  %35 = load i32, i32* @MIN_TRACE, align 4
  %36 = call i32 @TI_DbgPrint(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  br label %131

37:                                               ; preds = %6
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 8
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 7
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = bitcast %struct.TYPE_8__* %42 to i8*
  %45 = bitcast %struct.TYPE_8__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 4 %45, i64 4, i1 false)
  %46 = load i8*, i8** %11, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 6
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 1
  %51 = ptrtoint %struct.TYPE_7__* %50 to i64
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 5
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %37
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @RtlCopyMemory(i64 %59, i64 %60, i8* %61)
  br label %69

63:                                               ; preds = %37
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @memset(i64 %66, i32 255, i8* %67)
  br label %69

69:                                               ; preds = %63, %56
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = call i32 @InitializeListHead(i32* %79)
  %81 = load i32, i32* @MID_TRACE, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %83 = bitcast %struct.TYPE_7__* %82 to i8*
  %84 = call i32 @TI_DbgPrint(i32 %81, i8* %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = ashr i32 %88, 16
  %90 = load i32, i32* %15, align 4
  %91 = xor i32 %90, %89
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = ashr i32 %92, 8
  %94 = load i32, i32* %15, align 4
  %95 = xor i32 %94, %93
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = ashr i32 %96, 4
  %98 = load i32, i32* %15, align 4
  %99 = xor i32 %98, %97
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* @NB_HASHMASK, align 4
  %101 = load i32, i32* %15, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %15, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** @NeighborCache, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = call i32 @TcpipAcquireSpinLock(i32* %107, i32* %16)
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** @NeighborCache, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store %struct.TYPE_7__* %114, %struct.TYPE_7__** %116, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** @NeighborCache, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  store %struct.TYPE_7__* %117, %struct.TYPE_7__** %122, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** @NeighborCache, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @TcpipReleaseSpinLock(i32* %127, i32 %128)
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %130, %struct.TYPE_7__** %7, align 8
  br label %131

131:                                              ; preds = %69, %34
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  ret %struct.TYPE_7__* %132
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @ExAllocatePoolWithTag(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @RtlCopyMemory(i64, i64, i8*) #1

declare dso_local i32 @memset(i64, i32, i8*) #1

declare dso_local i32 @InitializeListHead(i32*) #1

declare dso_local i32 @TcpipAcquireSpinLock(i32*, i32*) #1

declare dso_local i32 @TcpipReleaseSpinLock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
