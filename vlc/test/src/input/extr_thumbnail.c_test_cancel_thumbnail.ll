; ModuleID = '/home/carl/AnghaBench/vlc/test/src/input/extr_thumbnail.c_test_cancel_thumbnail.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/input/extr_thumbnail.c_test_cancel_thumbnail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.test_ctx = type { i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"mock://video_track_count=1;audio_track_count=1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"mock item\00", align 1
@VLC_THUMBNAILER_SEEK_PRECISE = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@thumbnailer_callback_cancel = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @test_cancel_thumbnail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cancel_thumbnail(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.test_ctx, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @VLC_OBJECT(i32 %12)
  %14 = call i32* @vlc_thumbnailer_Create(i32 %13)
  store i32* %14, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %4, i32 0, i32 2
  %20 = call i32 @vlc_cond_init(i32* %19)
  %21 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %4, i32 0, i32 1
  %22 = call i32 @vlc_mutex_init(i32* %21)
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32* @input_item_New(i8* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %4, i32 0, i32 1
  %30 = call i32 @vlc_mutex_lock(i32* %29)
  store i32 0, i32* %7, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = call i64 @VLC_TICK_FROM_SEC(i32 1)
  %33 = load i32, i32* @VLC_THUMBNAILER_SEEK_PRECISE, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* @VLC_TICK_INVALID, align 4
  %36 = load i32, i32* @thumbnailer_callback_cancel, align 4
  %37 = call i32* @vlc_thumbnailer_RequestByTime(i32* %31, i64 %32, i32 %33, i32* %34, i32 %35, i32 %36, %struct.test_ctx* %4)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @vlc_thumbnailer_Cancel(i32* %38, i32* %39)
  br label %41

41:                                               ; preds = %45, %1
  %42 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %4, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = call i64 (...) @vlc_tick_now()
  %47 = call i64 @VLC_TICK_FROM_SEC(i32 1)
  %48 = add nsw i64 %46, %47
  store i64 %48, i64* %9, align 8
  %49 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %4, i32 0, i32 2
  %50 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %4, i32 0, i32 1
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @vlc_cond_timedwait(i32* %49, i32* %50, i64 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @ETIMEDOUT, align 4
  %55 = icmp ne i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  br label %41

58:                                               ; preds = %41
  %59 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %4, i32 0, i32 1
  %60 = call i32 @vlc_mutex_unlock(i32* %59)
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @input_item_Release(i32* %61)
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @vlc_thumbnailer_Release(i32* %63)
  ret void
}

declare dso_local i32* @vlc_thumbnailer_Create(i32) #1

declare dso_local i32 @VLC_OBJECT(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_cond_init(i32*) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i32* @input_item_New(i8*, i8*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32* @vlc_thumbnailer_RequestByTime(i32*, i64, i32, i32*, i32, i32, %struct.test_ctx*) #1

declare dso_local i64 @VLC_TICK_FROM_SEC(i32) #1

declare dso_local i32 @vlc_thumbnailer_Cancel(i32*, i32*) #1

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local i32 @vlc_cond_timedwait(i32*, i32*, i64) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @input_item_Release(i32*) #1

declare dso_local i32 @vlc_thumbnailer_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
