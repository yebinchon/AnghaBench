; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_anaglyph.c_Filter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_anaglyph.c_Filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Unsupported input chroma (%4.4s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_19__*, %struct.TYPE_18__*)* @Filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @Filter(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_20__* %10, %struct.TYPE_20__** %6, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %12 = icmp ne %struct.TYPE_18__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %50

14:                                               ; preds = %2
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %16 = call %struct.TYPE_18__* @filter_NewPicture(%struct.TYPE_19__* %15)
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %7, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %18 = icmp ne %struct.TYPE_18__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %21 = call i32 @picture_Release(%struct.TYPE_18__* %20)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %50

22:                                               ; preds = %14
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %37 [
    i32 130, label %27
    i32 129, label %27
    i32 128, label %27
  ]

27:                                               ; preds = %22, %22, %22
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @combine_side_by_side_yuv420(%struct.TYPE_18__* %28, %struct.TYPE_18__* %29, i32 %32, i32 %35)
  br label %46

37:                                               ; preds = %22
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = bitcast i32* %41 to i8*
  %43 = call i32 @msg_Warn(%struct.TYPE_19__* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %45 = call i32 @picture_Release(%struct.TYPE_18__* %44)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %50

46:                                               ; preds = %27
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %49 = call %struct.TYPE_18__* @CopyInfoAndRelease(%struct.TYPE_18__* %47, %struct.TYPE_18__* %48)
  store %struct.TYPE_18__* %49, %struct.TYPE_18__** %3, align 8
  br label %50

50:                                               ; preds = %46, %37, %19, %13
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  ret %struct.TYPE_18__* %51
}

declare dso_local %struct.TYPE_18__* @filter_NewPicture(%struct.TYPE_19__*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_18__*) #1

declare dso_local i32 @combine_side_by_side_yuv420(%struct.TYPE_18__*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_19__*, i8*, i8*) #1

declare dso_local %struct.TYPE_18__* @CopyInfoAndRelease(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
