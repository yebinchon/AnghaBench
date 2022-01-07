; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_postproc.c_PostprocPict.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_postproc.c_PostprocPict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__, %struct.TYPE_23__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_22__*, %struct.TYPE_21__*)* @PostprocPict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @PostprocPict(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca [3 x i32*], align 16
  %9 = alloca [3 x i32*], align 16
  %10 = alloca [3 x i32], align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  store %struct.TYPE_23__* %15, %struct.TYPE_23__** %6, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %17 = call %struct.TYPE_21__* @filter_NewPicture(%struct.TYPE_22__* %16)
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %7, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %19 = icmp ne %struct.TYPE_21__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %22 = call i32 @picture_Release(%struct.TYPE_21__* %21)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %3, align 8
  br label %119

23:                                               ; preds = %2
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 0
  %26 = call i32 @vlc_mutex_lock(i32* %25)
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %108

31:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %83, %31
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %86

38:                                               ; preds = %32
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 %48
  store i32* %46, i32** %49, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 %59
  store i32* %57, i32** %60, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %70
  store i32 %68, i32* %71, align 4
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %81
  store i32 %79, i32* %82, align 4
  br label %83

83:                                               ; preds = %38
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %32

86:                                               ; preds = %32
  %87 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 0
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %89 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 0
  %90 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @pp_postprocess(i32** %87, i32* %88, i32** %89, i32* %90, i32 %95, i32 %100, i32* null, i32 0, i32* %103, i32 %106, i32 0)
  br label %112

108:                                              ; preds = %23
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %111 = call i32 @picture_CopyPixels(%struct.TYPE_21__* %109, %struct.TYPE_21__* %110)
  br label %112

112:                                              ; preds = %108, %86
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 0
  %115 = call i32 @vlc_mutex_unlock(i32* %114)
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %118 = call %struct.TYPE_21__* @CopyInfoAndRelease(%struct.TYPE_21__* %116, %struct.TYPE_21__* %117)
  store %struct.TYPE_21__* %118, %struct.TYPE_21__** %3, align 8
  br label %119

119:                                              ; preds = %112, %20
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  ret %struct.TYPE_21__* %120
}

declare dso_local %struct.TYPE_21__* @filter_NewPicture(%struct.TYPE_22__*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_21__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @pp_postprocess(i32**, i32*, i32**, i32*, i32, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @picture_CopyPixels(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_21__* @CopyInfoAndRelease(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
