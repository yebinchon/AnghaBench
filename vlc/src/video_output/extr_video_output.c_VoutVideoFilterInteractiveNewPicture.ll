; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_VoutVideoFilterInteractiveNewPicture.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_VoutVideoFilterInteractiveNewPicture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_16__*)* @VoutVideoFilterInteractiveNewPicture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @VoutVideoFilterInteractiveNewPicture(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %5 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %8, %struct.TYPE_14__** %3, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_15__* @picture_pool_Get(i32 %13)
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %4, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = icmp ne %struct.TYPE_15__* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = call i32 @picture_Reset(%struct.TYPE_15__* %18)
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = call i32 @video_format_CopyCropAr(i32* %21, i32* %24)
  br label %26

26:                                               ; preds = %17, %1
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  ret %struct.TYPE_15__* %27
}

declare dso_local %struct.TYPE_15__* @picture_pool_Get(i32) #1

declare dso_local i32 @picture_Reset(%struct.TYPE_15__*) #1

declare dso_local i32 @video_format_CopyCropAr(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
