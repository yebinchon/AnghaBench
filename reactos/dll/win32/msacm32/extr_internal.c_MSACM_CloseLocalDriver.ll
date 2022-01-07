; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_CloseLocalDriver.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_CloseLocalDriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@DRV_CLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"should not directly close session instance (%p)\0A\00", align 1
@MSACM_hHeap = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to close driver instance\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MSACM_CloseLocalDriver(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = call i64 @MSACM_RemoveFromList(%struct.TYPE_8__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %55

9:                                                ; preds = %1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %5, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = load i32, i32* @DRV_CLOSE, align 4
  %15 = call i32 @MSACM_DRIVER_SendMessage(%struct.TYPE_8__* %13, i32 %14, i64 0, i64 0)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %9
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %23)
  br label %25

25:                                               ; preds = %22, %9
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @MSACM_GetNumberOfModuleRefs(i32 %28, i32 %31, %struct.TYPE_8__** %4)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %50

34:                                               ; preds = %25
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = load i32, i32* @DRV_CLOSE, align 4
  %42 = call i32 @MSACM_DRIVER_SendMessage(%struct.TYPE_8__* %40, i32 %41, i64 0, i64 0)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = call i64 @MSACM_RemoveFromList(%struct.TYPE_8__* %45)
  %47 = load i32, i32* @MSACM_hHeap, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = call i32 @HeapFree(i32 %47, i32 0, %struct.TYPE_8__* %48)
  br label %50

50:                                               ; preds = %39, %34, %25
  %51 = load i32, i32* @MSACM_hHeap, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = call i32 @HeapFree(i32 %51, i32 0, %struct.TYPE_8__* %52)
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %2, align 4
  br label %58

55:                                               ; preds = %1
  %56 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @MSACM_RemoveFromList(%struct.TYPE_8__*) #1

declare dso_local i32 @MSACM_DRIVER_SendMessage(%struct.TYPE_8__*, i32, i64, i64) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @MSACM_GetNumberOfModuleRefs(i32, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
