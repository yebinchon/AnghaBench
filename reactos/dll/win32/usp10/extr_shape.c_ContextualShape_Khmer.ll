; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ContextualShape_Khmer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ContextualShape_Khmer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [59 x i8] c"Number of Glyphs and Chars need to match at the beginning\0A\00", align 1
@khmer_lex = common dso_local global i32 0, align 4
@Reorder_Like_Devanagari = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"reordered string %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i32, i32*, i32*, i32, i32*)* @ContextualShape_Khmer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ContextualShape_Khmer(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5, i32* %6, i32 %7, i32* %8) #0 {
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
  store i32 %0, i32* %10, align 4
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %19, align 4
  store i32* null, i32** %21, align 8
  store i32 0, i32* %22, align 4
  %24 = load i32*, i32** %16, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %9
  %29 = call i32 @ERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %80

30:                                               ; preds = %9
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = call i32* @heap_alloc(i32 %34)
  store i32* %35, i32** %20, align 8
  %36 = load i32*, i32** %20, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memcpy(i32* %36, i32* %37, i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32*, i32** %20, align 8
  %47 = load i32, i32* %19, align 4
  %48 = load i32, i32* @khmer_lex, align 4
  %49 = load i32, i32* @Reorder_Like_Devanagari, align 4
  %50 = load i32, i32* @FALSE, align 4
  %51 = call i32 @Indic_ReorderCharacters(i32 %43, i32* %44, i32* %45, i32* %46, i32 %47, i32** %21, i32* %22, i32 %48, i32 %49, i32 %50)
  %52 = load i32*, i32** %20, align 8
  %53 = load i32, i32* %19, align 4
  %54 = call i32 @debugstr_wn(i32* %52, i32 %53)
  %55 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = load i32*, i32** %20, align 8
  %58 = load i32, i32* %19, align 4
  %59 = load i32*, i32** %15, align 8
  %60 = call i32 @GetGlyphIndicesW(i32 %56, i32* %57, i32 %58, i32* %59, i32 0)
  %61 = load i32, i32* %19, align 4
  %62 = load i32*, i32** %16, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = load i32*, i32** %20, align 8
  %67 = load i32, i32* %14, align 4
  %68 = load i32*, i32** %21, align 8
  %69 = load i32, i32* %22, align 4
  %70 = load i32*, i32** %15, align 8
  %71 = load i32*, i32** %16, align 8
  %72 = load i32*, i32** %18, align 8
  %73 = load i32, i32* @khmer_lex, align 4
  %74 = load i32, i32* @FALSE, align 4
  %75 = call i32 @ShapeIndicSyllables(i32 %63, i32* %64, i32* %65, i32* %66, i32 %67, i32* %68, i32 %69, i32* %70, i32* %71, i32* %72, i32 %73, i32* null, i32 %74)
  %76 = load i32*, i32** %20, align 8
  %77 = call i32 @heap_free(i32* %76)
  %78 = load i32*, i32** %21, align 8
  %79 = call i32 @heap_free(i32* %78)
  br label %80

80:                                               ; preds = %30, %28
  ret void
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @Indic_ReorderCharacters(i32, i32*, i32*, i32*, i32, i32**, i32*, i32, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_wn(i32*, i32) #1

declare dso_local i32 @GetGlyphIndicesW(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @ShapeIndicSyllables(i32, i32*, i32*, i32*, i32, i32*, i32, i32*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
