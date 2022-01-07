; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_preparse.c_vlc_playlist_ExpandItem.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_preparse.c_vlc_playlist_ExpandItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@VLC_VECTOR_INITIALIZER = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_playlist_ExpandItem(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @vlc_playlist_AssertLocked(i32* %9)
  %11 = bitcast %struct.TYPE_5__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_5__* @VLC_VECTOR_INITIALIZER to i8*), i64 8, i1 false)
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @vlc_playlist_CollectChildren(i32* %12, %struct.TYPE_5__* %7, i32* %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @vlc_playlist_Expand(i32* %15, i64 %16, i32 %18, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = call i32 @vlc_vector_destroy(%struct.TYPE_5__* %7)
  %23 = load i32, i32* %8, align 4
  ret i32 %23
}

declare dso_local i32 @vlc_playlist_AssertLocked(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vlc_playlist_CollectChildren(i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @vlc_playlist_Expand(i32*, i64, i32, i32) #1

declare dso_local i32 @vlc_vector_destroy(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
