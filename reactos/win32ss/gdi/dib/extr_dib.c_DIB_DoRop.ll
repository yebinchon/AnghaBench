; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/dib/extr_dib.c_DIB_DoRop.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/dib/extr_dib.c_DIB_DoRop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIB_DoRop.ExpandDest = internal constant [16 x i32] [i32 1431655765, i32 1431655850, i32 1431677525, i32 1431677610, i32 1437226325, i32 1437226410, i32 1437248085, i32 1437248170, i32 -1437248171, i32 -1437248086, i32 -1437226411, i32 -1437226326, i32 -1431677611, i32 -1431677526, i32 -1431655851, i32 -1431655766], align 16
@DIB_DoRop.ExpandSource = internal constant [16 x i32] [i32 858993459, i32 858993612, i32 859032627, i32 859032780, i32 869020467, i32 869020620, i32 869059635, i32 869059788, i32 -869059789, i32 -869059636, i32 -869020621, i32 -869020468, i32 -859032781, i32 -859032628, i32 -858993613, i32 -858993460], align 16
@DIB_DoRop.ExpandPattern = internal constant [16 x i32] [i32 252645135, i32 252645360, i32 252702735, i32 252702960, i32 267390735, i32 267390960, i32 267448335, i32 267448560, i32 -267448561, i32 -267448336, i32 -267390961, i32 -267390736, i32 -252702961, i32 -252702736, i32 -252645361, i32 -252645136], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DIB_DoRop(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 255
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %72 [
    i32 139, label %16
    i32 143, label %18
    i32 137, label %19
    i32 138, label %24
    i32 131, label %27
    i32 142, label %32
    i32 135, label %35
    i32 130, label %39
    i32 133, label %43
    i32 140, label %47
    i32 129, label %52
    i32 141, label %56
    i32 132, label %60
    i32 136, label %62
    i32 134, label %64
    i32 128, label %71
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %5, align 4
  br label %145

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %145

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  store i32 %23, i32* %5, align 4
  br label %145

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = xor i32 %25, -1
  store i32 %26, i32* %5, align 4
  br label %145

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %5, align 4
  br label %145

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  %34 = xor i32 %33, -1
  store i32 %34, i32* %5, align 4
  br label %145

35:                                               ; preds = %4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %9, align 4
  %38 = xor i32 %36, %37
  store i32 %38, i32* %5, align 4
  br label %145

39:                                               ; preds = %4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = xor i32 %40, %41
  store i32 %42, i32* %5, align 4
  br label %145

43:                                               ; preds = %4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %5, align 4
  br label %145

47:                                               ; preds = %4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = xor i32 %49, -1
  %51 = or i32 %48, %50
  store i32 %51, i32* %5, align 4
  br label %145

52:                                               ; preds = %4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %5, align 4
  br label %145

56:                                               ; preds = %4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %5, align 4
  br label %145

60:                                               ; preds = %4
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %5, align 4
  br label %145

62:                                               ; preds = %4
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %5, align 4
  br label %145

64:                                               ; preds = %4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = xor i32 %66, -1
  %68 = or i32 %65, %67
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %5, align 4
  br label %145

71:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %145

72:                                               ; preds = %4
  %73 = load i32, i32* %6, align 4
  %74 = shl i32 %73, 24
  %75 = load i32, i32* %6, align 4
  %76 = shl i32 %75, 16
  %77 = or i32 %74, %76
  %78 = load i32, i32* %6, align 4
  %79 = shl i32 %78, 8
  %80 = or i32 %77, %79
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %140, %72
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %84, 8
  br i1 %85, label %86, label %143

86:                                               ; preds = %83
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = and i32 %88, 15
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [16 x i32], [16 x i32]* @DIB_DoRop.ExpandDest, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %87, %92
  %94 = load i32, i32* %8, align 4
  %95 = and i32 %94, 15
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [16 x i32], [16 x i32]* @DIB_DoRop.ExpandSource, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %93, %98
  %100 = load i32, i32* %9, align 4
  %101 = and i32 %100, 15
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [16 x i32], [16 x i32]* @DIB_DoRop.ExpandPattern, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %99, %104
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = and i32 %106, -16777216
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 8, i32 0
  %111 = load i32, i32* %10, align 4
  %112 = and i32 %111, 16711680
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 4, i32 0
  %116 = or i32 %110, %115
  %117 = load i32, i32* %10, align 4
  %118 = and i32 %117, 65280
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 2, i32 0
  %122 = or i32 %116, %121
  %123 = load i32, i32* %10, align 4
  %124 = and i32 %123, 255
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 1, i32 0
  %128 = or i32 %122, %127
  %129 = load i32, i32* %12, align 4
  %130 = mul nsw i32 %129, 4
  %131 = shl i32 %128, %130
  %132 = load i32, i32* %11, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %7, align 4
  %135 = ashr i32 %134, 4
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %8, align 4
  %137 = ashr i32 %136, 4
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = ashr i32 %138, 4
  store i32 %139, i32* %9, align 4
  br label %140

140:                                              ; preds = %86
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %12, align 4
  br label %83

143:                                              ; preds = %83
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %143, %71, %64, %62, %60, %56, %52, %47, %43, %39, %35, %32, %27, %24, %19, %18, %16
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
