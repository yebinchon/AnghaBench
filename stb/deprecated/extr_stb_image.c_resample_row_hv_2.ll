; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_resample_row_hv_2.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_resample_row_hv_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32, i32)* @resample_row_hv_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @resample_row_hv_2(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %33

17:                                               ; preds = %5
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 3, %20
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  %26 = add nsw i32 %25, 2
  %27 = call i32 @div4(i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %27, i32* %29, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %27, i32* %31, align 4
  %32 = load i32*, i32** %7, align 8
  store i32* %32, i32** %6, align 8
  br label %104

33:                                               ; preds = %5
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 3, %36
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %37, %40
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %42, 2
  %44 = call i32 @div4(i32 %43)
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %44, i32* %46, align 4
  store i32 1, i32* %12, align 4
  br label %47

47:                                               ; preds = %88, %33
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %91

51:                                               ; preds = %47
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %13, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 3, %57
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %58, %63
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %13, align 4
  %66 = mul nsw i32 3, %65
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %66, %67
  %69 = add nsw i32 %68, 8
  %70 = call i32 @div16(i32 %69)
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %12, align 4
  %73 = mul nsw i32 %72, 2
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  store i32 %70, i32* %76, align 4
  %77 = load i32, i32* %14, align 4
  %78 = mul nsw i32 3, %77
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %78, %79
  %81 = add nsw i32 %80, 8
  %82 = call i32 @div16(i32 %81)
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %12, align 4
  %85 = mul nsw i32 %84, 2
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  store i32 %82, i32* %87, align 4
  br label %88

88:                                               ; preds = %51
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %47

91:                                               ; preds = %47
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 2
  %94 = call i32 @div4(i32 %93)
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %10, align 4
  %97 = mul nsw i32 %96, 2
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  store i32 %94, i32* %100, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @STBI_NOTUSED(i32 %101)
  %103 = load i32*, i32** %7, align 8
  store i32* %103, i32** %6, align 8
  br label %104

104:                                              ; preds = %91, %17
  %105 = load i32*, i32** %6, align 8
  ret i32* %105
}

declare dso_local i32 @div4(i32) #1

declare dso_local i32 @div16(i32) #1

declare dso_local i32 @STBI_NOTUSED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
