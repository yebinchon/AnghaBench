; ModuleID = '/home/carl/AnghaBench/vlc/test/src/input/extr_thumbnail.c_thumbnailer_callback.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/input/extr_thumbnail.c_thumbnailer_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.test_ctx = type { i64, i32, i32, i32 }

@test_params = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Expected failure but got a thumbnail\00", align 1
@VLC_CODEC_ARGB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Expected a thumbnail but got a failure\00", align 1
@MOCK_DURATION = common dso_local global i32 0, align 4
@VLC_TICK_0 = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_6__*)* @thumbnailer_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thumbnailer_callback(i8* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.test_ctx*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.test_ctx*
  store %struct.test_ctx* %7, %struct.test_ctx** %5, align 8
  %8 = load %struct.test_ctx*, %struct.test_ctx** %5, align 8
  %9 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %8, i32 0, i32 2
  %10 = call i32 @vlc_mutex_lock(i32* %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** @test_params, align 8
  %15 = load %struct.test_ctx*, %struct.test_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %13
  %24 = phi i1 [ false, %13 ], [ true, %22 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VLC_CODEC_ARGB, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  br label %49

35:                                               ; preds = %2
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @test_params, align 8
  %37 = load %struct.test_ctx*, %struct.test_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %35
  %46 = phi i1 [ false, %35 ], [ true, %44 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  br label %49

49:                                               ; preds = %45, %23
  %50 = load %struct.test_ctx*, %struct.test_ctx** %5, align 8
  %51 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %50, i32 0, i32 1
  store i32 1, i32* %51, align 8
  %52 = load %struct.test_ctx*, %struct.test_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %52, i32 0, i32 3
  %54 = call i32 @vlc_cond_signal(i32* %53)
  %55 = load %struct.test_ctx*, %struct.test_ctx** %5, align 8
  %56 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %55, i32 0, i32 2
  %57 = call i32 @vlc_mutex_unlock(i32* %56)
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
