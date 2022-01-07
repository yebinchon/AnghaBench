; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/android/extr_utils.c_NativeSurface_getHandle.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/android/extr_utils.c_NativeSurface_getHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__**, i32)*, i64 (%struct.TYPE_14__**, i32, i32*)*, i32 (%struct.TYPE_14__**)*, i64 (%struct.TYPE_14__**)*, i32* (%struct.TYPE_14__**, i32, i8*, i8*)*, i32 (%struct.TYPE_14__**, i32)* }

@.str = private unnamed_addr constant [9 x i8] c"mSurface\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"mNativeSurface\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_14__**, i32)* @NativeSurface_getHandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @NativeSurface_getHandle(%struct.TYPE_14__** %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_14__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_14__** %0, %struct.TYPE_14__*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 5
  %12 = load i32 (%struct.TYPE_14__**, i32)*, i32 (%struct.TYPE_14__**, i32)** %11, align 8
  %13 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 %12(%struct.TYPE_14__** %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 3
  %19 = load i64 (%struct.TYPE_14__**)*, i64 (%struct.TYPE_14__**)** %18, align 8
  %20 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %21 = call i64 %19(%struct.TYPE_14__** %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = load i32 (%struct.TYPE_14__**)*, i32 (%struct.TYPE_14__**)** %26, align 8
  %28 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %29 = call i32 %27(%struct.TYPE_14__** %28)
  store i8* null, i8** %3, align 8
  br label %104

30:                                               ; preds = %2
  %31 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 4
  %34 = load i32* (%struct.TYPE_14__**, i32, i8*, i8*)*, i32* (%struct.TYPE_14__**, i32, i8*, i8*)** %33, align 8
  %35 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32* %34(%struct.TYPE_14__** %35, i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %82

40:                                               ; preds = %30
  %41 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 3
  %44 = load i64 (%struct.TYPE_14__**)*, i64 (%struct.TYPE_14__**)** %43, align 8
  %45 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %46 = call i64 %44(%struct.TYPE_14__** %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = load i32 (%struct.TYPE_14__**)*, i32 (%struct.TYPE_14__**)** %51, align 8
  %53 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %54 = call i32 %52(%struct.TYPE_14__** %53)
  br label %55

55:                                               ; preds = %48, %40
  %56 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 4
  %59 = load i32* (%struct.TYPE_14__**, i32, i8*, i8*)*, i32* (%struct.TYPE_14__**, i32, i8*, i8*)** %58, align 8
  %60 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32* %59(%struct.TYPE_14__** %60, i32 %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %62, i32** %7, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %81

65:                                               ; preds = %55
  %66 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 3
  %69 = load i64 (%struct.TYPE_14__**)*, i64 (%struct.TYPE_14__**)** %68, align 8
  %70 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %71 = call i64 %69(%struct.TYPE_14__** %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %65
  %74 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  %77 = load i32 (%struct.TYPE_14__**)*, i32 (%struct.TYPE_14__**)** %76, align 8
  %78 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %79 = call i32 %77(%struct.TYPE_14__** %78)
  br label %80

80:                                               ; preds = %73, %65
  br label %81

81:                                               ; preds = %80, %55
  br label %82

82:                                               ; preds = %81, %30
  %83 = load i32*, i32** %7, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load i64 (%struct.TYPE_14__**, i32, i32*)*, i64 (%struct.TYPE_14__**, i32, i32*)** %88, align 8
  %90 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = call i64 %89(%struct.TYPE_14__** %90, i32 %91, i32* %92)
  store i64 %93, i64* %8, align 8
  br label %94

94:                                               ; preds = %85, %82
  %95 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32 (%struct.TYPE_14__**, i32)*, i32 (%struct.TYPE_14__**, i32)** %97, align 8
  %99 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 %98(%struct.TYPE_14__** %99, i32 %100)
  %102 = load i64, i64* %8, align 8
  %103 = inttoptr i64 %102 to i8*
  store i8* %103, i8** %3, align 8
  br label %104

104:                                              ; preds = %94, %23
  %105 = load i8*, i8** %3, align 8
  ret i8* %105
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
