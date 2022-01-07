; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_router.c_RouterAddRoute.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_router.c_RouterAddRoute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@DEBUG_ROUTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Called. NetworkAddress (0x%X)  Netmask (0x%X) Router (0x%X)  Metric (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"NetworkAddress (%s)  Netmask (%s)  Router (%s).\0A\00", align 1
@NonPagedPool = common dso_local global i32 0, align 4
@FIB_TAG = common dso_local global i32 0, align 4
@MIN_TRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Insufficient resources.\0A\00", align 1
@FIBListHead = common dso_local global i32 0, align 4
@FIBLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @RouterAddRoute(i32* %0, i32* %1, %struct.TYPE_6__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @DEBUG_ROUTER, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @TI_DbgPrint(i32 %11, i8* %17)
  %19 = load i32, i32* @DEBUG_ROUTER, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @A2S(i32* %20)
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @A2S(i32* %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = call i32 @A2S(i32* %25)
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @TI_DbgPrint(i32 %19, i8* %28)
  %30 = load i32, i32* @NonPagedPool, align 4
  %31 = load i32, i32* @FIB_TAG, align 4
  %32 = call %struct.TYPE_7__* @ExAllocatePoolWithTag(i32 %30, i32 4, i32 %31)
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %10, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* @MIN_TRACE, align 4
  %37 = call i32 @TI_DbgPrint(i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %57

38:                                               ; preds = %4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @RtlCopyMemory(i32* %40, i32* %41, i32 4)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @RtlCopyMemory(i32* %44, i32* %45, i32 4)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = call i32 @TcpipInterlockedInsertTailList(i32* @FIBListHead, i32* %54, i32* @FIBLock)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %5, align 8
  br label %57

57:                                               ; preds = %38, %35
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %58
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @A2S(i32*) #1

declare dso_local %struct.TYPE_7__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i32) #1

declare dso_local i32 @TcpipInterlockedInsertTailList(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
