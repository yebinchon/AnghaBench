; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ContextualShape_Bengali.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ContextualShape_Bengali.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [59 x i8] c"Number of Glyphs and Chars need to match at the beginning\0A\00", align 1
@Bengali_vowels = common dso_local global i32 0, align 4
@Bengali_consonants = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"New composed string %s (%i)\0A\00", align 1
@bengali_lex = common dso_local global i32 0, align 4
@Reorder_Like_Bengali = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"reordered string %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i32, i32*, i32*, i32, i32*)* @ContextualShape_Bengali to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ContextualShape_Bengali(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5, i32* %6, i32 %7, i32* %8) #0 {
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
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %19, align 4
  store i32* null, i32** %21, align 8
  store i32 0, i32* %22, align 4
  %27 = load i32*, i32** %12, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @get_GSUB_Indic2(i32* %27, i32* %28)
  store i32 %29, i32* %23, align 4
  %30 = load i32*, i32** %16, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %9
  %35 = call i32 @ERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %139

36:                                               ; preds = %9
  %37 = load i32, i32* %14, align 4
  %38 = mul nsw i32 2, %37
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i32* @heap_alloc(i32 %41)
  store i32* %42, i32** %20, align 8
  %43 = load i32*, i32** %20, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memcpy(i32* %43, i32* %44, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = load i32*, i32** %20, align 8
  %52 = load i32, i32* @Bengali_vowels, align 4
  %53 = load i32*, i32** %18, align 8
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @DecomposeVowels(i32 %50, i32* %51, i32* %19, i32 %52, i32* %53, i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = load i32*, i32** %20, align 8
  %58 = load i32, i32* @Bengali_consonants, align 4
  %59 = load i32*, i32** %18, align 8
  %60 = call i32 @ComposeConsonants(i32 %56, i32* %57, i32* %19, i32 %58, i32* %59)
  %61 = load i32*, i32** %20, align 8
  %62 = load i32, i32* %19, align 4
  %63 = call i32 @debugstr_wn(i32* %61, i32 %62)
  %64 = load i32, i32* %19, align 4
  %65 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = load i32*, i32** %12, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = load i32*, i32** %20, align 8
  %70 = load i32, i32* %19, align 4
  %71 = load i32, i32* @bengali_lex, align 4
  %72 = load i32, i32* @Reorder_Like_Bengali, align 4
  %73 = load i32, i32* %23, align 4
  %74 = call i32 @Indic_ReorderCharacters(i32 %66, i32* %67, i32* %68, i32* %69, i32 %70, i32** %21, i32* %22, i32 %71, i32 %72, i32 %73)
  %75 = load i32*, i32** %20, align 8
  %76 = load i32, i32* %19, align 4
  %77 = call i32 @debugstr_wn(i32* %75, i32 %76)
  %78 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %10, align 4
  %80 = load i32*, i32** %20, align 8
  %81 = load i32, i32* %19, align 4
  %82 = load i32*, i32** %15, align 8
  %83 = call i32 @GetGlyphIndicesW(i32 %79, i32* %80, i32 %81, i32* %82, i32 0)
  %84 = load i32, i32* %19, align 4
  %85 = load i32*, i32** %16, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %19, align 4
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %19, align 4
  br label %88

88:                                               ; preds = %118, %36
  %89 = load i32, i32* %19, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %121

91:                                               ; preds = %88
  %92 = load i32, i32* %19, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %91
  %95 = load i32*, i32** %20, align 8
  %96 = load i32, i32* %19, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 32
  br i1 %100, label %101, label %117

101:                                              ; preds = %94, %91
  %102 = load i32, i32* %19, align 4
  store i32 %102, i32* %24, align 4
  store i32 1, i32* %25, align 4
  %103 = load i32, i32* %24, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32, i32* %24, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %24, align 4
  br label %108

108:                                              ; preds = %105, %101
  %109 = load i32, i32* %10, align 4
  %110 = load i32*, i32** %12, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = load i32*, i32** %15, align 8
  %113 = load i32, i32* %24, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = call i32 @apply_GSUB_feature_to_glyph(i32 %109, i32* %110, i32* %111, i32* %115, i32 0, i32 1, i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %117

117:                                              ; preds = %108, %94
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %19, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %19, align 4
  br label %88

121:                                              ; preds = %88
  %122 = load i32, i32* %10, align 4
  %123 = load i32*, i32** %11, align 8
  %124 = load i32*, i32** %12, align 8
  %125 = load i32*, i32** %20, align 8
  %126 = load i32, i32* %14, align 4
  %127 = load i32*, i32** %21, align 8
  %128 = load i32, i32* %22, align 4
  %129 = load i32*, i32** %15, align 8
  %130 = load i32*, i32** %16, align 8
  %131 = load i32*, i32** %18, align 8
  %132 = load i32, i32* @bengali_lex, align 4
  %133 = load i32, i32* %23, align 4
  %134 = call i32 @ShapeIndicSyllables(i32 %122, i32* %123, i32* %124, i32* %125, i32 %126, i32* %127, i32 %128, i32* %129, i32* %130, i32* %131, i32 %132, i32* null, i32 %133)
  %135 = load i32*, i32** %20, align 8
  %136 = call i32 @heap_free(i32* %135)
  %137 = load i32*, i32** %21, align 8
  %138 = call i32 @heap_free(i32* %137)
  br label %139

139:                                              ; preds = %121, %34
  ret void
}

declare dso_local i32 @get_GSUB_Indic2(i32*, i32*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @DecomposeVowels(i32, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @ComposeConsonants(i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @debugstr_wn(i32*, i32) #1

declare dso_local i32 @Indic_ReorderCharacters(i32, i32*, i32*, i32*, i32, i32**, i32*, i32, i32, i32) #1

declare dso_local i32 @GetGlyphIndicesW(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @apply_GSUB_feature_to_glyph(i32, i32*, i32*, i32*, i32, i32, i32*, i8*) #1

declare dso_local i32 @ShapeIndicSyllables(i32, i32*, i32*, i32*, i32, i32*, i32, i32*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
