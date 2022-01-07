; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_RegisterLocalDriver.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_RegisterLocalDriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }

@.str = private unnamed_addr constant [10 x i8] c"(%p, %p)\0A\00", align 1
@MSACM_pFirstACMLocalDriver = common dso_local global %struct.TYPE_8__* null, align 8
@MSACM_hHeap = common dso_local global i32 0, align 4
@WINE_ACMOBJ_LOCALDRIVER = common dso_local global i32 0, align 4
@MSACM_pLastACMLocalDriver = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @MSACM_RegisterLocalDriver(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %7, i64 %8)
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %82

16:                                               ; preds = %12
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MSACM_pFirstACMLocalDriver, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %6, align 8
  br label %18

18:                                               ; preds = %39, %16
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %43

21:                                               ; preds = %18
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = call i32 @InterlockedIncrement(i32* %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %3, align 8
  br label %82

38:                                               ; preds = %27, %21
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %6, align 8
  br label %18

43:                                               ; preds = %18
  %44 = load i32, i32* @MSACM_hHeap, align 4
  %45 = call %struct.TYPE_8__* @HeapAlloc(i32 %44, i32 0, i32 4)
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %6, align 8
  %46 = load i32, i32* @WINE_ACMOBJ_LOCALDRIVER, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 6
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 5
  store i32* null, i32** %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  store i32 1, i32* %62, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %64, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MSACM_pLastACMLocalDriver, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 4
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %67, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MSACM_pLastACMLocalDriver, align 8
  %69 = icmp ne %struct.TYPE_8__* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %43
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MSACM_pLastACMLocalDriver, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %73, align 8
  br label %74

74:                                               ; preds = %70, %43
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** @MSACM_pLastACMLocalDriver, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MSACM_pFirstACMLocalDriver, align 8
  %77 = icmp ne %struct.TYPE_8__* %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** @MSACM_pFirstACMLocalDriver, align 8
  br label %80

80:                                               ; preds = %78, %74
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %3, align 8
  br label %82

82:                                               ; preds = %80, %33, %15
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %83
}

declare dso_local i32 @TRACE(i8*, i64, i64) #1

declare dso_local i32 @InterlockedIncrement(i32*) #1

declare dso_local %struct.TYPE_8__* @HeapAlloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
