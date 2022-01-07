; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_fourcc.c_vlc_fourcc_GetCodecAudio.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_fourcc.c_vlc_fourcc_GetCodecAudio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_CODEC_FL32 = common dso_local global i64 0, align 8
@VLC_CODEC_FL64 = common dso_local global i64 0, align 8
@VLC_CODEC_U8 = common dso_local global i64 0, align 8
@VLC_CODEC_S16L = common dso_local global i64 0, align 8
@VLC_CODEC_S24L = common dso_local global i64 0, align 8
@VLC_CODEC_S32L = common dso_local global i64 0, align 8
@VLC_CODEC_S8 = common dso_local global i64 0, align 8
@VLC_CODEC_S16B = common dso_local global i64 0, align 8
@VLC_CODEC_S24B = common dso_local global i64 0, align 8
@VLC_CODEC_S32B = common dso_local global i64 0, align 8
@AUDIO_ES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vlc_fourcc_GetCodecAudio(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = add nsw i32 %7, 7
  %9 = sdiv i32 %8, 8
  store i32 %9, i32* %6, align 4
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @VLC_FOURCC(i8 signext 97, i8 signext 102, i8 signext 108, i8 signext 116)
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %19 [
    i32 4, label %15
    i32 8, label %17
  ]

15:                                               ; preds = %13
  %16 = load i64, i64* @VLC_CODEC_FL32, align 8
  store i64 %16, i64* %3, align 8
  br label %69

17:                                               ; preds = %13
  %18 = load i64, i64* @VLC_CODEC_FL64, align 8
  store i64 %18, i64* %3, align 8
  br label %69

19:                                               ; preds = %13
  store i64 0, i64* %3, align 8
  br label %69

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @VLC_FOURCC(i8 signext 97, i8 signext 114, i8 signext 97, i8 signext 119)
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %34 [
    i32 1, label %26
    i32 2, label %28
    i32 3, label %30
    i32 4, label %32
  ]

26:                                               ; preds = %24
  %27 = load i64, i64* @VLC_CODEC_U8, align 8
  store i64 %27, i64* %3, align 8
  br label %69

28:                                               ; preds = %24
  %29 = load i64, i64* @VLC_CODEC_S16L, align 8
  store i64 %29, i64* %3, align 8
  br label %69

30:                                               ; preds = %24
  %31 = load i64, i64* @VLC_CODEC_S24L, align 8
  store i64 %31, i64* %3, align 8
  br label %69

32:                                               ; preds = %24
  %33 = load i64, i64* @VLC_CODEC_S32L, align 8
  store i64 %33, i64* %3, align 8
  br label %69

34:                                               ; preds = %24
  store i64 0, i64* %3, align 8
  br label %69

35:                                               ; preds = %20
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @VLC_FOURCC(i8 signext 116, i8 signext 119, i8 signext 111, i8 signext 115)
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  switch i32 %40, label %49 [
    i32 1, label %41
    i32 2, label %43
    i32 3, label %45
    i32 4, label %47
  ]

41:                                               ; preds = %39
  %42 = load i64, i64* @VLC_CODEC_S8, align 8
  store i64 %42, i64* %3, align 8
  br label %69

43:                                               ; preds = %39
  %44 = load i64, i64* @VLC_CODEC_S16B, align 8
  store i64 %44, i64* %3, align 8
  br label %69

45:                                               ; preds = %39
  %46 = load i64, i64* @VLC_CODEC_S24B, align 8
  store i64 %46, i64* %3, align 8
  br label %69

47:                                               ; preds = %39
  %48 = load i64, i64* @VLC_CODEC_S32B, align 8
  store i64 %48, i64* %3, align 8
  br label %69

49:                                               ; preds = %39
  store i64 0, i64* %3, align 8
  br label %69

50:                                               ; preds = %35
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @VLC_FOURCC(i8 signext 115, i8 signext 111, i8 signext 119, i8 signext 116)
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  switch i32 %55, label %64 [
    i32 1, label %56
    i32 2, label %58
    i32 3, label %60
    i32 4, label %62
  ]

56:                                               ; preds = %54
  %57 = load i64, i64* @VLC_CODEC_S8, align 8
  store i64 %57, i64* %3, align 8
  br label %69

58:                                               ; preds = %54
  %59 = load i64, i64* @VLC_CODEC_S16L, align 8
  store i64 %59, i64* %3, align 8
  br label %69

60:                                               ; preds = %54
  %61 = load i64, i64* @VLC_CODEC_S24L, align 8
  store i64 %61, i64* %3, align 8
  br label %69

62:                                               ; preds = %54
  %63 = load i64, i64* @VLC_CODEC_S32L, align 8
  store i64 %63, i64* %3, align 8
  br label %69

64:                                               ; preds = %54
  store i64 0, i64* %3, align 8
  br label %69

65:                                               ; preds = %50
  %66 = load i32, i32* @AUDIO_ES, align 4
  %67 = load i64, i64* %4, align 8
  %68 = call i64 @vlc_fourcc_GetCodec(i32 %66, i64 %67)
  store i64 %68, i64* %3, align 8
  br label %69

69:                                               ; preds = %65, %64, %62, %60, %58, %56, %49, %47, %45, %43, %41, %34, %32, %30, %28, %26, %19, %17, %15
  %70 = load i64, i64* %3, align 8
  ret i64 %70
}

declare dso_local i64 @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @vlc_fourcc_GetCodec(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
