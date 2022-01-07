; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ContextualShape_Sinhala.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ContextualShape_Sinhala.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [59 x i8] c"Number of Glyphs and Chars need to match at the beginning\0A\00", align 1
@Sinhala_vowels = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"New double vowel expanded string %s (%i)\0A\00", align 1
@sinhala_lex = common dso_local global i32 0, align 4
@Reorder_Like_Sinhala = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"reordered string %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i32, i32*, i32*, i32, i32*)* @ContextualShape_Sinhala to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ContextualShape_Sinhala(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5, i32* %6, i32 %7, i32* %8) #0 {
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
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
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
  store i32* null, i32** %22, align 8
  store i32 0, i32* %23, align 4
  %25 = load i32*, i32** %16, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %9
  %30 = call i32 @ERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %145

31:                                               ; preds = %9
  %32 = load i32, i32* %14, align 4
  %33 = mul nsw i32 3, %32
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i32* @heap_alloc(i32 %36)
  store i32* %37, i32** %21, align 8
  %38 = load i32*, i32** %21, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memcpy(i32* %38, i32* %39, i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = load i32*, i32** %21, align 8
  %47 = load i32, i32* @Sinhala_vowels, align 4
  %48 = load i32*, i32** %18, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @DecomposeVowels(i32 %45, i32* %46, i32* %19, i32 %47, i32* %48, i32 %49)
  %51 = load i32*, i32** %21, align 8
  %52 = load i32, i32* %19, align 4
  %53 = call i32 @debugstr_wn(i32* %51, i32 %52)
  %54 = load i32, i32* %19, align 4
  %55 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i32*, i32** %21, align 8
  %60 = load i32, i32* %19, align 4
  %61 = load i32, i32* @sinhala_lex, align 4
  %62 = load i32, i32* @Reorder_Like_Sinhala, align 4
  %63 = load i32, i32* @TRUE, align 4
  %64 = call i32 @Indic_ReorderCharacters(i32 %56, i32* %57, i32* %58, i32* %59, i32 %60, i32** %22, i32* %23, i32 %61, i32 %62, i32 %63)
  %65 = load i32*, i32** %21, align 8
  %66 = load i32, i32* %19, align 4
  %67 = call i32 @debugstr_wn(i32* %65, i32 %66)
  %68 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  store i32 0, i32* %20, align 4
  br label %69

69:                                               ; preds = %117, %31
  %70 = load i32, i32* %20, align 4
  %71 = load i32, i32* %19, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %120

73:                                               ; preds = %69
  %74 = load i32*, i32** %21, align 8
  %75 = load i32, i32* %20, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 8205
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = load i32*, i32** %21, align 8
  %82 = load i32, i32* %20, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 8204
  br i1 %86, label %87, label %116

87:                                               ; preds = %80, %73
  %88 = load i32, i32* %20, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %111, label %90

90:                                               ; preds = %87
  %91 = load i32*, i32** %21, align 8
  %92 = load i32, i32* %20, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 32
  br i1 %97, label %111, label %98

98:                                               ; preds = %90
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* %19, align 4
  %101 = sub nsw i32 %100, 1
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %111, label %103

103:                                              ; preds = %98
  %104 = load i32*, i32** %21, align 8
  %105 = load i32, i32* %20, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 32
  br i1 %110, label %111, label %116

111:                                              ; preds = %103, %98, %90, %87
  %112 = load i32*, i32** %21, align 8
  %113 = load i32, i32* %20, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 32, i32* %115, align 4
  br label %116

116:                                              ; preds = %111, %103, %80
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %20, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %20, align 4
  br label %69

120:                                              ; preds = %69
  %121 = load i32, i32* %10, align 4
  %122 = load i32*, i32** %21, align 8
  %123 = load i32, i32* %19, align 4
  %124 = load i32*, i32** %15, align 8
  %125 = call i32 @GetGlyphIndicesW(i32 %121, i32* %122, i32 %123, i32* %124, i32 0)
  %126 = load i32, i32* %19, align 4
  %127 = load i32*, i32** %16, align 8
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32*, i32** %11, align 8
  %130 = load i32*, i32** %12, align 8
  %131 = load i32*, i32** %21, align 8
  %132 = load i32, i32* %14, align 4
  %133 = load i32*, i32** %22, align 8
  %134 = load i32, i32* %23, align 4
  %135 = load i32*, i32** %15, align 8
  %136 = load i32*, i32** %16, align 8
  %137 = load i32*, i32** %18, align 8
  %138 = load i32, i32* @sinhala_lex, align 4
  %139 = load i32, i32* @TRUE, align 4
  %140 = call i32 @ShapeIndicSyllables(i32 %128, i32* %129, i32* %130, i32* %131, i32 %132, i32* %133, i32 %134, i32* %135, i32* %136, i32* %137, i32 %138, i32* null, i32 %139)
  %141 = load i32*, i32** %21, align 8
  %142 = call i32 @heap_free(i32* %141)
  %143 = load i32*, i32** %22, align 8
  %144 = call i32 @heap_free(i32* %143)
  br label %145

145:                                              ; preds = %120, %29
  ret void
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @DecomposeVowels(i32, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @debugstr_wn(i32*, i32) #1

declare dso_local i32 @Indic_ReorderCharacters(i32, i32*, i32*, i32*, i32, i32**, i32*, i32, i32, i32) #1

declare dso_local i32 @GetGlyphIndicesW(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @ShapeIndicSyllables(i32, i32*, i32*, i32*, i32, i32*, i32, i32*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
