; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/matrix/extr_message.c_SetMessageFont.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/matrix/extr_message.c_SetMessageFont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOGPIXELSY = common dso_local global i32 0, align 4
@FW_BOLD = common dso_local global i32 0, align 4
@FW_NORMAL = common dso_local global i32 0, align 4
@ANSI_CHARSET = common dso_local global i32 0, align 4
@OUT_DEFAULT_PRECIS = common dso_local global i32 0, align 4
@CLIP_DEFAULT_PRECIS = common dso_local global i32 0, align 4
@ANTIALIASED_QUALITY = common dso_local global i32 0, align 4
@DEFAULT_PITCH = common dso_local global i32 0, align 4
@g_hFont = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetMessageFont(i32 %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @GetDC(i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @LOGPIXELSY, align 4
  %17 = call i32 @GetDeviceCaps(i32 %15, i32 %16)
  %18 = call i32 @MulDiv(i32 %14, i32 %17, i32 72)
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @ReleaseDC(i32 %20, i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @FW_BOLD, align 4
  br label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @FW_NORMAL, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = load i32, i32* @ANSI_CHARSET, align 4
  %33 = load i32, i32* @OUT_DEFAULT_PRECIS, align 4
  %34 = load i32, i32* @CLIP_DEFAULT_PRECIS, align 4
  %35 = load i32, i32* @ANTIALIASED_QUALITY, align 4
  %36 = load i32, i32* @DEFAULT_PITCH, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @CreateFont(i32 %23, i32 0, i32 0, i32 0, i32 %31, i32 0, i32 0, i32 0, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32* %37)
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %30
  %42 = load i64, i64* @g_hFont, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i64, i64* @g_hFont, align 8
  %46 = call i32 @DeleteObject(i64 %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i64, i64* %11, align 8
  store i64 %48, i64* @g_hFont, align 8
  br label %49

49:                                               ; preds = %47, %30
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @MulDiv(i32, i32, i32) #1

declare dso_local i32 @GetDeviceCaps(i32, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i64 @CreateFont(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @DeleteObject(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
