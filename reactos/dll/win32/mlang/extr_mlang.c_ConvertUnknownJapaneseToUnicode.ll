; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mlang/extr_mlang.c_ConvertUnknownJapaneseToUnicode.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mlang/extr_mlang.c_ConvertUnknownJapaneseToUnicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Japanese code %i\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @ConvertUnknownJapaneseToUnicode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ConvertUnknownJapaneseToUnicode(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @DetectJapaneseCode(i32* %12, i32 %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %11, align 4
  switch i32 %17, label %94 [
    i32 0, label %18
    i32 932, label %34
    i32 51932, label %48
    i32 50220, label %62
  ]

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, i32* @CP_ACP, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @MultiByteToWideChar(i32 %22, i32 0, i32* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %10, align 4
  br label %33

28:                                               ; preds = %18
  %29 = load i32, i32* @CP_ACP, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @MultiByteToWideChar(i32 %29, i32 0, i32* %30, i32 %31, i32 0, i32 0)
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %28, %21
  br label %94

34:                                               ; preds = %4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @MultiByteToWideChar(i32 932, i32 0, i32* %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %10, align 4
  br label %47

43:                                               ; preds = %34
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @MultiByteToWideChar(i32 932, i32 0, i32* %44, i32 %45, i32 0, i32 0)
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %43, %37
  br label %94

48:                                               ; preds = %4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @MultiByteToWideChar(i32 20932, i32 0, i32* %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %10, align 4
  br label %61

57:                                               ; preds = %48
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @MultiByteToWideChar(i32 20932, i32 0, i32* %58, i32 %59, i32 0, i32 0)
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %57, %51
  br label %94

62:                                               ; preds = %4
  %63 = call i32 (...) @GetProcessHeap()
  %64 = load i32, i32* %6, align 4
  %65 = call i32* @HeapAlloc(i32 %63, i32 0, i32 %64)
  store i32* %65, i32** %9, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @ConvertJIS2SJIS(i32* %66, i32 %67, i32* %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %62
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @debugstr_an(i32* %73, i32 %74)
  %76 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @MultiByteToWideChar(i32 932, i32 0, i32* %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %10, align 4
  br label %89

85:                                               ; preds = %72
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @MultiByteToWideChar(i32 932, i32 0, i32* %86, i32 %87, i32 0, i32 0)
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %85, %79
  br label %90

90:                                               ; preds = %89, %62
  %91 = call i32 (...) @GetProcessHeap()
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @HeapFree(i32 %91, i32 0, i32* %92)
  br label %94

94:                                               ; preds = %4, %90, %61, %47, %33
  %95 = load i32, i32* %10, align 4
  ret i32 %95
}

declare dso_local i32 @DetectJapaneseCode(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ConvertJIS2SJIS(i32*, i32, i32*) #1

declare dso_local i32 @debugstr_an(i32*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
