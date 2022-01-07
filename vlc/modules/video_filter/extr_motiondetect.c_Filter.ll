; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_motiondetect.c_Filter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_motiondetect.c_Filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_21__, %struct.TYPE_26__* }
%struct.TYPE_21__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_24__*, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32* }

@Y_PLANE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_24__* (%struct.TYPE_25__*, %struct.TYPE_24__*)* @Filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_24__* @Filter(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  store %struct.TYPE_26__* %13, %struct.TYPE_26__** %6, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %15 = icmp ne %struct.TYPE_24__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %3, align 8
  br label %125

17:                                               ; preds = %2
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %19 = call %struct.TYPE_24__* @filter_NewPicture(%struct.TYPE_25__* %18)
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %7, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %21 = icmp ne %struct.TYPE_24__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %24 = call i32 @picture_Release(%struct.TYPE_24__* %23)
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %3, align 8
  br label %125

25:                                               ; preds = %17
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %28 = call i32 @picture_Copy(%struct.TYPE_24__* %26, %struct.TYPE_24__* %27)
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %32 = icmp ne %struct.TYPE_24__* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %25
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %35 = call i8* @picture_Hold(%struct.TYPE_24__* %34)
  %36 = bitcast i8* %35 to %struct.TYPE_24__*
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 0
  store %struct.TYPE_24__* %36, %struct.TYPE_24__** %38, align 8
  br label %121

39:                                               ; preds = %25
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 9
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %47 = call i32 @PreparePlanar(%struct.TYPE_25__* %45, %struct.TYPE_24__* %46)
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %55

48:                                               ; preds = %39
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %51 = call i64 @PreparePacked(%struct.TYPE_25__* %49, %struct.TYPE_24__* %50, i32* %8)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %121

54:                                               ; preds = %48
  store i32 2, i32* %9, align 4
  br label %55

55:                                               ; preds = %54, %44
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  store %struct.TYPE_23__* %58, %struct.TYPE_23__** %10, align 8
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @FindShapes(i32 %61, i32 %64, i32 %67, i32 %70, i32 %73, i32 %76, i32 %79, i32 %82, i32 %85, i32 %88)
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 8
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %94, align 8
  %96 = load i64, i64* @Y_PLANE, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %104, align 8
  %106 = load i64, i64* @Y_PLANE, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @Draw(%struct.TYPE_25__* %92, i32* %102, i32 %109, i32 %110)
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %113, align 8
  %115 = call i32 @picture_Release(%struct.TYPE_24__* %114)
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %117 = call i8* @picture_Hold(%struct.TYPE_24__* %116)
  %118 = bitcast i8* %117 to %struct.TYPE_24__*
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 0
  store %struct.TYPE_24__* %118, %struct.TYPE_24__** %120, align 8
  br label %121

121:                                              ; preds = %55, %53, %33
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %123 = call i32 @picture_Release(%struct.TYPE_24__* %122)
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_24__* %124, %struct.TYPE_24__** %3, align 8
  br label %125

125:                                              ; preds = %121, %22, %16
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  ret %struct.TYPE_24__* %126
}

declare dso_local %struct.TYPE_24__* @filter_NewPicture(%struct.TYPE_25__*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_24__*) #1

declare dso_local i32 @picture_Copy(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i8* @picture_Hold(%struct.TYPE_24__*) #1

declare dso_local i32 @PreparePlanar(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i64 @PreparePacked(%struct.TYPE_25__*, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @FindShapes(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Draw(%struct.TYPE_25__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
