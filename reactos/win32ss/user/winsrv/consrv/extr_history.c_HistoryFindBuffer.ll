; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_history.c_HistoryFindBuffer.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_history.c_HistoryFindBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32*, i32, i32 }

@HISTORY_BUFFER = common dso_local global i32 0, align 4
@ListEntry = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_14__*, i32*, i32, i64)* @HistoryFindBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @HistoryFindBuffer(%struct.TYPE_14__* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %12, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  br label %78

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i32* %20, i32** %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  br label %34

24:                                               ; preds = %16
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %30 = call i32 @ConvertInputAnsiToUnicode(%struct.TYPE_14__* %25, i32* %26, i32 %27, i32** %28, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  br label %78

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %19
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %11, align 8
  br label %42

42:                                               ; preds = %66, %34
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = icmp ne %struct.TYPE_12__* %43, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %42
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %49 = load i32, i32* @HISTORY_BUFFER, align 4
  %50 = load i32, i32* @ListEntry, align 4
  %51 = call %struct.TYPE_13__* @CONTAINING_RECORD(%struct.TYPE_12__* %48, i32 %49, i32 %50)
  store %struct.TYPE_13__* %51, %struct.TYPE_13__** %12, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* @TRUE, align 4
  %55 = call i64 @RtlPrefixUnicodeString(%struct.TYPE_11__* %10, i32* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %47
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @ConsoleFreeHeap(i32* %62)
  br label %64

64:                                               ; preds = %60, %57
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %5, align 8
  br label %78

66:                                               ; preds = %47
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  store %struct.TYPE_12__* %69, %struct.TYPE_12__** %11, align 8
  br label %42

70:                                               ; preds = %42
  %71 = load i64, i64* %9, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @ConsoleFreeHeap(i32* %75)
  br label %77

77:                                               ; preds = %73, %70
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  br label %78

78:                                               ; preds = %77, %64, %32, %15
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  ret %struct.TYPE_13__* %79
}

declare dso_local i32 @ConvertInputAnsiToUnicode(%struct.TYPE_14__*, i32*, i32, i32**, i32*) #1

declare dso_local %struct.TYPE_13__* @CONTAINING_RECORD(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @RtlPrefixUnicodeString(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @ConsoleFreeHeap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
