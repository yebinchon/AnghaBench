; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_router.c_RouterRemoveRoute.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_router.c_RouterRemoveRoute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@DEBUG_ROUTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Called\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Deleting Route From: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"                 To: %s\0A\00", align 1
@FIBLock = common dso_local global i32 0, align 4
@FIBListHead = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@FIB_ENTRY = common dso_local global i32 0, align 4
@ListEntry = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"Deleting route\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Leaving\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RouterRemoveRoute(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %9, align 8
  %12 = load i32, i32* @DEBUG_ROUTER, align 4
  %13 = call i32 @TI_DbgPrint(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @DEBUG_ROUTER, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @A2S(i32 %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @TI_DbgPrint(i32 %14, i8* %18)
  %20 = load i32, i32* @DEBUG_ROUTER, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @A2S(i32 %21)
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @TI_DbgPrint(i32 %20, i8* %24)
  %26 = call i32 @TcpipAcquireSpinLock(i32* @FIBLock, i32* %5)
  %27 = call i32 (...) @RouterDumpRoutes()
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @FIBListHead, i32 0, i32 0), align 8
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %6, align 8
  br label %29

29:                                               ; preds = %56, %2
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = icmp ne %struct.TYPE_9__* %30, @FIBListHead
  br i1 %31, label %32, label %58

32:                                               ; preds = %29
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %7, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = load i32, i32* @FIB_ENTRY, align 4
  %38 = load i32, i32* @ListEntry, align 4
  %39 = call %struct.TYPE_10__* @CONTAINING_RECORD(%struct.TYPE_9__* %36, i32 %37, i32 %38)
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %8, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %10, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %3, align 4
  %46 = call i64 @AddrIsEqual(i32* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %32
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %4, align 4
  %52 = call i64 @AddrIsEqual(i32* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i64, i64* @TRUE, align 8
  store i64 %55, i64* %9, align 8
  br label %58

56:                                               ; preds = %48, %32
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %6, align 8
  br label %29

58:                                               ; preds = %54, %29
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* @DEBUG_ROUTER, align 4
  %63 = call i32 @TI_DbgPrint(i32 %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = call i32 @DestroyFIBE(%struct.TYPE_10__* %64)
  br label %66

66:                                               ; preds = %61, %58
  %67 = call i32 (...) @RouterDumpRoutes()
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @TcpipReleaseSpinLock(i32* @FIBLock, i32 %68)
  %70 = load i32, i32* @DEBUG_ROUTER, align 4
  %71 = call i32 @TI_DbgPrint(i32 %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i64, i64* %9, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @STATUS_SUCCESS, align 4
  br label %78

76:                                               ; preds = %66
  %77 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  ret i32 %79
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @A2S(i32) #1

declare dso_local i32 @TcpipAcquireSpinLock(i32*, i32*) #1

declare dso_local i32 @RouterDumpRoutes(...) #1

declare dso_local %struct.TYPE_10__* @CONTAINING_RECORD(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @AddrIsEqual(i32*, i32) #1

declare dso_local i32 @DestroyFIBE(%struct.TYPE_10__*) #1

declare dso_local i32 @TcpipReleaseSpinLock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
