; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_subsvtt.c_webvtt_domnode_GetPlaybackTime.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_subsvtt.c_webvtt_domnode_GetPlaybackTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@NODE_TAG = common dso_local global i64 0, align 8
@NODE_CUE = common dso_local global i64 0, align 8
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @webvtt_domnode_GetPlaybackTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @webvtt_domnode_GetPlaybackTime(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %7

7:                                                ; preds = %38, %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %42

10:                                               ; preds = %7
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NODE_TAG, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = bitcast %struct.TYPE_6__* %17 to %struct.TYPE_5__*
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %62

28:                                               ; preds = %23, %16
  br label %37

29:                                               ; preds = %10
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NODE_CUE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %42

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %28
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %4, align 8
  br label %7

42:                                               ; preds = %35, %7
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = icmp ne %struct.TYPE_6__* %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = bitcast %struct.TYPE_6__* %49 to %struct.TYPE_7__*
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  br label %58

53:                                               ; preds = %45
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = bitcast %struct.TYPE_6__* %54 to %struct.TYPE_7__*
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i32 [ %52, %48 ], [ %57, %53 ]
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %42
  %61 = load i32, i32* @VLC_TICK_INVALID, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %58, %26
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
