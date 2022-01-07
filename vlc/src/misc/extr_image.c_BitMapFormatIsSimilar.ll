; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_image.c_BitMapFormatIsSimilar.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_image.c_BitMapFormatIsSimilar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@VLC_CODEC_RGB15 = common dso_local global i64 0, align 8
@VLC_CODEC_RGB16 = common dso_local global i64 0, align 8
@VLC_CODEC_RGB24 = common dso_local global i64 0, align 8
@VLC_CODEC_RGB32 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_5__*)* @BitMapFormatIsSimilar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BitMapFormatIsSimilar(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VLC_CODEC_RGB15, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %31, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VLC_CODEC_RGB16, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VLC_CODEC_RGB24, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VLC_CODEC_RGB32, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %25, %19, %13, %2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = bitcast %struct.TYPE_5__* %6 to i8*
  %34 = bitcast %struct.TYPE_5__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 32, i1 false)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = bitcast %struct.TYPE_5__* %7 to i8*
  %37 = bitcast %struct.TYPE_5__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 32, i1 false)
  %38 = call i32 @video_format_FixRgb(%struct.TYPE_5__* %6)
  %39 = call i32 @video_format_FixRgb(%struct.TYPE_5__* %7)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %41, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51, %45, %31
  store i32 0, i32* %3, align 4
  br label %60

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %25
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %57
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @video_format_FixRgb(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
