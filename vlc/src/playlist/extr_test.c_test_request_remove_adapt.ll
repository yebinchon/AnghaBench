; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_test_request_remove_adapt.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_test_request_remove_adapt.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_request_remove_adapt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_request_remove_adapt() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [11 x i32*], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlc_playlist_callbacks, align 4
  %5 = alloca %struct.callback_ctx, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [7 x i32*], align 16
  %9 = call i32* @vlc_playlist_New(i32* null)
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = ptrtoint i32* %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = getelementptr inbounds [11 x i32*], [11 x i32*]* %2, i64 0, i64 0
  %14 = call i32 @CreateDummyMediaArray(i32** %13, i32 11)
  %15 = load i32*, i32** %1, align 8
  %16 = getelementptr inbounds [11 x i32*], [11 x i32*]* %2, i64 0, i64 0
  %17 = call i32 @vlc_playlist_Append(i32* %15, i32** %16, i32 10)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @VLC_SUCCESS, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = getelementptr inbounds %struct.vlc_playlist_callbacks, %struct.vlc_playlist_callbacks* %4, i32 0, i32 0
  %24 = load i32, i32* @callback_on_items_removed, align 4
  store i32 %24, i32* %23, align 4
  %25 = bitcast %struct.callback_ctx* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 bitcast (%struct.callback_ctx* @CALLBACK_CTX_INITIALIZER to i8*), i64 16, i1 false)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32* @vlc_playlist_AddListener(i32* %26, %struct.vlc_playlist_callbacks* %4, %struct.callback_ctx* %5, i32 0)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = ptrtoint i32* %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = getelementptr inbounds [11 x i32*], [11 x i32*]* %2, i64 0, i64 10
  %32 = load i32*, i32** %31, align 16
  %33 = call i32* @vlc_playlist_item_New(i32* %32, i32 0)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = ptrtoint i32* %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = getelementptr inbounds [7 x i32*], [7 x i32*]* %8, i64 0, i64 0
  %38 = load i32*, i32** %1, align 8
  %39 = call i32* @vlc_playlist_Get(i32* %38, i32 3)
  store i32* %39, i32** %37, align 8
  %40 = getelementptr inbounds i32*, i32** %37, i64 1
  %41 = load i32*, i32** %1, align 8
  %42 = call i32* @vlc_playlist_Get(i32* %41, i32 2)
  store i32* %42, i32** %40, align 8
  %43 = getelementptr inbounds i32*, i32** %40, i64 1
  %44 = load i32*, i32** %1, align 8
  %45 = call i32* @vlc_playlist_Get(i32* %44, i32 6)
  store i32* %45, i32** %43, align 8
  %46 = getelementptr inbounds i32*, i32** %43, i64 1
  %47 = load i32*, i32** %1, align 8
  %48 = call i32* @vlc_playlist_Get(i32* %47, i32 9)
  store i32* %48, i32** %46, align 8
  %49 = getelementptr inbounds i32*, i32** %46, i64 1
  %50 = load i32*, i32** %1, align 8
  %51 = call i32* @vlc_playlist_Get(i32* %50, i32 1)
  store i32* %51, i32** %49, align 8
  %52 = getelementptr inbounds i32*, i32** %49, i64 1
  %53 = load i32*, i32** %7, align 8
  store i32* %53, i32** %52, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 1
  %55 = load i32*, i32** %1, align 8
  %56 = call i32* @vlc_playlist_Get(i32* %55, i32 8)
  store i32* %56, i32** %54, align 8
  %57 = load i32*, i32** %1, align 8
  %58 = getelementptr inbounds [7 x i32*], [7 x i32*]* %8, i64 0, i64 0
  %59 = call i32 @vlc_playlist_RequestRemove(i32* %57, i32** %58, i32 7, i32 3)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @VLC_SUCCESS, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @vlc_playlist_item_Release(i32* %65)
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 @vlc_playlist_Count(i32* %67)
  %69 = icmp eq i32 %68, 4
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = call i32 @EXPECT_AT(i32 0, i32 0)
  %73 = call i32 @EXPECT_AT(i32 1, i32 4)
  %74 = call i32 @EXPECT_AT(i32 2, i32 5)
  %75 = call i32 @EXPECT_AT(i32 3, i32 7)
  %76 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 3
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 8
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 2
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 8
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i64 1
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 6
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 1
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 1
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 1
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 7
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  %138 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i64 2
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 1
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  %147 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i64 2
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 3
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  %156 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i64 2
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 4
  %164 = zext i1 %163 to i32
  %165 = call i32 @assert(i32 %164)
  %166 = call i32 @callback_ctx_destroy(%struct.callback_ctx* %5)
  %167 = load i32*, i32** %1, align 8
  %168 = load i32*, i32** %6, align 8
  %169 = call i32 @vlc_playlist_RemoveListener(i32* %167, i32* %168)
  %170 = getelementptr inbounds [11 x i32*], [11 x i32*]* %2, i64 0, i64 0
  %171 = call i32 @DestroyMediaArray(i32** %170, i32 11)
  %172 = load i32*, i32** %1, align 8
  %173 = call i32 @vlc_playlist_Delete(i32* %172)
  ret void
}

declare dso_local i32* @vlc_playlist_New(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CreateDummyMediaArray(i32**, i32) #1

declare dso_local i32 @vlc_playlist_Append(i32*, i32**, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @vlc_playlist_AddListener(i32*, %struct.vlc_playlist_callbacks*, %struct.callback_ctx*, i32) #1

declare dso_local i32* @vlc_playlist_item_New(i32*, i32) #1

declare dso_local i32* @vlc_playlist_Get(i32*, i32) #1

declare dso_local i32 @vlc_playlist_RequestRemove(i32*, i32**, i32, i32) #1

declare dso_local i32 @vlc_playlist_item_Release(i32*) #1

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
