; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shimgvw/extr_shimgvw.c_Anime_LoadInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shimgvw/extr_shimgvw.c_Anime_LoadInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@hDispWnd = common dso_local global i32 0, align 4
@ANIME_TIMER_ID = common dso_local global i32 0, align 4
@image = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@m_nFrameCount = common dso_local global i64 0, align 8
@PropertyTagFrameDelay = common dso_local global i32 0, align 4
@m_pDelayItem = common dso_local global %struct.TYPE_8__* null, align 8
@PropertyTagLoopCount = common dso_local global i32 0, align 4
@Ok = common dso_local global i64 0, align 8
@m_nLoopCount = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @Anime_LoadInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Anime_LoadInfo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store i64 0, i64* %3, align 8
  %7 = call i32 (...) @Anime_FreeInfo()
  %8 = load i32, i32* @hDispWnd, align 4
  %9 = load i32, i32* @ANIME_TIMER_ID, align 4
  %10 = call i32 @KillTimer(i32 %8, i32 %9)
  %11 = load i32, i32* @image, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %0
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %1, align 4
  br label %96

15:                                               ; preds = %0
  %16 = load i32, i32* @image, align 4
  %17 = call i32 @GdipImageGetFrameDimensionsCount(i32 %16, i64* %3)
  %18 = load i64, i64* %3, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @calloc(i64 %21, i32 8)
  %23 = inttoptr i64 %22 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %2, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = icmp ne %struct.TYPE_8__* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load i32, i32* @image, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @GdipImageGetFrameDimensionsList(i32 %27, %struct.TYPE_8__* %28, i64 %29)
  %31 = load i32, i32* @image, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = call i32 @GdipImageGetFrameCount(i32 %31, %struct.TYPE_8__* %32, i64* %5)
  %34 = load i64, i64* %5, align 8
  store i64 %34, i64* @m_nFrameCount, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %36 = call i32 @free(%struct.TYPE_8__* %35)
  br label %37

37:                                               ; preds = %26, %20
  br label %38

38:                                               ; preds = %37, %15
  store i64 0, i64* %5, align 8
  %39 = load i32, i32* @image, align 4
  %40 = load i32, i32* @PropertyTagFrameDelay, align 4
  %41 = call i32 @GdipGetPropertyItemSize(i32 %39, i32 %40, i64* %5)
  %42 = load i64, i64* %5, align 8
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load i64, i64* %4, align 8
  %47 = call i64 @malloc(i64 %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** @m_pDelayItem, align 8
  %49 = load i32, i32* @image, align 4
  %50 = load i32, i32* @PropertyTagFrameDelay, align 4
  %51 = load i64, i64* %4, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** @m_pDelayItem, align 8
  %53 = call i64 @GdipGetPropertyItem(i32 %49, i32 %50, i64 %51, %struct.TYPE_8__* %52)
  br label %54

54:                                               ; preds = %45, %38
  store i64 0, i64* %5, align 8
  %55 = load i32, i32* @image, align 4
  %56 = load i32, i32* @PropertyTagLoopCount, align 4
  %57 = call i32 @GdipGetPropertyItemSize(i32 %55, i32 %56, i64* %5)
  %58 = load i64, i64* %5, align 8
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %54
  %62 = load i64, i64* %4, align 8
  %63 = call i64 @malloc(i64 %62)
  %64 = inttoptr i64 %63 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %6, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = icmp ne %struct.TYPE_8__* %65, null
  br i1 %66, label %67, label %84

67:                                               ; preds = %61
  %68 = load i32, i32* @image, align 4
  %69 = load i32, i32* @PropertyTagLoopCount, align 4
  %70 = load i64, i64* %4, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = call i64 @GdipGetPropertyItem(i32 %68, i32 %69, i64 %70, %struct.TYPE_8__* %71)
  %73 = load i64, i64* @Ok, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i32*
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* @m_nLoopCount, align 4
  br label %81

81:                                               ; preds = %75, %67
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %83 = call i32 @free(%struct.TYPE_8__* %82)
  br label %84

84:                                               ; preds = %81, %61
  br label %85

85:                                               ; preds = %84, %54
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @m_pDelayItem, align 8
  %87 = icmp ne %struct.TYPE_8__* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* @hDispWnd, align 4
  %90 = load i32, i32* @ANIME_TIMER_ID, align 4
  %91 = call i32 @SetTimer(i32 %89, i32 %90, i32 0, i32* null)
  br label %92

92:                                               ; preds = %88, %85
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** @m_pDelayItem, align 8
  %94 = icmp ne %struct.TYPE_8__* %93, null
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %1, align 4
  br label %96

96:                                               ; preds = %92, %13
  %97 = load i32, i32* %1, align 4
  ret i32 %97
}

declare dso_local i32 @Anime_FreeInfo(...) #1

declare dso_local i32 @KillTimer(i32, i32) #1

declare dso_local i32 @GdipImageGetFrameDimensionsCount(i32, i64*) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32 @GdipImageGetFrameDimensionsList(i32, %struct.TYPE_8__*, i64) #1

declare dso_local i32 @GdipImageGetFrameCount(i32, %struct.TYPE_8__*, i64*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @GdipGetPropertyItemSize(i32, i32, i64*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @GdipGetPropertyItem(i32, i32, i64, %struct.TYPE_8__*) #1

declare dso_local i32 @SetTimer(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
