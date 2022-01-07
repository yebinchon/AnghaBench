; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_request.c_vlc_playlist_RequestMove.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_request.c_vlc_playlist_RequestMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.size_vector = type { i64, i32 }

@VLC_VECTOR_INITIALIZER = common dso_local global %struct.size_vector zeroinitializer, align 8
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_playlist_RequestMove(i32* %0, i32** %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.size_vector, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @vlc_playlist_AssertLocked(i32* %15)
  %17 = bitcast %struct.size_vector* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.size_vector* @VLC_VECTOR_INITIALIZER to i8*), i64 16, i1 false)
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @vlc_vector_reserve(%struct.size_vector* %12, i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %22, i32* %6, align 4
  br label %61

23:                                               ; preds = %5
  %24 = load i32*, i32** %7, align 8
  %25 = load i32**, i32*** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @vlc_playlist_FindIndices(i32* %24, i32** %25, i64 %26, i32 %27, %struct.size_vector* %12)
  %29 = getelementptr inbounds %struct.size_vector, %struct.size_vector* %12, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %13, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %23
  %34 = load i32*, i32** %7, align 8
  %35 = call i64 @vlc_playlist_Count(i32* %34)
  store i64 %35, i64* %14, align 8
  %36 = load i64, i64* %14, align 8
  %37 = load i64, i64* %13, align 8
  %38 = icmp uge i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %13, align 8
  %43 = add i64 %41, %42
  %44 = load i64, i64* %14, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %13, align 8
  %49 = sub i64 %47, %48
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %46, %33
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds %struct.size_vector, %struct.size_vector* %12, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.size_vector, %struct.size_vector* %12, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @vlc_playlist_MoveBySlices(i32* %51, i32 %53, i64 %55, i64 %56)
  br label %58

58:                                               ; preds = %50, %23
  %59 = call i32 @vlc_vector_destroy(%struct.size_vector* %12)
  %60 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %21
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @vlc_playlist_AssertLocked(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vlc_vector_reserve(%struct.size_vector*, i64) #1

declare dso_local i32 @vlc_playlist_FindIndices(i32*, i32**, i64, i32, %struct.size_vector*) #1

declare dso_local i64 @vlc_playlist_Count(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_playlist_MoveBySlices(i32*, i32, i64, i64) #1

declare dso_local i32 @vlc_vector_destroy(%struct.size_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
