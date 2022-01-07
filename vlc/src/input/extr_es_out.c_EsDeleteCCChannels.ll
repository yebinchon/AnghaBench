; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_es_out.c_EsDeleteCCChannels.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_es_out.c_EsDeleteCCChannels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@SPU_ES = common dso_local global i32 0, align 4
@VLC_INPUT_ES_UNSELECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_12__*)* @EsDeleteCCChannels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EsDeleteCCChannels(i32* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %100

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @SPU_ES, align 4
  %18 = call %struct.TYPE_12__* @EsOutGetSelectedCat(i32* %16, i32 %17)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %5, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = icmp ne %struct.TYPE_12__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  br label %27

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26, %21
  %28 = phi i32 [ %25, %21 ], [ -1, %26 ]
  store i32 %28, i32* %6, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %88, %27
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %93

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %44, i64 %46
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = icmp ne %struct.TYPE_13__* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %40, %36
  br label %88

51:                                               ; preds = %40
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %56, i64 %58
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %52, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %51
  %66 = load i32*, i32** %3, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %70, i64 %72
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = load i32, i32* @VLC_INPUT_ES_UNSELECTED, align 4
  %76 = call i32 @EsOutSendEsEvent(i32* %66, %struct.TYPE_13__* %74, i32 %75)
  br label %77

77:                                               ; preds = %65, %51
  %78 = load i32*, i32** %3, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %82, i64 %84
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = call i32 @EsOutDelLocked(i32* %78, %struct.TYPE_13__* %86)
  br label %88

88:                                               ; preds = %77, %50
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %7, align 4
  %92 = ashr i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %33

93:                                               ; preds = %33
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  store i32 0, i32* %96, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %93, %14
  ret void
}

declare dso_local %struct.TYPE_12__* @EsOutGetSelectedCat(i32*, i32) #1

declare dso_local i32 @EsOutSendEsEvent(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @EsOutDelLocked(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
