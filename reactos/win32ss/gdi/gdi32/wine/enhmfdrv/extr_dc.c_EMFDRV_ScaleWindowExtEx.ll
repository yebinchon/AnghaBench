; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_dc.c_EMFDRV_ScaleWindowExtEx.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_dc.c_EMFDRV_ScaleWindowExtEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { {}* }
%struct.TYPE_12__ = type { %struct.TYPE_13__, i8*, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i32, i32 }

@pScaleWindowExtEx = common dso_local global i32 0, align 4
@EMR_SCALEWINDOWEXTEX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EMFDRV_ScaleWindowExtEx(%struct.TYPE_11__* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %17 = load i32, i32* @pScaleWindowExtEx, align 4
  %18 = call %struct.TYPE_11__* @GET_NEXT_PHYSDEV(%struct.TYPE_11__* %16, i32 %17)
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %14, align 8
  %19 = load i32, i32* @EMR_SCALEWINDOWEXTEX, align 4
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  store i32 40, i32* %23, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  store i8* %24, i8** %25, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 3
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  store i8* %28, i8** %29, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %34 = call i32 @EMFDRV_WriteRecord(%struct.TYPE_11__* %32, %struct.TYPE_13__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %6
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %7, align 4
  br label %52

38:                                               ; preds = %6
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = bitcast {}** %42 to i32 (%struct.TYPE_11__*, i8*, i8*, i8*, i8*, i32*)**
  %44 = load i32 (%struct.TYPE_11__*, i8*, i8*, i8*, i8*, i32*)*, i32 (%struct.TYPE_11__*, i8*, i8*, i8*, i8*, i32*)** %43, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 %44(%struct.TYPE_11__* %45, i8* %46, i8* %47, i8* %48, i8* %49, i32* %50)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %38, %36
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local %struct.TYPE_11__* @GET_NEXT_PHYSDEV(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @EMFDRV_WriteRecord(%struct.TYPE_11__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
