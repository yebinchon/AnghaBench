; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_vout_spuregion_helper.h_spuregion_CreateFromPicture.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_vout_spuregion_helper.h_spuregion_CreateFromPicture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32, %struct.vlc_logger* }
%struct.vlc_logger = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_7__*, i32*, i8*)* @spuregion_CreateFromPicture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @spuregion_CreateFromPicture(%struct.TYPE_7__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vlc_logger*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %8, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.vlc_logger*, %struct.vlc_logger** %14, align 8
  store %struct.vlc_logger* %15, %struct.vlc_logger** %9, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  store %struct.vlc_logger* null, %struct.vlc_logger** %20, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = call i32* @image_HandlerCreate(%struct.TYPE_7__* %23)
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load i32*, i32** %11, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32* @image_ReadUrl(i32* %28, i8* %29, i32* %30)
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @image_HandlerDelete(i32* %32)
  br label %34

34:                                               ; preds = %27, %3
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.vlc_logger*, %struct.vlc_logger** %9, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store %struct.vlc_logger* %38, %struct.vlc_logger** %40, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %61

44:                                               ; preds = %34
  %45 = load i32*, i32** %6, align 8
  %46 = call %struct.TYPE_8__* @subpicture_region_New(i32* %45)
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %12, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %48 = icmp ne %struct.TYPE_8__* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @picture_Release(i32* %50)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %61

52:                                               ; preds = %44
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @picture_Release(i32* %55)
  %57 = load i32*, i32** %8, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32* %57, i32** %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %4, align 8
  br label %61

61:                                               ; preds = %52, %49, %43
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %62
}

declare dso_local i32* @image_HandlerCreate(%struct.TYPE_7__*) #1

declare dso_local i32* @image_ReadUrl(i32*, i8*, i32*) #1

declare dso_local i32 @image_HandlerDelete(i32*) #1

declare dso_local %struct.TYPE_8__* @subpicture_region_New(i32*) #1

declare dso_local i32 @picture_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
