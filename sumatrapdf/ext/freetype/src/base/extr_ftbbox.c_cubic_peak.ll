; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/base/extr_ftbbox.c_cubic_peak.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/base/extr_ftbbox.c_cubic_peak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @cubic_peak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cubic_peak(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @FT_ABS(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @FT_ABS(i32 %13)
  %15 = or i32 %12, %14
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @FT_ABS(i32 %16)
  %18 = or i32 %15, %17
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @FT_ABS(i32 %19)
  %21 = or i32 %18, %20
  %22 = call i32 @FT_MSB(i32 %21)
  %23 = sub nsw i32 27, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  %28 = icmp sgt i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 2, i32* %10, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %6, align 4
  %36 = shl i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %7, align 4
  %39 = shl i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %60

43:                                               ; preds = %4
  %44 = load i32, i32* %10, align 4
  %45 = sub nsw i32 0, %44
  %46 = load i32, i32* %5, align 4
  %47 = ashr i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %10, align 4
  %49 = sub nsw i32 0, %48
  %50 = load i32, i32* %6, align 4
  %51 = ashr i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %10, align 4
  %53 = sub nsw i32 0, %52
  %54 = load i32, i32* %7, align 4
  %55 = ashr i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 0, %56
  %58 = load i32, i32* %8, align 4
  %59 = ashr i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %43, %30
  br label %61

61:                                               ; preds = %145, %60
  %62 = load i32, i32* %6, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %7, align 4
  %66 = icmp sgt i32 %65, 0
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi i1 [ true, %61 ], [ %66, %64 ]
  br i1 %68, label %69, label %146

69:                                               ; preds = %67
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %73, %74
  %76 = icmp sgt i32 %72, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %69
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %78, %79
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %87, %88
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %90, %91
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %93, %94
  %96 = sdiv i32 %95, 8
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %7, align 4
  %98 = sdiv i32 %97, 4
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %6, align 4
  %100 = sdiv i32 %99, 2
  store i32 %100, i32* %6, align 4
  br label %125

101:                                              ; preds = %69
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %105, %106
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %108, %109
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %111, %112
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %114, %115
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %117, %118
  %120 = sdiv i32 %119, 8
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %6, align 4
  %122 = sdiv i32 %121, 4
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %7, align 4
  %124 = sdiv i32 %123, 2
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %101, %77
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp sge i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load i32, i32* %5, align 4
  store i32 %134, i32* %9, align 4
  br label %146

135:                                              ; preds = %129, %125
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %135
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp sle i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %9, align 4
  br label %146

145:                                              ; preds = %139, %135
  br label %61

146:                                              ; preds = %143, %133, %67
  %147 = load i32, i32* %10, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %9, align 4
  %152 = ashr i32 %151, %150
  store i32 %152, i32* %9, align 4
  br label %158

153:                                              ; preds = %146
  %154 = load i32, i32* %10, align 4
  %155 = sub nsw i32 0, %154
  %156 = load i32, i32* %9, align 4
  %157 = shl i32 %156, %155
  store i32 %157, i32* %9, align 4
  br label %158

158:                                              ; preds = %153, %149
  %159 = load i32, i32* %9, align 4
  ret i32 %159
}

declare dso_local i32 @FT_MSB(i32) #1

declare dso_local i32 @FT_ABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
