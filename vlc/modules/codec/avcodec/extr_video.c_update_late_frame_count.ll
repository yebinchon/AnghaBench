; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_video.c_update_late_frame_count.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_video.c_update_late_frame_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, i64, i32 }
%struct.TYPE_9__ = type { i32 }

@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@BLOCK_FLAG_PREROLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_9__*, i64, i64, i64, i32)* @update_late_frame_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_late_frame_count(%struct.TYPE_7__* %0, %struct.TYPE_9__* %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %13, align 8
  %19 = load i64, i64* @VLC_TICK_INVALID, align 8
  store i64 %19, i64* %14, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %6
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BLOCK_FLAG_PREROLL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %22, %6
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i64 @decoder_GetDisplayDate(%struct.TYPE_7__* %30, i64 %31, i64 %32)
  store i64 %33, i64* %14, align 8
  br label %34

34:                                               ; preds = %29, %22
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @VLC_TICK_INVALID, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %10, align 8
  %41 = sub nsw i64 %39, %40
  %42 = sdiv i64 %41, 2
  br label %45

43:                                               ; preds = %34
  %44 = call i64 @VLC_TICK_FROM_MS(i32 20)
  br label %45

45:                                               ; preds = %43, %38
  %46 = phi i64 [ %42, %38 ], [ %44, %43 ]
  store i64 %46, i64* %15, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* @VLC_TICK_INVALID, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %83

50:                                               ; preds = %45
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* %15, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i64, i64* %9, align 8
  %55 = icmp sle i64 %53, %54
  br i1 %55, label %56, label %83

56:                                               ; preds = %50
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %14, align 8
  %67 = sub nsw i64 %65, %66
  %68 = icmp sgt i64 %64, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %14, align 8
  %72 = sub nsw i64 %70, %71
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  br label %89

75:                                               ; preds = %61
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  br label %78

78:                                               ; preds = %75, %56
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %80, align 8
  br label %89

83:                                               ; preds = %50, %45
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %69, %83, %78
  ret void
}

declare dso_local i64 @decoder_GetDisplayDate(%struct.TYPE_7__*, i64, i64) #1

declare dso_local i64 @VLC_TICK_FROM_MS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
