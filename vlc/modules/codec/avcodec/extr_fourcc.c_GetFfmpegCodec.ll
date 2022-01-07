; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_fourcc.c_GetFfmpegCodec.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_fourcc.c_GetFfmpegCodec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_avcodec_fourcc = type { i64, i32 }

@video_codecs = common dso_local global %struct.vlc_avcodec_fourcc* null, align 8
@audio_codecs = common dso_local global %struct.vlc_avcodec_fourcc* null, align 8
@spu_codecs = common dso_local global %struct.vlc_avcodec_fourcc* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetFfmpegCodec(i32 %0, i64 %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.vlc_avcodec_fourcc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %26 [
    i32 128, label %14
    i32 130, label %18
    i32 129, label %22
  ]

14:                                               ; preds = %4
  %15 = load %struct.vlc_avcodec_fourcc*, %struct.vlc_avcodec_fourcc** @video_codecs, align 8
  store %struct.vlc_avcodec_fourcc* %15, %struct.vlc_avcodec_fourcc** %10, align 8
  %16 = load %struct.vlc_avcodec_fourcc*, %struct.vlc_avcodec_fourcc** @video_codecs, align 8
  %17 = call i64 @ARRAY_SIZE(%struct.vlc_avcodec_fourcc* %16)
  store i64 %17, i64* %11, align 8
  br label %27

18:                                               ; preds = %4
  %19 = load %struct.vlc_avcodec_fourcc*, %struct.vlc_avcodec_fourcc** @audio_codecs, align 8
  store %struct.vlc_avcodec_fourcc* %19, %struct.vlc_avcodec_fourcc** %10, align 8
  %20 = load %struct.vlc_avcodec_fourcc*, %struct.vlc_avcodec_fourcc** @audio_codecs, align 8
  %21 = call i64 @ARRAY_SIZE(%struct.vlc_avcodec_fourcc* %20)
  store i64 %21, i64* %11, align 8
  br label %27

22:                                               ; preds = %4
  %23 = load %struct.vlc_avcodec_fourcc*, %struct.vlc_avcodec_fourcc** @spu_codecs, align 8
  store %struct.vlc_avcodec_fourcc* %23, %struct.vlc_avcodec_fourcc** %10, align 8
  %24 = load %struct.vlc_avcodec_fourcc*, %struct.vlc_avcodec_fourcc** @spu_codecs, align 8
  %25 = call i64 @ARRAY_SIZE(%struct.vlc_avcodec_fourcc* %24)
  store i64 %25, i64* %11, align 8
  br label %27

26:                                               ; preds = %4
  store %struct.vlc_avcodec_fourcc* null, %struct.vlc_avcodec_fourcc** %10, align 8
  store i64 0, i64* %11, align 8
  br label %27

27:                                               ; preds = %26, %22, %18, %14
  %28 = load i32, i32* %6, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @vlc_fourcc_GetCodec(i32 %28, i64 %29)
  store i64 %30, i64* %7, align 8
  store i64 0, i64* %12, align 8
  br label %31

31:                                               ; preds = %63, %27
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %66

35:                                               ; preds = %31
  %36 = load %struct.vlc_avcodec_fourcc*, %struct.vlc_avcodec_fourcc** %10, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds %struct.vlc_avcodec_fourcc, %struct.vlc_avcodec_fourcc* %36, i64 %37
  %39 = getelementptr inbounds %struct.vlc_avcodec_fourcc, %struct.vlc_avcodec_fourcc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %35
  %44 = load i32*, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.vlc_avcodec_fourcc*, %struct.vlc_avcodec_fourcc** %10, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds %struct.vlc_avcodec_fourcc, %struct.vlc_avcodec_fourcc* %47, i64 %48
  %50 = getelementptr inbounds %struct.vlc_avcodec_fourcc, %struct.vlc_avcodec_fourcc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %46, %43
  %54 = load i8**, i8*** %9, align 8
  %55 = icmp ne i8** %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = load i64, i64* %7, align 8
  %59 = call i8* @vlc_fourcc_GetDescription(i32 %57, i64 %58)
  %60 = load i8**, i8*** %9, align 8
  store i8* %59, i8** %60, align 8
  br label %61

61:                                               ; preds = %56, %53
  store i32 1, i32* %5, align 4
  br label %67

62:                                               ; preds = %35
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %12, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %12, align 8
  br label %31

66:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %61
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @ARRAY_SIZE(%struct.vlc_avcodec_fourcc*) #1

declare dso_local i64 @vlc_fourcc_GetCodec(i32, i64) #1

declare dso_local i8* @vlc_fourcc_GetDescription(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
