; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_cea708.c_CEA708_BuildSubtitle.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_cea708.c_CEA708_BuildSubtitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i64, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64, i64 }

@CEA708_SCREEN_SAFE_MARGIN_RATIO = common dso_local global i32 0, align 4
@CEA708_WINDOWS_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_15__*)* @CEA708_BuildSubtitle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @CEA708_BuildSubtitle(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.TYPE_13__* @decoder_NewSubpictureText(i32 %13)
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %4, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = icmp ne %struct.TYPE_13__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  br label %92

18:                                               ; preds = %1
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %5, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  store i32* %24, i32** %6, align 8
  %25 = load i32, i32* @CEA708_SCREEN_SAFE_MARGIN_RATIO, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  store i32 1, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %28

28:                                               ; preds = %69, %18
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @CEA708_WINDOWS_COUNT, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %28
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i64 %36
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %9, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %32
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %42
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %49 = call i64 @CEA708_Window_RowCount(%struct.TYPE_14__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %51
  %55 = call i32* (...) @SubpictureUpdaterSysRegionNew()
  store i32* %55, i32** %10, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %72

59:                                               ; preds = %54
  %60 = load i32*, i32** %6, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @SubpictureUpdaterSysRegionAdd(i32* %60, i32* %61)
  %63 = load i32*, i32** %10, align 8
  store i32* %63, i32** %6, align 8
  br label %64

64:                                               ; preds = %59, %51
  store i32 0, i32* %7, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @CEA708SpuConvert(%struct.TYPE_14__* %65, i32* %66)
  br label %68

68:                                               ; preds = %64, %47, %42, %32
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %8, align 8
  br label %28

72:                                               ; preds = %58, %28
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 4
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @VLC_TICK_FROM_SEC(i32 10)
  %82 = add nsw i64 %80, %81
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 3
  store i64 %82, i64* %84, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  store i32 0, i32* %88, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  store i32 1, i32* %90, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %91, %struct.TYPE_13__** %2, align 8
  br label %92

92:                                               ; preds = %72, %17
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  ret %struct.TYPE_13__* %93
}

declare dso_local %struct.TYPE_13__* @decoder_NewSubpictureText(i32) #1

declare dso_local i64 @CEA708_Window_RowCount(%struct.TYPE_14__*) #1

declare dso_local i32* @SubpictureUpdaterSysRegionNew(...) #1

declare dso_local i32 @SubpictureUpdaterSysRegionAdd(i32*, i32*) #1

declare dso_local i32 @CEA708SpuConvert(%struct.TYPE_14__*, i32*) #1

declare dso_local i64 @VLC_TICK_FROM_SEC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
