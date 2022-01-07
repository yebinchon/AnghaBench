; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_test_request_remove_without_hint.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_test_request_remove_without_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callback_ctx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vlc_playlist_callbacks = type { i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@callback_on_items_removed = common dso_local global i32 0, align 4
@CALLBACK_CTX_INITIALIZER = common dso_local global %struct.callback_ctx zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_request_remove_without_hint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_request_remove_without_hint() #0 {
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
  %23 = load i32, i32* @callback_on_items_removed, align 4
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
  %32 = call i32* @vlc_playlist_Get(i32* %31, i32 3)
  store i32* %32, i32** %30, align 8
  %33 = getelementptr inbounds i32*, i32** %30, i64 1
  %34 = load i32*, i32** %1, align 8
  %35 = call i32* @vlc_playlist_Get(i32* %34, i32 4)
  store i32* %35, i32** %33, align 8
  %36 = getelementptr inbounds i32*, i32** %33, i64 1
  %37 = load i32*, i32** %1, align 8
  %38 = call i32* @vlc_playlist_Get(i32* %37, i32 5)
  store i32* %38, i32** %36, align 8
  %39 = getelementptr inbounds i32*, i32** %36, i64 1
  %40 = load i32*, i32** %1, align 8
  %41 = call i32* @vlc_playlist_Get(i32* %40, i32 6)
  store i32* %41, i32** %39, align 8
  %42 = load i32*, i32** %1, align 8
  %43 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 0
  %44 = call i32 @vlc_playlist_RequestRemove(i32* %42, i32** %43, i32 4, i32 -1)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @VLC_SUCCESS, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32*, i32** %1, align 8
  %51 = call i32 @vlc_playlist_Count(i32* %50)
  %52 = icmp eq i32 %51, 6
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = call i32 @EXPECT_AT(i32 0, i32 0)
  %56 = call i32 @EXPECT_AT(i32 1, i32 1)
  %57 = call i32 @EXPECT_AT(i32 2, i32 2)
  %58 = call i32 @EXPECT_AT(i32 3, i32 7)
  %59 = call i32 @EXPECT_AT(i32 4, i32 8)
  %60 = call i32 @EXPECT_AT(i32 5, i32 9)
  %61 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 1
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 3
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 4
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 6
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = call i32 @callback_ctx_destroy(%struct.callback_ctx* %5)
  %96 = load i32*, i32** %1, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @vlc_playlist_RemoveListener(i32* %96, i32* %97)
  %99 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 0
  %100 = call i32 @DestroyMediaArray(i32** %99, i32 10)
  %101 = load i32*, i32** %1, align 8
  %102 = call i32 @vlc_playlist_Delete(i32* %101)
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

declare dso_local i32 @vlc_playlist_RequestRemove(i32*, i32**, i32, i32) #1

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
