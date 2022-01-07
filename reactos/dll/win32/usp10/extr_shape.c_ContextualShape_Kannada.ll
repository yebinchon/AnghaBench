; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ContextualShape_Kannada.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ContextualShape_Kannada.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [59 x i8] c"Number of Glyphs and Chars need to match at the beginning\0A\00", align 1
@Kannada_vowels = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"New composed string %s (%i)\0A\00", align 1
@kannada_lex = common dso_local global i32 0, align 4
@Reorder_Like_Kannada = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"reordered string %s\0A\00", align 1
@SecondReorder_Like_Telugu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i32, i32*, i32*, i32, i32*)* @ContextualShape_Kannada to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ContextualShape_Kannada(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5, i32* %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %19, align 4
  store i32* null, i32** %21, align 8
  store i32 0, i32* %22, align 4
  %25 = load i32*, i32** %12, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @get_GSUB_Indic2(i32* %25, i32* %26)
  store i32 %27, i32* %23, align 4
  %28 = load i32*, i32** %16, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %9
  %33 = call i32 @ERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %97

34:                                               ; preds = %9
  %35 = load i32, i32* %14, align 4
  %36 = mul nsw i32 3, %35
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i32* @heap_alloc(i32 %39)
  store i32* %40, i32** %20, align 8
  %41 = load i32*, i32** %20, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i32 @memcpy(i32* %41, i32* %42, i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = load i32*, i32** %20, align 8
  %50 = load i32, i32* @Kannada_vowels, align 4
  %51 = load i32*, i32** %18, align 8
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @DecomposeVowels(i32 %48, i32* %49, i32* %19, i32 %50, i32* %51, i32 %52)
  %54 = load i32*, i32** %20, align 8
  %55 = load i32, i32* %19, align 4
  %56 = call i32 @debugstr_wn(i32* %54, i32 %55)
  %57 = load i32, i32* %19, align 4
  %58 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i32*, i32** %20, align 8
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* @kannada_lex, align 4
  %65 = load i32, i32* @Reorder_Like_Kannada, align 4
  %66 = load i32, i32* %23, align 4
  %67 = call i32 @Indic_ReorderCharacters(i32 %59, i32* %60, i32* %61, i32* %62, i32 %63, i32** %21, i32* %22, i32 %64, i32 %65, i32 %66)
  %68 = load i32*, i32** %20, align 8
  %69 = load i32, i32* %19, align 4
  %70 = call i32 @debugstr_wn(i32* %68, i32 %69)
  %71 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = load i32*, i32** %20, align 8
  %74 = load i32, i32* %19, align 4
  %75 = load i32*, i32** %15, align 8
  %76 = call i32 @GetGlyphIndicesW(i32 %72, i32* %73, i32 %74, i32* %75, i32 0)
  %77 = load i32, i32* %19, align 4
  %78 = load i32*, i32** %16, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = load i32*, i32** %20, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load i32*, i32** %21, align 8
  %85 = load i32, i32* %22, align 4
  %86 = load i32*, i32** %15, align 8
  %87 = load i32*, i32** %16, align 8
  %88 = load i32*, i32** %18, align 8
  %89 = load i32, i32* @kannada_lex, align 4
  %90 = load i32, i32* @SecondReorder_Like_Telugu, align 4
  %91 = load i32, i32* %23, align 4
  %92 = call i32 @ShapeIndicSyllables(i32 %79, i32* %80, i32* %81, i32* %82, i32 %83, i32* %84, i32 %85, i32* %86, i32* %87, i32* %88, i32 %89, i32 %90, i32 %91)
  %93 = load i32*, i32** %20, align 8
  %94 = call i32 @heap_free(i32* %93)
  %95 = load i32*, i32** %21, align 8
  %96 = call i32 @heap_free(i32* %95)
  br label %97

97:                                               ; preds = %34, %32
  ret void
}

declare dso_local i32 @get_GSUB_Indic2(i32*, i32*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @DecomposeVowels(i32, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @debugstr_wn(i32*, i32) #1

declare dso_local i32 @Indic_ReorderCharacters(i32, i32*, i32*, i32*, i32, i32**, i32*, i32, i32, i32) #1

declare dso_local i32 @GetGlyphIndicesW(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @ShapeIndicSyllables(i32, i32*, i32*, i32*, i32, i32*, i32, i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
