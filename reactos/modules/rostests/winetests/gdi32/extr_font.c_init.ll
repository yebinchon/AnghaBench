; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_font.c_init.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_font.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"gdi32.dll\00", align 1
@hgdi32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"GdiGetCharDimensions\00", align 1
@pGdiGetCharDimensions = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"GdiGetCodePage\00", align 1
@pGdiGetCodePage = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"GetCharABCWidthsI\00", align 1
@pGetCharABCWidthsI = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"GetCharABCWidthsA\00", align 1
@pGetCharABCWidthsA = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"GetCharABCWidthsW\00", align 1
@pGetCharABCWidthsW = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"GetCharABCWidthsFloatW\00", align 1
@pGetCharABCWidthsFloatW = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"GetCharWidth32A\00", align 1
@pGetCharWidth32A = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"GetCharWidth32W\00", align 1
@pGetCharWidth32W = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"GetFontUnicodeRanges\00", align 1
@pGetFontUnicodeRanges = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"GetGlyphIndicesA\00", align 1
@pGetGlyphIndicesA = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [17 x i8] c"GetGlyphIndicesW\00", align 1
@pGetGlyphIndicesW = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [22 x i8] c"GetTextExtentExPointI\00", align 1
@pGetTextExtentExPointI = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [19 x i8] c"GdiRealizationInfo\00", align 1
@pGdiRealizationInfo = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [22 x i8] c"CreateFontIndirectExA\00", align 1
@pCreateFontIndirectExA = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [21 x i8] c"AddFontMemResourceEx\00", align 1
@pAddFontMemResourceEx = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [24 x i8] c"RemoveFontMemResourceEx\00", align 1
@pRemoveFontMemResourceEx = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [19 x i8] c"AddFontResourceExA\00", align 1
@pAddFontResourceExA = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [22 x i8] c"RemoveFontResourceExA\00", align 1
@pRemoveFontResourceExA = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [23 x i8] c"GetFontRealizationInfo\00", align 1
@pGetFontRealizationInfo = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [16 x i8] c"GetFontFileInfo\00", align 1
@pGetFontFileInfo = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [16 x i8] c"GetFontFileData\00", align 1
@pGetFontFileData = common dso_local global i8* null, align 8
@system_lang_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init() #0 {
  %1 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %1, i32* @hgdi32, align 4
  %2 = load i32, i32* @hgdi32, align 4
  %3 = call i64 @GetProcAddress(i32 %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %4 = inttoptr i64 %3 to i8*
  store i8* %4, i8** @pGdiGetCharDimensions, align 8
  %5 = load i32, i32* @hgdi32, align 4
  %6 = call i64 @GetProcAddress(i32 %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %7 = inttoptr i64 %6 to i8*
  store i8* %7, i8** @pGdiGetCodePage, align 8
  %8 = load i32, i32* @hgdi32, align 4
  %9 = call i64 @GetProcAddress(i32 %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** @pGetCharABCWidthsI, align 8
  %11 = load i32, i32* @hgdi32, align 4
  %12 = call i64 @GetProcAddress(i32 %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** @pGetCharABCWidthsA, align 8
  %14 = load i32, i32* @hgdi32, align 4
  %15 = call i64 @GetProcAddress(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** @pGetCharABCWidthsW, align 8
  %17 = load i32, i32* @hgdi32, align 4
  %18 = call i64 @GetProcAddress(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** @pGetCharABCWidthsFloatW, align 8
  %20 = load i32, i32* @hgdi32, align 4
  %21 = call i64 @GetProcAddress(i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** @pGetCharWidth32A, align 8
  %23 = load i32, i32* @hgdi32, align 4
  %24 = call i64 @GetProcAddress(i32 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** @pGetCharWidth32W, align 8
  %26 = load i32, i32* @hgdi32, align 4
  %27 = call i64 @GetProcAddress(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** @pGetFontUnicodeRanges, align 8
  %29 = load i32, i32* @hgdi32, align 4
  %30 = call i64 @GetProcAddress(i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** @pGetGlyphIndicesA, align 8
  %32 = load i32, i32* @hgdi32, align 4
  %33 = call i64 @GetProcAddress(i32 %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** @pGetGlyphIndicesW, align 8
  %35 = load i32, i32* @hgdi32, align 4
  %36 = call i64 @GetProcAddress(i32 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** @pGetTextExtentExPointI, align 8
  %38 = load i32, i32* @hgdi32, align 4
  %39 = call i64 @GetProcAddress(i32 %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** @pGdiRealizationInfo, align 8
  %41 = load i32, i32* @hgdi32, align 4
  %42 = call i64 @GetProcAddress(i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** @pCreateFontIndirectExA, align 8
  %44 = load i32, i32* @hgdi32, align 4
  %45 = call i64 @GetProcAddress(i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** @pAddFontMemResourceEx, align 8
  %47 = load i32, i32* @hgdi32, align 4
  %48 = call i64 @GetProcAddress(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** @pRemoveFontMemResourceEx, align 8
  %50 = load i32, i32* @hgdi32, align 4
  %51 = call i64 @GetProcAddress(i32 %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** @pAddFontResourceExA, align 8
  %53 = load i32, i32* @hgdi32, align 4
  %54 = call i64 @GetProcAddress(i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** @pRemoveFontResourceExA, align 8
  %56 = load i32, i32* @hgdi32, align 4
  %57 = call i64 @GetProcAddress(i32 %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** @pGetFontRealizationInfo, align 8
  %59 = load i32, i32* @hgdi32, align 4
  %60 = call i64 @GetProcAddress(i32 %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** @pGetFontFileInfo, align 8
  %62 = load i32, i32* @hgdi32, align 4
  %63 = call i64 @GetProcAddress(i32 %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0))
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** @pGetFontFileData, align 8
  %65 = call i32 (...) @GetSystemDefaultLangID()
  %66 = call i32 @PRIMARYLANGID(i32 %65)
  store i32 %66, i32* @system_lang_id, align 4
  ret void
}

declare dso_local i32 @GetModuleHandleA(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

declare dso_local i32 @PRIMARYLANGID(i32) #1

declare dso_local i32 @GetSystemDefaultLangID(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
