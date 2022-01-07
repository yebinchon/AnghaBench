; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/reactx/ntddraw/extr_ddraw.c_intEnableReactXDriver.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/reactx/ntddraw/extr_ddraw.c_intEnableReactXDriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, i32* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32*, i32* }

@FALSE = common dso_local global i32 0, align 4
@gpfnStartupDxGraphics = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [49 x i8] c"Warning: Failed to create the directx interface\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Warning: Failed to lock hdc\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"Warning : DisableDirectDraw and EnableDirectDraw are NULL, no dx driver \0A\00", align 1
@gpDxFuncs = common dso_local global %struct.TYPE_19__* null, align 8
@DXG_INDEX_DxDdEnableDirectDraw = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Warning: no pfnDdEnableDirectDraw\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c" call to pfnDdEnableDirectDraw \0A \00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [61 x i8] c" The dxg.sys and graphic card driver interface is enabled \0A \00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Return value : 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c" end call to pfnDdEnableDirectDraw \0A \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intEnableReactXDriver(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32 (%struct.TYPE_17__*, i32)*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %5, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %7, align 8
  store i32 (%struct.TYPE_17__*, i32)* null, i32 (%struct.TYPE_17__*, i32)** %8, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32*, i32** @gpfnStartupDxGraphics, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @DxDdStartupDxGraphics(i32 0, i32* null, i32 0, i32* null, i32* null, i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @NT_SUCCESS(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %2, align 4
  br label %101

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i32, i32* %3, align 4
  %25 = call %struct.TYPE_18__* @DC_LockDc(i32 %24)
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %6, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %27 = icmp eq %struct.TYPE_18__* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %2, align 4
  br label %101

31:                                               ; preds = %23
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  store %struct.TYPE_17__* %34, %struct.TYPE_17__** %7, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %31
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %40, %31
  %47 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  br label %94

48:                                               ; preds = %40
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %90

55:                                               ; preds = %48
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  store i32 4, i32* %60, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  store i32 4, i32* %65, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  store i32 4, i32* %70, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** @gpDxFuncs, align 8
  %72 = load i64, i64* @DXG_INDEX_DxDdEnableDirectDraw, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i32 (%struct.TYPE_17__*, i32)*
  store i32 (%struct.TYPE_17__*, i32)* %76, i32 (%struct.TYPE_17__*, i32)** %8, align 8
  %77 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %8, align 8
  %78 = icmp eq i32 (%struct.TYPE_17__*, i32)* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %55
  %80 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %89

81:                                               ; preds = %55
  %82 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %8, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %85, align 8
  %87 = load i32, i32* @TRUE, align 4
  %88 = call i32 %83(%struct.TYPE_17__* %86, i32 %87)
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %81, %79
  br label %93

90:                                               ; preds = %48
  %91 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  %92 = load i32, i32* @TRUE, align 4
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %90, %89
  br label %94

94:                                               ; preds = %93, %46
  %95 = load i32, i32* %9, align 4
  %96 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %98 = call i32 @DC_UnlockDc(%struct.TYPE_18__* %97)
  %99 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %94, %28, %19
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @DxDdStartupDxGraphics(i32, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local %struct.TYPE_18__* @DC_LockDc(i32) #1

declare dso_local i32 @DC_UnlockDc(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
