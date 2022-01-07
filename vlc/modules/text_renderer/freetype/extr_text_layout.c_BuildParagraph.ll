; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/extr_text_layout.c_BuildParagraph.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/extr_text_layout.c_BuildParagraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32*, i32**, i32**, i32, i32*)* @BuildParagraph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @BuildParagraph(i32* %0, i32 %1, i32* %2, i32** %3, i32** %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32** %3, i32*** %12, align 8
  store i32** %4, i32*** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32*, i32** %11, align 8
  %20 = load i32**, i32*** %12, align 8
  %21 = load i32**, i32*** %13, align 8
  %22 = load i32, i32* %14, align 4
  %23 = call i32* @NewParagraph(i32* %17, i32 %18, i32* %19, i32** %20, i32** %21, i32 %22)
  store i32* %23, i32** %16, align 8
  %24 = load i32*, i32** %16, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %7
  store i32* null, i32** %8, align 8
  br label %49

27:                                               ; preds = %7
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %16, align 8
  %30 = call i64 @ItemizeParagraph(i32* %28, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %42

33:                                               ; preds = %27
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %16, align 8
  %36 = load i32*, i32** %15, align 8
  %37 = call i64 @LoadGlyphs(i32* %34, i32* %35, i32 0, i32 1, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %42

40:                                               ; preds = %33
  %41 = load i32*, i32** %16, align 8
  store i32* %41, i32** %8, align 8
  br label %49

42:                                               ; preds = %39, %32
  %43 = load i32*, i32** %16, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32*, i32** %16, align 8
  %47 = call i32 @FreeParagraph(i32* %46)
  br label %48

48:                                               ; preds = %45, %42
  store i32* null, i32** %8, align 8
  br label %49

49:                                               ; preds = %48, %40, %26
  %50 = load i32*, i32** %8, align 8
  ret i32* %50
}

declare dso_local i32* @NewParagraph(i32*, i32, i32*, i32**, i32**, i32) #1

declare dso_local i64 @ItemizeParagraph(i32*, i32*) #1

declare dso_local i64 @LoadGlyphs(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @FreeParagraph(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
