; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_Text_Read.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_Text_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_4__ = type { i32 (i32, %struct.TYPE_4__*, i8*, i32, i32)* }

@UINT_MAX = common dso_local global i32 0, align 4
@cmsNoLanguage = common dso_local global i32 0, align 4
@cmsNoCountry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct._cms_typehandler_struct*, %struct.TYPE_4__*, i32*, i32)* @Type_Text_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Type_Text_Read(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_4__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i32* null, i32** %13, align 8
  %14 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %15 = call i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct* %14)
  %16 = load i32, i32* %7, align 4
  %17 = call i32* @cmsMLUalloc(i32 %16, i32 1)
  store i32* %17, i32** %13, align 8
  %18 = load i32*, i32** %13, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %83

21:                                               ; preds = %5
  %22 = load i32*, i32** %10, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @UINT_MAX, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %68

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i64 @_cmsMalloc(i32 %28, i32 %30)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %12, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %68

36:                                               ; preds = %27
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (i32, %struct.TYPE_4__*, i8*, i32, i32)*, i32 (i32, %struct.TYPE_4__*, i8*, i32, i32)** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 %39(i32 %40, %struct.TYPE_4__* %41, i8* %42, i32 1, i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %68

48:                                               ; preds = %36
  %49 = load i8*, i8** %12, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 0, i8* %52, align 1
  %53 = load i32*, i32** %10, align 8
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* @cmsNoLanguage, align 4
  %57 = load i32, i32* @cmsNoCountry, align 4
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @cmsMLUsetASCII(i32 %54, i32* %55, i32 %56, i32 %57, i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %48
  br label %68

62:                                               ; preds = %48
  %63 = load i32, i32* %7, align 4
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @_cmsFree(i32 %63, i8* %64)
  %66 = load i32*, i32** %13, align 8
  %67 = bitcast i32* %66 to i8*
  store i8* %67, i8** %6, align 8
  br label %83

68:                                               ; preds = %61, %47, %35, %26
  %69 = load i32*, i32** %13, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = load i32*, i32** %13, align 8
  %74 = call i32 @cmsMLUfree(i32 %72, i32* %73)
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i8*, i8** %12, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = load i8*, i8** %12, align 8
  %81 = call i32 @_cmsFree(i32 %79, i8* %80)
  br label %82

82:                                               ; preds = %78, %75
  store i8* null, i8** %6, align 8
  br label %83

83:                                               ; preds = %82, %62, %20
  %84 = load i8*, i8** %6, align 8
  ret i8* %84
}

declare dso_local i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct*) #1

declare dso_local i32* @cmsMLUalloc(i32, i32) #1

declare dso_local i64 @_cmsMalloc(i32, i32) #1

declare dso_local i32 @cmsMLUsetASCII(i32, i32*, i32, i32, i8*) #1

declare dso_local i32 @_cmsFree(i32, i8*) #1

declare dso_local i32 @cmsMLUfree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
