; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/reactx/dxg/extr_ddraw.c_intDdGetDriverInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/reactx/dxg/extr_ddraw.c_intDdGetDriverInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i64 (%struct.TYPE_10__*)* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_10__*, i32, i32 }

@DDHALINFO_GETDRIVERINFOSET = common dso_local global i32 0, align 4
@DDERR_CURRENTLYNOTAVAIL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intDdGetDriverInfo(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_10__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DDHALINFO_GETDRIVERINFOSET, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %5
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i64 (%struct.TYPE_10__*)*, i64 (%struct.TYPE_10__*)** %23, align 8
  %25 = icmp ne i64 (%struct.TYPE_10__*)* %24, null
  br i1 %25, label %26, label %61

26:                                               ; preds = %20
  %27 = call i32 @memset(%struct.TYPE_10__* %12, i32 0, i32 32)
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i32 32, i32* %28, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 6
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 5
  %34 = call i32 @memcpy(i32* %33, i32* %8, i32 4)
  %35 = load i32, i32* %10, align 4
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 4
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %38, align 8
  %39 = load i32, i32* @DDERR_CURRENTLYNOTAVAIL, align 4
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  store i32 %39, i32* %40, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i64 (%struct.TYPE_10__*)*, i64 (%struct.TYPE_10__*)** %43, align 8
  %45 = call i64 %44(%struct.TYPE_10__* %12)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %26
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = load i32*, i32** %11, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %11, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %6, align 4
  br label %71

60:                                               ; preds = %47, %26
  br label %61

61:                                               ; preds = %60, %20, %5
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @memset(%struct.TYPE_10__* %62, i32 0, i32 %63)
  %65 = load i32*, i32** %11, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32*, i32** %11, align 8
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %67, %61
  %70 = load i32, i32* @FALSE, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %69, %58
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
