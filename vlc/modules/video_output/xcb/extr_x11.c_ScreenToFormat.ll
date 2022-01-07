; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/xcb/extr_x11.c_ScreenToFormat.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/xcb/extr_x11.c_ScreenToFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i64*, i32*)* @ScreenToFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ScreenToFormat(i32* %0, i32* %1, i64* noalias %2, i32* noalias %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %9, align 8
  %14 = load i64*, i64** %7, align 8
  store i64 0, i64* %14, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call { i64, %struct.TYPE_6__* } @xcb_screen_allowed_depths_iterator(i32* %15)
  %17 = bitcast %struct.TYPE_7__* %10 to { i64, %struct.TYPE_6__* }*
  %18 = getelementptr inbounds { i64, %struct.TYPE_6__* }, { i64, %struct.TYPE_6__* }* %17, i32 0, i32 0
  %19 = extractvalue { i64, %struct.TYPE_6__* } %16, 0
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds { i64, %struct.TYPE_6__* }, { i64, %struct.TYPE_6__* }* %17, i32 0, i32 1
  %21 = extractvalue { i64, %struct.TYPE_6__* } %16, 1
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %20, align 8
  br label %22

22:                                               ; preds = %53, %4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %11, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %53

36:                                               ; preds = %26
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @video_format_ApplyRotation(i32* %12, i32* %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %41 = call i64 @DepthToFormat(i32* %39, %struct.TYPE_6__* %40, i32* %12)
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %7, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i64, i64* %13, align 8
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %44, %36
  br label %53

53:                                               ; preds = %52, %35
  %54 = call i32 @xcb_depth_next(%struct.TYPE_7__* %10)
  br label %22

55:                                               ; preds = %22
  %56 = load i64, i64* %9, align 8
  ret i64 %56
}

declare dso_local { i64, %struct.TYPE_6__* } @xcb_screen_allowed_depths_iterator(i32*) #1

declare dso_local i32 @video_format_ApplyRotation(i32*, i32*) #1

declare dso_local i64 @DepthToFormat(i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @xcb_depth_next(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
