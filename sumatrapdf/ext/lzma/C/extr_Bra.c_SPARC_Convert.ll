; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_Bra.c_SPARC_Convert.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_Bra.c_SPARC_Convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SPARC_Convert(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %148

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 4
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %143, %16
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %146

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 64
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 192
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %30, %23
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 127
  br i1 %45, label %46, label %142

46:                                               ; preds = %39
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 192
  %54 = icmp eq i32 %53, 192
  br i1 %54, label %55, label %142

55:                                               ; preds = %46, %30
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 0
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 24
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 16
  %70 = or i32 %62, %69
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 8
  %78 = or i32 %70, %77
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 3
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %78, %84
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = shl i32 %86, 2
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %55
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %12, align 4
  br label %102

96:                                               ; preds = %55
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %98, %99
  %101 = sub nsw i32 %97, %100
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %96, %90
  %103 = load i32, i32* %12, align 4
  %104 = ashr i32 %103, 2
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = ashr i32 %105, 22
  %107 = and i32 %106, 1
  %108 = sub nsw i32 0, %107
  %109 = shl i32 %108, 22
  %110 = and i32 %109, 1073741823
  %111 = load i32, i32* %12, align 4
  %112 = and i32 %111, 4194303
  %113 = or i32 %110, %112
  %114 = or i32 %113, 1073741824
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = ashr i32 %115, 24
  %117 = load i32*, i32** %6, align 8
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 0
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  store i32 %116, i32* %121, align 4
  %122 = load i32, i32* %12, align 4
  %123 = ashr i32 %122, 16
  %124 = load i32*, i32** %6, align 8
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  store i32 %123, i32* %128, align 4
  %129 = load i32, i32* %12, align 4
  %130 = ashr i32 %129, 8
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 2
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  store i32 %130, i32* %135, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 3
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  store i32 %136, i32* %141, align 4
  br label %142

142:                                              ; preds = %102, %46, %39
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 4
  store i32 %145, i32* %10, align 4
  br label %19

146:                                              ; preds = %19
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %146, %15
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
