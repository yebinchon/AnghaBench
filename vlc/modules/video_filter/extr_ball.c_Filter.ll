; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_ball.c_Filter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_ball.c_Filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32*)* @Filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Filter(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %36

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = call i32* @filter_NewPicture(%struct.TYPE_6__* %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @picture_Release(i32* %17)
  store i32* null, i32** %3, align 8
  br label %36

19:                                               ; preds = %11
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %7, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = call i32 @vlc_mutex_lock(i32* %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @FilterBall(%struct.TYPE_6__* %26, i32* %27, i32* %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = call i32 @vlc_mutex_unlock(i32* %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32* @CopyInfoAndRelease(i32* %33, i32* %34)
  store i32* %35, i32** %3, align 8
  br label %36

36:                                               ; preds = %19, %16, %10
  %37 = load i32*, i32** %3, align 8
  ret i32* %37
}

declare dso_local i32* @filter_NewPicture(%struct.TYPE_6__*) #1

declare dso_local i32 @picture_Release(i32*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @FilterBall(%struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32* @CopyInfoAndRelease(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
