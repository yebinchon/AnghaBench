; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_android.c_Android_Prepare.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_android.c_Android_Prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ANDROID_SYSTEM_FONTS_NOUGAT = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@ANDROID_SYSTEM_FONTS_LEGACY = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i64 0, align 8
@ANDROID_FALLBACK_FONTS = common dso_local global i32 0, align 4
@ANDROID_VENDOR_FONTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Android_Prepare(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i32, i32* @ANDROID_SYSTEM_FONTS_NOUGAT, align 4
  %6 = call i64 @Android_ParseSystemFonts(i32* %4, i32 %5, i32 1)
  %7 = load i64, i64* @VLC_SUCCESS, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @ANDROID_SYSTEM_FONTS_LEGACY, align 4
  %12 = call i64 @Android_ParseSystemFonts(i32* %10, i32 %11, i32 0)
  %13 = load i64, i64* @VLC_ENOMEM, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i64, i64* @VLC_ENOMEM, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %40

18:                                               ; preds = %9
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @ANDROID_FALLBACK_FONTS, align 4
  %21 = call i64 @Android_ParseSystemFonts(i32* %19, i32 %20, i32 0)
  %22 = load i64, i64* @VLC_ENOMEM, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i64, i64* @VLC_ENOMEM, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %2, align 4
  br label %40

27:                                               ; preds = %18
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @ANDROID_VENDOR_FONTS, align 4
  %30 = call i64 @Android_ParseSystemFonts(i32* %28, i32 %29, i32 0)
  %31 = load i64, i64* @VLC_ENOMEM, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i64, i64* @VLC_ENOMEM, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %40

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %1
  %38 = load i64, i64* @VLC_SUCCESS, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %33, %24, %15
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @Android_ParseSystemFonts(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
