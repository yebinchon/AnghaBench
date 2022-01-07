; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/matlab/extr_icctrans.c_AllocateOutputArray.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/matlab/extr_icctrans.c_AllocateOutputArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @AllocateOutputArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @AllocateOutputArray(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @mxDuplicateArray(i32* %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @mxGetNumberOfDimensions(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call i32* @mxGetDimensions(i32* %16)
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %84

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = call i64 @mxMalloc(i32 %31)
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %11, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memmove(i32* %34, i32* %35, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32 %41, i32* %46, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @mxGetClassID(i32* %47)
  switch i32 %48, label %53 [
    i32 130, label %49
    i32 128, label %50
    i32 131, label %51
    i32 129, label %52
    i32 132, label %54
  ]

49:                                               ; preds = %27
  store i32 1, i32* %10, align 4
  br label %55

50:                                               ; preds = %27
  store i32 1, i32* %10, align 4
  br label %55

51:                                               ; preds = %27
  store i32 2, i32* %10, align 4
  br label %55

52:                                               ; preds = %27
  store i32 2, i32* %10, align 4
  br label %55

53:                                               ; preds = %27
  br label %54

54:                                               ; preds = %27, %53
  store i32 8, i32* %10, align 4
  br label %55

55:                                               ; preds = %54, %52, %51, %50, %49
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %68, %55
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %10, align 4
  %67 = mul nsw i32 %66, %65
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %56

71:                                               ; preds = %56
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @mxSetDimensions(i32* %72, i32* %73, i32 %74)
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @mxFree(i32* %76)
  %78 = load i32*, i32** %5, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @mxGetPr(i32* %79)
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @mxRealloc(i32 %80, i32 %81)
  %83 = call i32 @mxSetPr(i32* %78, i32 %82)
  br label %84

84:                                               ; preds = %71, %2
  %85 = load i32*, i32** %5, align 8
  ret i32* %85
}

declare dso_local i32* @mxDuplicateArray(i32*) #1

declare dso_local i32 @mxGetNumberOfDimensions(i32*) #1

declare dso_local i32* @mxGetDimensions(i32*) #1

declare dso_local i64 @mxMalloc(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @mxGetClassID(i32*) #1

declare dso_local i32 @mxSetDimensions(i32*, i32*, i32) #1

declare dso_local i32 @mxFree(i32*) #1

declare dso_local i32 @mxSetPr(i32*, i32) #1

declare dso_local i32 @mxRealloc(i32, i32) #1

declare dso_local i32 @mxGetPr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
