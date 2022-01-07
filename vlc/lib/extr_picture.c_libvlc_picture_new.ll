; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_picture.c_libvlc_picture_new.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_picture.c_libvlc_picture_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@VLC_CODEC_ARGB = common dso_local global i32 0, align 4
@VLC_CODEC_JPEG = common dso_local global i32 0, align 4
@VLC_CODEC_PNG = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @libvlc_picture_new(i32* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = call %struct.TYPE_9__* @malloc(i32 20)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %14, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %18 = icmp eq %struct.TYPE_9__* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  br label %64

23:                                               ; preds = %6
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 4
  %26 = call i32 @vlc_atomic_rc_init(i32* %25)
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @MS_FROM_VLC_TICK(i32 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %10, align 4
  switch i32 %36, label %43 [
    i32 130, label %37
    i32 129, label %39
    i32 128, label %41
  ]

37:                                               ; preds = %23
  %38 = load i32, i32* @VLC_CODEC_ARGB, align 4
  store i32 %38, i32* %15, align 4
  br label %45

39:                                               ; preds = %23
  %40 = load i32, i32* @VLC_CODEC_JPEG, align 4
  store i32 %40, i32* %15, align 4
  br label %45

41:                                               ; preds = %23
  %42 = load i32, i32* @VLC_CODEC_PNG, align 4
  store i32 %42, i32* %15, align 4
  br label %45

43:                                               ; preds = %23
  %44 = call i32 (...) @vlc_assert_unreachable()
  br label %45

45:                                               ; preds = %43, %41, %39, %37
  %46 = load i32*, i32** %8, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i64 @picture_Export(i32* %46, i32* %48, i32* %50, %struct.TYPE_8__* %51, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load i64, i64* @VLC_SUCCESS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %45
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %61 = call i32 @free(%struct.TYPE_9__* %60)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  br label %64

62:                                               ; preds = %45
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %7, align 8
  br label %64

64:                                               ; preds = %62, %59, %22
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  ret %struct.TYPE_9__* %65
}

declare dso_local %struct.TYPE_9__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_atomic_rc_init(i32*) #1

declare dso_local i32 @MS_FROM_VLC_TICK(i32) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i64 @picture_Export(i32*, i32*, i32*, %struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
