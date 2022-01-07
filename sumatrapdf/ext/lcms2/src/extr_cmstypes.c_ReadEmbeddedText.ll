; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_ReadEmbeddedText.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_ReadEmbeddedText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, i32*, i32**, i32)* @ReadEmbeddedText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadEmbeddedText(i32 %0, %struct._cms_typehandler_struct* %1, i32* %2, i32** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @_cmsReadTypeBase(i32 %14, i32* %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  switch i32 %17, label %81 [
    i32 128, label %18
    i32 129, label %39
    i32 130, label %60
  ]

18:                                               ; preds = %5
  %19 = load i32**, i32*** %10, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = load i32**, i32*** %10, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @cmsMLUfree(i32 %23, i32* %25)
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i32, i32* %7, align 4
  %29 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @Type_Text_Read(i32 %28, %struct._cms_typehandler_struct* %29, i32* %30, i32* %13, i32 %31)
  %33 = inttoptr i64 %32 to i32*
  %34 = load i32**, i32*** %10, align 8
  store i32* %33, i32** %34, align 8
  %35 = load i32**, i32*** %10, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %6, align 4
  br label %83

39:                                               ; preds = %5
  %40 = load i32**, i32*** %10, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32**, i32*** %10, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @cmsMLUfree(i32 %44, i32* %46)
  br label %48

48:                                               ; preds = %43, %39
  %49 = load i32, i32* %7, align 4
  %50 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @Type_Text_Description_Read(i32 %49, %struct._cms_typehandler_struct* %50, i32* %51, i32* %13, i32 %52)
  %54 = inttoptr i64 %53 to i32*
  %55 = load i32**, i32*** %10, align 8
  store i32* %54, i32** %55, align 8
  %56 = load i32**, i32*** %10, align 8
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %6, align 4
  br label %83

60:                                               ; preds = %5
  %61 = load i32**, i32*** %10, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = load i32**, i32*** %10, align 8
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @cmsMLUfree(i32 %65, i32* %67)
  br label %69

69:                                               ; preds = %64, %60
  %70 = load i32, i32* %7, align 4
  %71 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i64 @Type_MLU_Read(i32 %70, %struct._cms_typehandler_struct* %71, i32* %72, i32* %13, i32 %73)
  %75 = inttoptr i64 %74 to i32*
  %76 = load i32**, i32*** %10, align 8
  store i32* %75, i32** %76, align 8
  %77 = load i32**, i32*** %10, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %6, align 4
  br label %83

81:                                               ; preds = %5
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %81, %69, %48, %27
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @_cmsReadTypeBase(i32, i32*) #1

declare dso_local i32 @cmsMLUfree(i32, i32*) #1

declare dso_local i64 @Type_Text_Read(i32, %struct._cms_typehandler_struct*, i32*, i32*, i32) #1

declare dso_local i64 @Type_Text_Description_Read(i32, %struct._cms_typehandler_struct*, i32*, i32*, i32) #1

declare dso_local i64 @Type_MLU_Read(i32, %struct._cms_typehandler_struct*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
