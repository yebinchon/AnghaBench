; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_neighbor.c_NBFindOrCreateNeighbor.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_neighbor.c_NBFindOrCreateNeighbor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@DEBUG_NCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Called. Interface (0x%X)  Address (0x%X).\0A\00", align 1
@MID_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"BCAST: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Packet targeted at broadcast addr\0A\00", align 1
@NUD_PERMANENT = common dso_local global i32 0, align 4
@NUD_INCOMPLETE = common dso_local global i32 0, align 4
@ARP_INCOMPLETE_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @NBFindOrCreateNeighbor(%struct.TYPE_5__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* @DEBUG_NCACHE, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @TI_DbgPrint(i32 %9, i8* %13)
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = call i32* @NBLocateNeighbor(i32 %15, %struct.TYPE_5__* %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %69

20:                                               ; preds = %3
  %21 = load i32, i32* @MID_TRACE, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = call i32 @A2S(i32* %23)
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @TI_DbgPrint(i32 %21, i8* %26)
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = call i64 @AddrIsEqual(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @AddrIsUnspecified(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %33, %20
  %38 = load i32, i32* @MID_TRACE, align 4
  %39 = call i32 @TI_DbgPrint(i32 %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NUD_PERMANENT, align 4
  %46 = call i32* @NBAddNeighbor(%struct.TYPE_5__* %40, i32 %41, i32* null, i32 %44, i32 %45, i32 0)
  store i32* %46, i32** %8, align 8
  br label %68

47:                                               ; preds = %33
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NUD_INCOMPLETE, align 4
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %59

57:                                               ; preds = %47
  %58 = load i32, i32* @ARP_INCOMPLETE_TIMEOUT, align 4
  br label %59

59:                                               ; preds = %57, %56
  %60 = phi i32 [ 0, %56 ], [ %58, %57 ]
  %61 = call i32* @NBAddNeighbor(%struct.TYPE_5__* %48, i32 %49, i32* null, i32 %52, i32 %53, i32 %60)
  store i32* %61, i32** %8, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  store i32* null, i32** %4, align 8
  br label %71

65:                                               ; preds = %59
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @NBSendSolicit(i32* %66)
  br label %68

68:                                               ; preds = %65, %37
  br label %69

69:                                               ; preds = %68, %3
  %70 = load i32*, i32** %8, align 8
  store i32* %70, i32** %4, align 8
  br label %71

71:                                               ; preds = %69, %64
  %72 = load i32*, i32** %4, align 8
  ret i32* %72
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32* @NBLocateNeighbor(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @A2S(i32*) #1

declare dso_local i64 @AddrIsEqual(i32, i32*) #1

declare dso_local i64 @AddrIsUnspecified(i32) #1

declare dso_local i32* @NBAddNeighbor(%struct.TYPE_5__*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @NBSendSolicit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
