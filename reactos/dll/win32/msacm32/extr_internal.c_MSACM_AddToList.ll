; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_AddToList.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_AddToList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, i32 }

@DRV_LOAD = common dso_local global i32 0, align 4
@DRV_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"DRV_LOAD failed on driver %p\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DRV_ENABLE = common dso_local global i32 0, align 4
@DRV_OPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"DRV_OPEN failed on driver %p\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64)* @MSACM_AddToList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MSACM_AddToList(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @MSACM_GetNumberOfModuleRefs(i32 %13, i32 %16, i32* null)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = load i32, i32* @DRV_LOAD, align 4
  %22 = call i64 @MSACM_DRIVER_SendMessage(%struct.TYPE_7__* %20, i32 %21, i64 0, i64 0)
  %23 = load i64, i64* @DRV_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %26)
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %3, align 4
  br label %80

29:                                               ; preds = %19
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = load i32, i32* @DRV_ENABLE, align 4
  %32 = call i64 @MSACM_DRIVER_SendMessage(%struct.TYPE_7__* %30, i32 %31, i64 0, i64 0)
  br label %33

33:                                               ; preds = %29, %2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %35, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = icmp eq %struct.TYPE_7__* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %43, align 8
  br label %61

44:                                               ; preds = %33
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %7, align 8
  br label %48

48:                                               ; preds = %53, %44
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = icmp ne %struct.TYPE_7__* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %7, align 8
  br label %48

57:                                               ; preds = %48
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %60, align 8
  br label %61

61:                                               ; preds = %57, %40
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = load i32, i32* @DRV_OPEN, align 4
  %64 = load i64, i64* %5, align 8
  %65 = call i64 @MSACM_DRIVER_SendMessage(%struct.TYPE_7__* %62, i32 %63, i64 0, i64 %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %61
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %73)
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = call i32 @MSACM_RemoveFromList(%struct.TYPE_7__* %75)
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %3, align 4
  br label %80

78:                                               ; preds = %61
  %79 = load i32, i32* @TRUE, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %72, %25
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @MSACM_GetNumberOfModuleRefs(i32, i32, i32*) #1

declare dso_local i64 @MSACM_DRIVER_SendMessage(%struct.TYPE_7__*, i32, i64, i64) #1

declare dso_local i32 @FIXME(i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @MSACM_RemoveFromList(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
