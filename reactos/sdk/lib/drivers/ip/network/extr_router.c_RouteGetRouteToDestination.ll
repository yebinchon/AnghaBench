; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_router.c_RouteGetRouteToDestination.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_router.c_RouteGetRouteToDestination.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@DEBUG_RCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Called. Destination (0x%X)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Destination (%s)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DEBUG_ROUTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Interface->MTU: %d\0A\00", align 1
@MIN_TRACE = common dso_local global i32 0, align 4
@RouteCache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @RouteGetRouteToDestination(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  %5 = load i32, i32* @DEBUG_RCACHE, align 4
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to i8*
  %9 = call i32 @TI_DbgPrint(i32 %5, i8* %8)
  %10 = load i32, i32* @DEBUG_RCACHE, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @A2S(i32 %11)
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @TI_DbgPrint(i32 %10, i8* %14)
  %16 = load i32, i32* %2, align 4
  %17 = call i64 @FindOnLinkInterface(i32 %16)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i64, i64* %4, align 8
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = call %struct.TYPE_7__* @NBFindOrCreateNeighbor(i64 %21, i32 %22, i32 %23)
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %3, align 8
  br label %28

25:                                               ; preds = %1
  %26 = load i32, i32* %2, align 4
  %27 = call %struct.TYPE_7__* @RouterGetRoute(i32 %26)
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %3, align 8
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = icmp ne %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, i32* @DEBUG_ROUTER, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @TI_DbgPrint(i32 %32, i8* %39)
  br label %41

41:                                               ; preds = %31, %28
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %42
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @A2S(i32) #1

declare dso_local i64 @FindOnLinkInterface(i32) #1

declare dso_local %struct.TYPE_7__* @NBFindOrCreateNeighbor(i64, i32, i32) #1

declare dso_local %struct.TYPE_7__* @RouterGetRoute(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
