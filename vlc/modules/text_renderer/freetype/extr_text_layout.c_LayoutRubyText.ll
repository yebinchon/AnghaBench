; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/extr_text_layout.c_LayoutRubyText.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/extr_text_layout.c_LayoutRubyText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*, i32**)* @LayoutRubyText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LayoutRubyText(i32* %0, i32* %1, i32 %2, i32* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32** %4, i32*** %11, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 8, %17
  %19 = trunc i64 %18 to i32
  %20 = call i32** @malloc(i32 %19)
  store i32** %20, i32*** %13, align 8
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %31, %5
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i32*, i32** %10, align 8
  %27 = load i32**, i32*** %13, align 8
  %28 = load i32, i32* %14, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  store i32* %26, i32** %30, align 8
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %14, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %14, align 4
  br label %21

34:                                               ; preds = %21
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i32**, i32*** %13, align 8
  %39 = call i32* @BuildParagraph(i32* %35, i32 %36, i32* %37, i32** %38, i32* null, i32 1, i32* %12)
  store i32* %39, i32** %15, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %34
  %43 = load i32**, i32*** %13, align 8
  %44 = call i32 @free(i32** %43)
  %45 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %45, i32* %6, align 4
  br label %66

46:                                               ; preds = %34
  %47 = load i32*, i32** %7, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 %49, 1
  %51 = load i32**, i32*** %11, align 8
  %52 = call i64 @LayoutLine(i32* %47, i32* %48, i32 0, i32 %50, i32 0, i32** %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load i32**, i32*** %13, align 8
  %56 = call i32 @free(i32** %55)
  %57 = load i32*, i32** %15, align 8
  %58 = call i32 @FreeParagraph(i32* %57)
  %59 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %59, i32* %6, align 4
  br label %66

60:                                               ; preds = %46
  %61 = load i32*, i32** %15, align 8
  %62 = call i32 @FreeParagraph(i32* %61)
  %63 = load i32**, i32*** %13, align 8
  %64 = call i32 @free(i32** %63)
  %65 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %60, %54, %42
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32** @malloc(i32) #1

declare dso_local i32* @BuildParagraph(i32*, i32, i32*, i32**, i32*, i32, i32*) #1

declare dso_local i32 @free(i32**) #1

declare dso_local i64 @LayoutLine(i32*, i32*, i32, i32, i32, i32**) #1

declare dso_local i32 @FreeParagraph(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
