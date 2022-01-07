; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_tools_enc.c_SmoothenBlock.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_tools_enc.c_SmoothenBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i64*, i32, i32, i32)* @SmoothenBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SmoothenBlock(i64* %0, i32 %1, i64* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load i64*, i64** %7, align 8
  store i64* %20, i64** %17, align 8
  %21 = load i64*, i64** %9, align 8
  store i64* %21, i64** %18, align 8
  store i32 0, i32* %16, align 4
  br label %22

22:                                               ; preds = %63, %6
  %23 = load i32, i32* %16, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %66

26:                                               ; preds = %22
  store i32 0, i32* %15, align 4
  br label %27

27:                                               ; preds = %51, %26
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %27
  %32 = load i64*, i64** %17, align 8
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %31
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %14, align 4
  %41 = load i64*, i64** %18, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %38, %31
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %15, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %15, align 4
  br label %27

54:                                               ; preds = %27
  %55 = load i32, i32* %8, align 4
  %56 = load i64*, i64** %17, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64* %58, i64** %17, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i64*, i64** %18, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  store i64* %62, i64** %18, align 8
  br label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %16, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %16, align 4
  br label %22

66:                                               ; preds = %22
  %67 = load i32, i32* %14, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %121

69:                                               ; preds = %66
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = mul nsw i32 %71, %72
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %121

75:                                               ; preds = %69
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %14, align 4
  %78 = sdiv i32 %76, %77
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %19, align 8
  %80 = load i64*, i64** %7, align 8
  store i64* %80, i64** %17, align 8
  %81 = load i64*, i64** %9, align 8
  store i64* %81, i64** %18, align 8
  store i32 0, i32* %16, align 4
  br label %82

82:                                               ; preds = %117, %75
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %120

86:                                               ; preds = %82
  store i32 0, i32* %15, align 4
  br label %87

87:                                               ; preds = %105, %86
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %87
  %92 = load i64*, i64** %17, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load i64, i64* %19, align 8
  %100 = load i64*, i64** %18, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  store i64 %99, i64* %103, align 8
  br label %104

104:                                              ; preds = %98, %91
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %15, align 4
  br label %87

108:                                              ; preds = %87
  %109 = load i32, i32* %8, align 4
  %110 = load i64*, i64** %17, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  store i64* %112, i64** %17, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i64*, i64** %18, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  store i64* %116, i64** %18, align 8
  br label %117

117:                                              ; preds = %108
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %16, align 4
  br label %82

120:                                              ; preds = %82
  br label %121

121:                                              ; preds = %120, %69, %66
  %122 = load i32, i32* %14, align 4
  %123 = icmp eq i32 %122, 0
  %124 = zext i1 %123 to i32
  ret i32 %124
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
