; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_router.c_RouterGetRoute.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_router.c_RouterGetRoute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__* }

@DEBUG_ROUTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Called. Destination (0x%X)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Destination (%s)\0A\00", align 1
@FIBLock = common dso_local global i32 0, align 4
@FIBListHead = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@FIB_ENTRY = common dso_local global i32 0, align 4
@ListEntry = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"This-Route: %s (Sharing %d bits)\0A\00", align 1
@NUD_STALE = common dso_local global i32 0, align 4
@NUD_INCOMPLETE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Route selected\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Routing to %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Packet won't be routed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @RouterGetRoute(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %9, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  %13 = load i32, i32* @DEBUG_ROUTER, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = bitcast i32* %14 to i8*
  %16 = call i32 @TI_DbgPrint(i32 %13, i8* %15)
  %17 = load i32, i32* @DEBUG_ROUTER, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @A2S(i32* %18)
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @TI_DbgPrint(i32 %17, i8* %21)
  %23 = call i32 @TcpipAcquireSpinLock(i32* @FIBLock, i32* %3)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @FIBListHead, i32 0, i32 0), align 8
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %4, align 8
  br label %25

25:                                               ; preds = %84, %1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = icmp ne %struct.TYPE_9__* %26, @FIBListHead
  br i1 %27, label %28, label %86

28:                                               ; preds = %25
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %5, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = load i32, i32* @FIB_ENTRY, align 4
  %34 = load i32, i32* @ListEntry, align 4
  %35 = call %struct.TYPE_10__* @CONTAINING_RECORD(%struct.TYPE_9__* %32, i32 %33, i32 %34)
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %6, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %11, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  %42 = load i32*, i32** %2, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = call i64 @CommonPrefixLength(i32* %42, i32* %44)
  store i64 %45, i64* %8, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = call i64 @AddrCountPrefixBits(i32* %47)
  store i64 %48, i64* %10, align 8
  %49 = load i32, i32* @DEBUG_ROUTER, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = call i32 @A2S(i32* %51)
  %53 = load i64, i64* %8, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @TI_DbgPrint(i32 %49, i8* %54)
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %28
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %65 = icmp ne %struct.TYPE_8__* %64, null
  br i1 %65, label %84, label %66

66:                                               ; preds = %63, %59
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @NUD_STALE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @NUD_INCOMPLETE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71, %66
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %78 = icmp ne %struct.TYPE_8__* %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %76, %71
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %80, %struct.TYPE_8__** %12, align 8
  %81 = load i64, i64* %8, align 8
  store i64 %81, i64* %9, align 8
  %82 = load i32, i32* @DEBUG_ROUTER, align 4
  %83 = call i32 @TI_DbgPrint(i32 %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %84

84:                                               ; preds = %79, %76, %63, %28
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %85, %struct.TYPE_9__** %4, align 8
  br label %25

86:                                               ; preds = %25
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @TcpipReleaseSpinLock(i32* @FIBLock, i32 %87)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %90 = icmp ne %struct.TYPE_8__* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load i32, i32* @DEBUG_ROUTER, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = call i32 @A2S(i32* %94)
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = call i32 @TI_DbgPrint(i32 %92, i8* %97)
  br label %102

99:                                               ; preds = %86
  %100 = load i32, i32* @DEBUG_ROUTER, align 4
  %101 = call i32 @TI_DbgPrint(i32 %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %91
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  ret %struct.TYPE_8__* %103
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @A2S(i32*) #1

declare dso_local i32 @TcpipAcquireSpinLock(i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @CONTAINING_RECORD(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @CommonPrefixLength(i32*, i32*) #1

declare dso_local i64 @AddrCountPrefixBits(i32*) #1

declare dso_local i32 @TcpipReleaseSpinLock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
