; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_router.c_RouterCreateRoute.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_router.c_RouterCreateRoute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@FIBLock = common dso_local global i32 0, align 4
@FIBListHead = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@FIB_ENTRY = common dso_local global i32 0, align 4
@ListEntry = common dso_local global i32 0, align 4
@DEBUG_ROUTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Attempting to add duplicate route to %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @RouterCreateRoute(i32 %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = call i32 @TcpipAcquireSpinLock(i32* @FIBLock, i32* %12)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @FIBListHead, i32 0, i32 0), align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %13, align 8
  br label %19

19:                                               ; preds = %59, %5
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %21 = icmp ne %struct.TYPE_12__* %20, @FIBListHead
  br i1 %21, label %22, label %61

22:                                               ; preds = %19
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %14, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %27 = load i32, i32* @FIB_ENTRY, align 4
  %28 = load i32, i32* @ListEntry, align 4
  %29 = call %struct.TYPE_13__* @CONTAINING_RECORD(%struct.TYPE_12__* %26, i32 %27, i32 %28)
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %15, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %16, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = call i64 @AddrIsEqual(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %22
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = call i64 @AddrIsEqual(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load i32, i32* @DEBUG_ROUTER, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @A2S(i32 %52)
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 @TI_DbgPrint(i32 %51, i8* %55)
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @TcpipReleaseSpinLock(i32* @FIBLock, i32 %57)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  br label %77

59:                                               ; preds = %44, %38, %22
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %13, align 8
  br label %19

61:                                               ; preds = %19
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @TcpipReleaseSpinLock(i32* @FIBLock, i32 %62)
  %64 = load i64, i64* %10, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @TRUE, align 4
  %67 = call %struct.TYPE_11__* @NBFindOrCreateNeighbor(i64 %64, i32 %65, i32 %66)
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %16, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %69 = icmp ne %struct.TYPE_11__* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  br label %77

71:                                               ; preds = %61
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call %struct.TYPE_13__* @RouterAddRoute(i32 %72, i32 %73, %struct.TYPE_11__* %74, i32 %75)
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %6, align 8
  br label %77

77:                                               ; preds = %71, %70, %50
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  ret %struct.TYPE_13__* %78
}

declare dso_local i32 @TcpipAcquireSpinLock(i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @CONTAINING_RECORD(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @AddrIsEqual(i32, i32*) #1

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @A2S(i32) #1

declare dso_local i32 @TcpipReleaseSpinLock(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @NBFindOrCreateNeighbor(i64, i32, i32) #1

declare dso_local %struct.TYPE_13__* @RouterAddRoute(i32, i32, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
