; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_test_request_move_without_hint.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_test_request_move_without_hint.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_request_move_without_hint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_request_move_without_hint() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [10 x i32*], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlc_playlist_callbacks, align 4
  %5 = alloca %struct.callback_ctx, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [4 x i32*], align 16
  %8 = alloca i32*, align 8
  %9 = call i32* @vlc_playlist_New(i32* null)
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = ptrtoint i32* %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 0
  %14 = call i32 @CreateDummyMediaArray(i32** %13, i32 10)
  %15 = load i32*, i32** %1, align 8
  %16 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 0
  %17 = call i32 @vlc_playlist_Append(i32* %15, i32** %16, i32 10)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @VLC_SUCCESS, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = getelementptr inbounds %struct.vlc_playlist_callbacks, %struct.vlc_playlist_callbacks* %4, i32 0, i32 0
  %24 = load i32, i32* @callback_on_items_moved, align 4
  store i32 %24, i32* %23, align 4
  %25 = bitcast %struct.callback_ctx* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 bitcast (%struct.callback_ctx* @CALLBACK_CTX_INITIALIZER to i8*), i64 16, i1 false)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32* @vlc_playlist_AddListener(i32* %26, %struct.vlc_playlist_callbacks* %4, %struct.callback_ctx* %5, i32 0)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = ptrtoint i32* %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 0
  %32 = load i32*, i32** %1, align 8
  %33 = call i32* @vlc_playlist_Get(i32* %32, i32 5)
  store i32* %33, i32** %31, align 8
  %34 = getelementptr inbounds i32*, i32** %31, i64 1
  %35 = load i32*, i32** %1, align 8
  %36 = call i32* @vlc_playlist_Get(i32* %35, i32 6)
  store i32* %36, i32** %34, align 8
  %37 = getelementptr inbounds i32*, i32** %34, i64 1
  %38 = load i32*, i32** %1, align 8
  %39 = call i32* @vlc_playlist_Get(i32* %38, i32 7)
  store i32* %39, i32** %37, align 8
  %40 = getelementptr inbounds i32*, i32** %37, i64 1
  %41 = load i32*, i32** %1, align 8
  %42 = call i32* @vlc_playlist_Get(i32* %41, i32 8)
  store i32* %42, i32** %40, align 8
  %43 = load i32*, i32** %1, align 8
  %44 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 0
  %45 = call i32 @vlc_playlist_RequestMove(i32* %43, i32** %44, i32 4, i32 2, i32 -1)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @VLC_SUCCESS, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @vlc_playlist_Count(i32* %51)
  %53 = icmp eq i32 %52, 10
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = call i32 @EXPECT_AT(i32 0, i32 0)
  %57 = call i32 @EXPECT_AT(i32 1, i32 1)
  %58 = call i32 @EXPECT_AT(i32 2, i32 5)
  %59 = call i32 @EXPECT_AT(i32 3, i32 6)
  %60 = call i32 @EXPECT_AT(i32 4, i32 7)
  %61 = call i32 @EXPECT_AT(i32 5, i32 8)
  %62 = call i32 @EXPECT_AT(i32 6, i32 2)
  %63 = call i32 @EXPECT_AT(i32 7, i32 3)
  %64 = call i32 @EXPECT_AT(i32 8, i32 4)
  %65 = call i32 @EXPECT_AT(i32 9, i32 9)
  %66 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 1
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 5
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 4
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 10
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load i32*, i32** %1, align 8
  %101 = call i32* @vlc_playlist_Get(i32* %100, i32 3)
  store i32* %101, i32** %8, align 8
  %102 = load i32*, i32** %1, align 8
  %103 = call i32 @vlc_playlist_RequestMove(i32* %102, i32** %8, i32 1, i32 42, i32 -1)
  %104 = call i32 @EXPECT_AT(i32 0, i32 0)
  %105 = call i32 @EXPECT_AT(i32 1, i32 1)
  %106 = call i32 @EXPECT_AT(i32 2, i32 5)
  %107 = call i32 @EXPECT_AT(i32 3, i32 7)
  %108 = call i32 @EXPECT_AT(i32 4, i32 8)
  %109 = call i32 @EXPECT_AT(i32 5, i32 2)
  %110 = call i32 @EXPECT_AT(i32 6, i32 3)
  %111 = call i32 @EXPECT_AT(i32 7, i32 4)
  %112 = call i32 @EXPECT_AT(i32 8, i32 9)
  %113 = call i32 @EXPECT_AT(i32 9, i32 6)
  %114 = call i32 @callback_ctx_destroy(%struct.callback_ctx* %5)
  %115 = load i32*, i32** %1, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @vlc_playlist_RemoveListener(i32* %115, i32* %116)
  %118 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 0
  %119 = call i32 @DestroyMediaArray(i32** %118, i32 10)
  %120 = load i32*, i32** %1, align 8
  %121 = call i32 @vlc_playlist_Delete(i32* %120)
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
