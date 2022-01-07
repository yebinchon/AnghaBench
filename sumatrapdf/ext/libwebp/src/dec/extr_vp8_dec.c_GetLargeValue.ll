; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8_dec.c_GetLargeValue.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8_dec.c_GetLargeValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"coeffs\00", align 1
@kCat3456 = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @GetLargeValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetLargeValue(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @VP8GetBit(i32* %10, i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @VP8GetBit(i32* %17, i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store i32 2, i32* %5, align 4
  br label %31

24:                                               ; preds = %16
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @VP8GetBit(i32* %25, i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %30 = add nsw i32 3, %29
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %24, %23
  br label %106

32:                                               ; preds = %2
  %33 = load i32*, i32** %3, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 6
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @VP8GetBit(i32* %33, i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %60, label %39

39:                                               ; preds = %32
  %40 = load i32*, i32** %3, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 7
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @VP8GetBit(i32* %40, i32 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @VP8GetBit(i32* %47, i32 159, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %49 = add nsw i32 5, %48
  store i32 %49, i32* %5, align 4
  br label %59

50:                                               ; preds = %39
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @VP8GetBit(i32* %51, i32 165, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %53 = mul nsw i32 2, %52
  %54 = add nsw i32 7, %53
  store i32 %54, i32* %5, align 4
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @VP8GetBit(i32* %55, i32 145, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %50, %46
  br label %105

60:                                               ; preds = %32
  %61 = load i32*, i32** %3, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @VP8GetBit(i32* %61, i32 %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %65, i32* %7, align 4
  %66 = load i32*, i32** %3, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 9, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @VP8GetBit(i32* %66, i32 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  %75 = mul nsw i32 2, %74
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %9, align 4
  store i32 0, i32* %5, align 4
  %78 = load i32**, i32*** @kCat3456, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %6, align 8
  br label %83

83:                                               ; preds = %96, %60
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %83
  %88 = load i32, i32* %5, align 4
  %89 = load i32*, i32** %3, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @VP8GetBit(i32* %89, i32 %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %93 = add nsw i32 %88, %92
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %87
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %6, align 8
  br label %83

99:                                               ; preds = %83
  %100 = load i32, i32* %9, align 4
  %101 = shl i32 8, %100
  %102 = add nsw i32 3, %101
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %99, %59
  br label %106

106:                                              ; preds = %105, %31
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @VP8GetBit(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
