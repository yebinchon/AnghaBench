; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_RemoveFromList.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_RemoveFromList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32, i32 }

@DRV_DISABLE = common dso_local global i32 0, align 4
@DRV_FREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"requested to remove invalid instance %p\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @MSACM_RemoveFromList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MSACM_RemoveFromList(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @MSACM_GetNumberOfModuleRefs(i32 %11, i32 %14, i32* null)
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = load i32, i32* @DRV_DISABLE, align 4
  %20 = call i32 @MSACM_DRIVER_SendMessage(%struct.TYPE_6__* %18, i32 %19, i64 0, i64 0)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = load i32, i32* @DRV_FREE, align 4
  %23 = call i32 @MSACM_DRIVER_SendMessage(%struct.TYPE_6__* %21, i32 %22, i64 0, i64 0)
  br label %24

24:                                               ; preds = %17, %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = icmp ne %struct.TYPE_6__* %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %24
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %5, align 8
  br label %34

34:                                               ; preds = %45, %30
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = icmp ne %struct.TYPE_6__* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = icmp ne %struct.TYPE_6__* %40, %41
  br label %43

43:                                               ; preds = %37, %34
  %44 = phi i1 [ false, %34 ], [ %42, %37 ]
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %5, align 8
  br label %34

49:                                               ; preds = %43
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = icmp ne %struct.TYPE_6__* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = call i32 @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %53)
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %2, align 4
  br label %74

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %24
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = icmp ne %struct.TYPE_6__* %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %65, align 8
  br label %72

66:                                               ; preds = %57
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %71, align 8
  br label %72

72:                                               ; preds = %66, %60
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %52
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @MSACM_GetNumberOfModuleRefs(i32, i32, i32*) #1

declare dso_local i32 @MSACM_DRIVER_SendMessage(%struct.TYPE_6__*, i32, i64, i64) #1

declare dso_local i32 @ERR(i8*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
