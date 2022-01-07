; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_UnregisterDriver.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_UnregisterDriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, i64 }

@MSACM_hHeap = common dso_local global i32 0, align 4
@MSACM_pFirstACMDriverID = common dso_local global %struct.TYPE_7__* null, align 8
@MSACM_pLastACMDriverID = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @MSACM_UnregisterDriver(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 6
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @acmDriverClose(i32 %13, i32 0)
  br label %4

15:                                               ; preds = %4
  %16 = load i32, i32* @MSACM_hHeap, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = call i32 @HeapFree(i32 %16, i32 0, %struct.TYPE_7__* %19)
  %21 = load i32, i32* @MSACM_hHeap, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = call i32 @HeapFree(i32 %21, i32 0, %struct.TYPE_7__* %24)
  %26 = load i32, i32* @MSACM_hHeap, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = call i32 @HeapFree(i32 %26, i32 0, %struct.TYPE_7__* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MSACM_pFirstACMDriverID, align 8
  %33 = icmp eq %struct.TYPE_7__* %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %15
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** @MSACM_pFirstACMDriverID, align 8
  br label %38

38:                                               ; preds = %34, %15
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MSACM_pLastACMDriverID, align 8
  %41 = icmp eq %struct.TYPE_7__* %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** @MSACM_pLastACMDriverID, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = icmp ne %struct.TYPE_7__* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %58, align 8
  br label %59

59:                                               ; preds = %51, %46
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = icmp ne %struct.TYPE_7__* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %71, align 8
  br label %72

72:                                               ; preds = %64, %59
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %3, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @MSACM_UnregisterLocalDriver(i64 %83)
  br label %85

85:                                               ; preds = %80, %72
  %86 = load i32, i32* @MSACM_hHeap, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %88 = call i32 @HeapFree(i32 %86, i32 0, %struct.TYPE_7__* %87)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %89
}

declare dso_local i32 @acmDriverClose(i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @MSACM_UnregisterLocalDriver(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
