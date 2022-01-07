; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_end_poststop_medias.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_test_end_poststop_medias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { %struct.TYPE_6__, i32, %struct.TYPE_5__, i32* }
%struct.TYPE_6__ = type { i64, i64* }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctx*)* @test_end_poststop_medias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_end_poststop_medias(%struct.ctx* %0) #0 {
  %2 = alloca %struct.ctx*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ctx* %0, %struct.ctx** %2, align 8
  %7 = load %struct.ctx*, %struct.ctx** %2, align 8
  %8 = getelementptr inbounds %struct.ctx, %struct.ctx* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %3, align 8
  %10 = load %struct.ctx*, %struct.ctx** %2, align 8
  %11 = getelementptr inbounds %struct.ctx, %struct.ctx* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %4, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ugt i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32* @vlc_player_GetCurrentMedia(i32* %19)
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = call i32* @VEC_LAST(%struct.TYPE_7__* %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32* @vlc_player_GetCurrentMedia(i32* %26)
  %28 = icmp eq i32* %25, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %5, align 8
  %34 = load %struct.ctx*, %struct.ctx** %2, align 8
  %35 = call i32 @player_set_current_mock_media(%struct.ctx* %34, i32* null, i32* null, i32 0)
  br label %36

36:                                               ; preds = %42, %1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32*, i32** %3, align 8
  %44 = load %struct.ctx*, %struct.ctx** %2, align 8
  %45 = getelementptr inbounds %struct.ctx, %struct.ctx* %44, i32 0, i32 1
  %46 = call i32 @vlc_player_CondWait(i32* %43, i32* %45)
  br label %36

47:                                               ; preds = %36
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ctx*, %struct.ctx** %2, align 8
  %52 = getelementptr inbounds %struct.ctx, %struct.ctx* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %50, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  store i64 0, i64* %6, align 8
  br label %58

58:                                               ; preds = %81, %47
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %59, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %58
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ctx*, %struct.ctx** %2, align 8
  %72 = getelementptr inbounds %struct.ctx, %struct.ctx* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %70, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  br label %81

81:                                               ; preds = %64
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %6, align 8
  br label %58

84:                                               ; preds = %58
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = call i32* @VEC_LAST(%struct.TYPE_7__* %85)
  %87 = icmp eq i32* %86, null
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load i32*, i32** %3, align 8
  %91 = call i32* @vlc_player_GetCurrentMedia(i32* %90)
  %92 = icmp eq i32* %91, null
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @vlc_player_GetCurrentMedia(i32*) #1

declare dso_local i32* @VEC_LAST(%struct.TYPE_7__*) #1

declare dso_local i32 @player_set_current_mock_media(%struct.ctx*, i32*, i32*, i32) #1

declare dso_local i32 @vlc_player_CondWait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
