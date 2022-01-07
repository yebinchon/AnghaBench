; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_YCbCr_to_RGB_row.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_YCbCr_to_RGB_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32)* @YCbCr_to_RGB_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @YCbCr_to_RGB_row(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %111, %6
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %114

24:                                               ; preds = %20
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 16
  %31 = add nsw i32 %30, 32768
  store i32 %31, i32* %14, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 128
  store i32 %37, i32* %18, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 128
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %18, align 4
  %46 = call i32 @float2fixed(float 0x3FF66E9780000000)
  %47 = mul nsw i32 %45, %46
  %48 = add nsw i32 %44, %47
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %18, align 4
  %51 = call i32 @float2fixed(float 0x3FE6DA3C20000000)
  %52 = mul nsw i32 %50, %51
  %53 = sub nsw i32 %49, %52
  %54 = load i32, i32* %19, align 4
  %55 = call i32 @float2fixed(float 0x3FD60663C0000000)
  %56 = mul nsw i32 %54, %55
  %57 = sub nsw i32 %53, %56
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %19, align 4
  %60 = call i32 @float2fixed(float 0x3FFC5A1CA0000000)
  %61 = mul nsw i32 %59, %60
  %62 = add nsw i32 %58, %61
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %15, align 4
  %64 = ashr i32 %63, 16
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %16, align 4
  %66 = ashr i32 %65, 16
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %17, align 4
  %68 = ashr i32 %67, 16
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ugt i32 %69, 255
  br i1 %70, label %71, label %77

71:                                               ; preds = %24
  %72 = load i32, i32* %15, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 0, i32* %15, align 4
  br label %76

75:                                               ; preds = %71
  store i32 255, i32* %15, align 4
  br label %76

76:                                               ; preds = %75, %74
  br label %77

77:                                               ; preds = %76, %24
  %78 = load i32, i32* %16, align 4
  %79 = icmp ugt i32 %78, 255
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i32, i32* %16, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 0, i32* %16, align 4
  br label %85

84:                                               ; preds = %80
  store i32 255, i32* %16, align 4
  br label %85

85:                                               ; preds = %84, %83
  br label %86

86:                                               ; preds = %85, %77
  %87 = load i32, i32* %17, align 4
  %88 = icmp ugt i32 %87, 255
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i32, i32* %17, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 0, i32* %17, align 4
  br label %94

93:                                               ; preds = %89
  store i32 255, i32* %17, align 4
  br label %94

94:                                               ; preds = %93, %92
  br label %95

95:                                               ; preds = %94, %86
  %96 = load i32, i32* %15, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %17, align 4
  %103 = load i32*, i32** %7, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  store i32 %102, i32* %104, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  store i32 255, i32* %106, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32* %110, i32** %7, align 8
  br label %111

111:                                              ; preds = %95
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %20

114:                                              ; preds = %20
  ret void
}

declare dso_local i32 @float2fixed(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
