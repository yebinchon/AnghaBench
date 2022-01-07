; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_test_request_insert.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_test_request_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callback_ctx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vlc_playlist_callbacks = type { i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@callback_on_items_added = common dso_local global i32 0, align 4
@CALLBACK_CTX_INITIALIZER = common dso_local global %struct.callback_ctx zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_request_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_request_insert() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [5 x i32*], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlc_playlist_callbacks, align 4
  %5 = alloca %struct.callback_ctx, align 8
  %6 = alloca i32*, align 8
  %7 = call i32* @vlc_playlist_New(i32* null)
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = ptrtoint i32* %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = getelementptr inbounds [5 x i32*], [5 x i32*]* %2, i64 0, i64 0
  %12 = call i32 @CreateDummyMediaArray(i32** %11, i32 5)
  %13 = load i32*, i32** %1, align 8
  %14 = getelementptr inbounds [5 x i32*], [5 x i32*]* %2, i64 0, i64 0
  %15 = call i32 @vlc_playlist_Append(i32* %13, i32** %14, i32 3)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @VLC_SUCCESS, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = getelementptr inbounds %struct.vlc_playlist_callbacks, %struct.vlc_playlist_callbacks* %4, i32 0, i32 0
  %22 = load i32, i32* @callback_on_items_added, align 4
  store i32 %22, i32* %21, align 4
  %23 = bitcast %struct.callback_ctx* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.callback_ctx* @CALLBACK_CTX_INITIALIZER to i8*), i64 16, i1 false)
  %24 = load i32*, i32** %1, align 8
  %25 = call i32* @vlc_playlist_AddListener(i32* %24, %struct.vlc_playlist_callbacks* %4, %struct.callback_ctx* %5, i32 0)
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = ptrtoint i32* %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = getelementptr inbounds [5 x i32*], [5 x i32*]* %2, i64 0, i64 3
  %31 = call i32 @vlc_playlist_RequestInsert(i32* %29, i32 10, i32** %30, i32 2)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @VLC_SUCCESS, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @vlc_playlist_Count(i32* %37)
  %39 = icmp eq i32 %38, 5
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = call i32 @EXPECT_AT(i32 0, i32 0)
  %43 = call i32 @EXPECT_AT(i32 1, i32 1)
  %44 = call i32 @EXPECT_AT(i32 2, i32 2)
  %45 = call i32 @EXPECT_AT(i32 3, i32 3)
  %46 = call i32 @EXPECT_AT(i32 4, i32 4)
  %47 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 1
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 3
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 2
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 5
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = call i32 @callback_ctx_destroy(%struct.callback_ctx* %5)
  %82 = load i32*, i32** %1, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @vlc_playlist_RemoveListener(i32* %82, i32* %83)
  %85 = getelementptr inbounds [5 x i32*], [5 x i32*]* %2, i64 0, i64 0
  %86 = call i32 @DestroyMediaArray(i32** %85, i32 5)
  %87 = load i32*, i32** %1, align 8
  %88 = call i32 @vlc_playlist_Delete(i32* %87)
  ret void
}

declare dso_local i32* @vlc_playlist_New(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CreateDummyMediaArray(i32**, i32) #1

declare dso_local i32 @vlc_playlist_Append(i32*, i32**, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @vlc_playlist_AddListener(i32*, %struct.vlc_playlist_callbacks*, %struct.callback_ctx*, i32) #1

declare dso_local i32 @vlc_playlist_RequestInsert(i32*, i32, i32**, i32) #1

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
