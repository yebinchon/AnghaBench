; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_neighbor.c_NBLocateNeighbor.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_neighbor.c_NBLocateNeighbor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, i32, i32* }
%struct.TYPE_8__ = type { i32 }

@DEBUG_NCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Called. Address (0x%X).\0A\00", align 1
@NB_HASHMASK = common dso_local global i32 0, align 4
@NeighborCache = common dso_local global %struct.TYPE_9__* null, align 8
@MAX_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Leaving.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @NBLocateNeighbor(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @DEBUG_NCACHE, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = bitcast %struct.TYPE_8__* %10 to i8*
  %12 = call i32 @TI_DbgPrint(i32 %9, i8* %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 16
  %18 = load i32, i32* %6, align 4
  %19 = xor i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 8
  %22 = load i32, i32* %6, align 4
  %23 = xor i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 4
  %26 = load i32, i32* %6, align 4
  %27 = xor i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @NB_HASHMASK, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @NeighborCache, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = call i32 @TcpipAcquireSpinLock(i32* %35, i32* %7)
  %37 = load i32*, i32** %4, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = call i32* (...) @GetDefaultInterface()
  store i32* %40, i32** %8, align 8
  %41 = load i32*, i32** %8, align 8
  store i32* %41, i32** %4, align 8
  br label %43

42:                                               ; preds = %2
  store i32* null, i32** %8, align 8
  br label %43

43:                                               ; preds = %42, %39
  br label %44

44:                                               ; preds = %83, %43
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @NeighborCache, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %5, align 8
  br label %51

51:                                               ; preds = %67, %44
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = icmp ne %struct.TYPE_7__* %52, null
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = icmp eq i32* %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = call i64 @AddrIsEqual(%struct.TYPE_8__* %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %71

67:                                               ; preds = %60, %54
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %5, align 8
  br label %51

71:                                               ; preds = %66, %51
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = icmp ne %struct.TYPE_7__* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %85

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75
  %77 = load i32*, i32** %8, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = call i32* (...) @GetDefaultInterface()
  store i32* %80, i32** %4, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = icmp ne i32* %80, %81
  br label %83

83:                                               ; preds = %79, %76
  %84 = phi i1 [ false, %76 ], [ %82, %79 ]
  br i1 %84, label %44, label %85

85:                                               ; preds = %83, %74
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = icmp eq %struct.TYPE_7__* %86, null
  br i1 %87, label %88, label %113

88:                                               ; preds = %85
  %89 = load i32*, i32** %8, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %113

91:                                               ; preds = %88
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** @NeighborCache, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %5, align 8
  br label %98

98:                                               ; preds = %108, %91
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = icmp ne %struct.TYPE_7__* %99, null
  br i1 %100, label %101, label %112

101:                                              ; preds = %98
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = call i64 @AddrIsEqual(%struct.TYPE_8__* %102, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %112

108:                                              ; preds = %101
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  store %struct.TYPE_7__* %111, %struct.TYPE_7__** %5, align 8
  br label %98

112:                                              ; preds = %107, %98
  br label %113

113:                                              ; preds = %112, %88, %85
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** @NeighborCache, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @TcpipReleaseSpinLock(i32* %118, i32 %119)
  %121 = load i32, i32* @MAX_TRACE, align 4
  %122 = call i32 @TI_DbgPrint(i32 %121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %123
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @TcpipAcquireSpinLock(i32*, i32*) #1

declare dso_local i32* @GetDefaultInterface(...) #1

declare dso_local i64 @AddrIsEqual(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @TcpipReleaseSpinLock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
