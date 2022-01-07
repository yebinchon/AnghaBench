; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_player_set_next_mock_media.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_player_set_next_mock_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.media_params = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctx*, i8*, %struct.media_params*)* @player_set_next_mock_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @player_set_next_mock_media(%struct.ctx* %0, i8* %1, %struct.media_params* %2) #0 {
  %4 = alloca %struct.ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.media_params*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ctx* %0, %struct.ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.media_params* %2, %struct.media_params** %6, align 8
  %9 = load %struct.ctx*, %struct.ctx** %4, align 8
  %10 = getelementptr inbounds %struct.ctx, %struct.ctx* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32* @vlc_player_GetCurrentMedia(i32 %11)
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load %struct.ctx*, %struct.ctx** %4, align 8
  %16 = getelementptr inbounds %struct.ctx, %struct.ctx* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.ctx*, %struct.ctx** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.media_params*, %struct.media_params** %6, align 8
  %25 = call i32 @player_set_current_mock_media(%struct.ctx* %22, i8* %23, %struct.media_params* %24, i32 0)
  br label %46

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.media_params*, %struct.media_params** %6, align 8
  %29 = call i32* @create_mock_media(i8* %27, %struct.media_params* %28)
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = ptrtoint i32* %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.ctx*, %struct.ctx** %4, align 8
  %34 = getelementptr inbounds %struct.ctx, %struct.ctx* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.ctx*, %struct.ctx** %4, align 8
  %41 = getelementptr inbounds %struct.ctx, %struct.ctx* %40, i32 0, i32 0
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @vlc_vector_push(i32* %41, i32* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @assert(i32 %44)
  br label %46

46:                                               ; preds = %26, %14
  ret void
}

declare dso_local i32* @vlc_player_GetCurrentMedia(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @player_set_current_mock_media(%struct.ctx*, i8*, %struct.media_params*, i32) #1

declare dso_local i32* @create_mock_media(i8*, %struct.media_params*) #1

declare dso_local i32 @vlc_vector_push(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
