; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_test_request_move_with_matching_hint.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_test_request_move_with_matching_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callback_ctx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vlc_playlist_callbacks = type { i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@callback_on_items_moved = common dso_local global i32 0, align 4
@CALLBACK_CTX_INITIALIZER = common dso_local global %struct.callback_ctx zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_request_move_with_matching_hint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_request_move_with_matching_hint() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [10 x i32*], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlc_playlist_callbacks, align 4
  %5 = alloca %struct.callback_ctx, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [4 x i32*], align 16
  %8 = call i32* @vlc_playlist_New(i32* null)
  store i32* %8, i32** %1, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = ptrtoint i32* %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 0
  %13 = call i32 @CreateDummyMediaArray(i32** %12, i32 10)
  %14 = load i32*, i32** %1, align 8
  %15 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 0
  %16 = call i32 @vlc_playlist_Append(i32* %14, i32** %15, i32 10)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @VLC_SUCCESS, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = getelementptr inbounds %struct.vlc_playlist_callbacks, %struct.vlc_playlist_callbacks* %4, i32 0, i32 0
  %23 = load i32, i32* @callback_on_items_moved, align 4
  store i32 %23, i32* %22, align 4
  %24 = bitcast %struct.callback_ctx* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.callback_ctx* @CALLBACK_CTX_INITIALIZER to i8*), i64 16, i1 false)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32* @vlc_playlist_AddListener(i32* %25, %struct.vlc_playlist_callbacks* %4, %struct.callback_ctx* %5, i32 0)
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = ptrtoint i32* %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 0
  %31 = load i32*, i32** %1, align 8
  %32 = call i32* @vlc_playlist_Get(i32* %31, i32 5)
  store i32* %32, i32** %30, align 8
  %33 = getelementptr inbounds i32*, i32** %30, i64 1
  %34 = load i32*, i32** %1, align 8
  %35 = call i32* @vlc_playlist_Get(i32* %34, i32 6)
  store i32* %35, i32** %33, align 8
  %36 = getelementptr inbounds i32*, i32** %33, i64 1
  %37 = load i32*, i32** %1, align 8
  %38 = call i32* @vlc_playlist_Get(i32* %37, i32 7)
  store i32* %38, i32** %36, align 8
  %39 = getelementptr inbounds i32*, i32** %36, i64 1
  %40 = load i32*, i32** %1, align 8
  %41 = call i32* @vlc_playlist_Get(i32* %40, i32 8)
  store i32* %41, i32** %39, align 8
  %42 = load i32*, i32** %1, align 8
  %43 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 0
  %44 = call i32 @vlc_playlist_RequestMove(i32* %42, i32** %43, i32 4, i32 2, i32 5)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @VLC_SUCCESS, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32*, i32** %1, align 8
  %51 = call i32 @vlc_playlist_Count(i32* %50)
  %52 = icmp eq i32 %51, 10
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = call i32 @EXPECT_AT(i32 0, i32 0)
  %56 = call i32 @EXPECT_AT(i32 1, i32 1)
  %57 = call i32 @EXPECT_AT(i32 2, i32 5)
  %58 = call i32 @EXPECT_AT(i32 3, i32 6)
  %59 = call i32 @EXPECT_AT(i32 4, i32 7)
  %60 = call i32 @EXPECT_AT(i32 5, i32 8)
  %61 = call i32 @EXPECT_AT(i32 6, i32 2)
  %62 = call i32 @EXPECT_AT(i32 7, i32 3)
  %63 = call i32 @EXPECT_AT(i32 8, i32 4)
  %64 = call i32 @EXPECT_AT(i32 9, i32 9)
  %65 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 1
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 5
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 4
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 10
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = call i32 @callback_ctx_destroy(%struct.callback_ctx* %5)
  %100 = load i32*, i32** %1, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @vlc_playlist_RemoveListener(i32* %100, i32* %101)
  %103 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 0
  %104 = call i32 @DestroyMediaArray(i32** %103, i32 10)
  %105 = load i32*, i32** %1, align 8
  %106 = call i32 @vlc_playlist_Delete(i32* %105)
  ret void
}

declare dso_local i32* @vlc_playlist_New(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CreateDummyMediaArray(i32**, i32) #1

declare dso_local i32 @vlc_playlist_Append(i32*, i32**, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @vlc_playlist_AddListener(i32*, %struct.vlc_playlist_callbacks*, %struct.callback_ctx*, i32) #1

declare dso_local i32* @vlc_playlist_Get(i32*, i32) #1

declare dso_local i32 @vlc_playlist_RequestMove(i32*, i32**, i32, i32, i32) #1

declare dso_local i32 @vlc_playlist_Count(i32*) #1

declare dso_local i32 @EXPECT_AT(i32, i32) #1

declare dso_local i32 @callback_ctx_destroy(%struct.callback_ctx*) #1

declare dso_local i32 @vlc_playlist_RemoveListener(i32*, i32*) #1

declare dso_local i32 @DestroyMediaArray(i32**, i32) #1

declare dso_local i32 @vlc_playlist_Delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
