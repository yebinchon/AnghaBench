; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/transcode/extr_video.c_filtered_video_format.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/transcode/extr_video.c_filtered_video_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, %struct.TYPE_7__*)* @filtered_video_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @filtered_video_format(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca [5 x i32*], align 16
  %7 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i1 [ false, %2 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = getelementptr inbounds [5 x i32*], [5 x i32*]* %6, i64 0, i64 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %17, align 8
  %21 = getelementptr inbounds i32*, i32** %17, i64 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %21, align 8
  %25 = getelementptr inbounds i32*, i32** %21, i64 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %25, align 8
  %29 = getelementptr inbounds i32*, i32** %25, i64 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %29, align 8
  %33 = getelementptr inbounds i32*, i32** %29, i64 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %33, align 8
  store i64 0, i64* %7, align 8
  br label %37

37:                                               ; preds = %54, %13
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds [5 x i32*], [5 x i32*]* %6, i64 0, i64 0
  %40 = call i64 @ARRAY_SIZE(i32** %39)
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds [5 x i32*], [5 x i32*]* %6, i64 0, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds [5 x i32*], [5 x i32*]* %6, i64 0, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = call %struct.TYPE_8__* @filter_chain_GetFmtOut(i32* %50)
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32* %52, i32** %3, align 8
  br label %60

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %7, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %7, align 8
  br label %37

57:                                               ; preds = %37
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32* %59, i32** %3, align 8
  br label %60

60:                                               ; preds = %57, %47
  %61 = load i32*, i32** %3, align 8
  ret i32* %61
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32**) #1

declare dso_local %struct.TYPE_8__* @filter_chain_GetFmtOut(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
