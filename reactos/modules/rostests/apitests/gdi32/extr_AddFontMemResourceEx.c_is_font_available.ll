; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_AddFontMemResourceEx.c_is_font_available.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_AddFontMemResourceEx.c_is_font_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FW_DONTCARE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DEFAULT_CHARSET = common dso_local global i32 0, align 4
@OUT_DEFAULT_PRECIS = common dso_local global i32 0, align 4
@CLIP_DEFAULT_PRECIS = common dso_local global i32 0, align 4
@DEFAULT_QUALITY = common dso_local global i32 0, align 4
@DEFAULT_PITCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"GetTextFaceA error %lu for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @is_font_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_font_available(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @FW_DONTCARE, align 4
  %11 = load i32, i32* @FALSE, align 4
  %12 = load i32, i32* @FALSE, align 4
  %13 = load i32, i32* @FALSE, align 4
  %14 = load i32, i32* @DEFAULT_CHARSET, align 4
  %15 = load i32, i32* @OUT_DEFAULT_PRECIS, align 4
  %16 = load i32, i32* @CLIP_DEFAULT_PRECIS, align 4
  %17 = load i32, i32* @DEFAULT_QUALITY, align 4
  %18 = load i32, i32* @DEFAULT_PITCH, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @CreateFontA(i32 0, i32 0, i32 0, i32 0, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i8* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @SelectObject(i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = call i32 @SetLastError(i32 -559038737)
  %25 = load i32, i32* %4, align 4
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %27 = call i32 @GetTextFaceA(i32 %25, i32 64, i8* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 (...) @GetLastError()
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %29, i8* %30)
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @SelectObject(i32 %32, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @DeleteObject(i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %2
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @_strcmpi(i8* %40, i8* %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %48

46:                                               ; preds = %2
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %39
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @CreateFontA(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @GetTextFaceA(i32, i32, i8*) #1

declare dso_local i32 @ok(i32, i8*, i32, i8*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @_strcmpi(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
