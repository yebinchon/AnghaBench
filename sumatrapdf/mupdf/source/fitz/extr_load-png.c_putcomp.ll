; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-png.c_putcomp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-png.c_putcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @putcomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putcomp(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = shl i32 1, %10
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %64 [
    i32 1, label %14
    i32 2, label %30
    i32 4, label %47
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 7
  %18 = sub nsw i32 7, %17
  %19 = shl i32 %15, %18
  %20 = xor i32 %19, -1
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, %20
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %25, align 1
  br label %64

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 3
  %34 = sub nsw i32 3, %33
  %35 = shl i32 %34, 1
  %36 = shl i32 %31, %35
  %37 = xor i32 %36, -1
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = ashr i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, %37
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %42, align 1
  br label %64

47:                                               ; preds = %4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 1
  %51 = sub nsw i32 1, %50
  %52 = shl i32 %51, 2
  %53 = shl i32 %48, %52
  %54 = xor i32 %53, -1
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = ashr i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, %54
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %59, align 1
  br label %64

64:                                               ; preds = %4, %47, %30, %14
  %65 = load i32, i32* %7, align 4
  switch i32 %65, label %138 [
    i32 1, label %66
    i32 2, label %81
    i32 4, label %97
    i32 8, label %113
    i32 16, label %120
  ]

66:                                               ; preds = %64
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, 7
  %70 = sub nsw i32 7, %69
  %71 = shl i32 %67, %70
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = ashr i32 %73, 3
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = or i32 %78, %71
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %76, align 1
  br label %138

81:                                               ; preds = %64
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %6, align 4
  %84 = and i32 %83, 3
  %85 = sub nsw i32 3, %84
  %86 = shl i32 %85, 1
  %87 = shl i32 %82, %86
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = ashr i32 %89, 2
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = or i32 %94, %87
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %92, align 1
  br label %138

97:                                               ; preds = %64
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %6, align 4
  %100 = and i32 %99, 1
  %101 = sub nsw i32 1, %100
  %102 = shl i32 %101, 2
  %103 = shl i32 %98, %102
  %104 = load i8*, i8** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = ashr i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = or i32 %110, %103
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %108, align 1
  br label %138

113:                                              ; preds = %64
  %114 = load i32, i32* %8, align 4
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  store i8 %115, i8* %119, align 1
  br label %138

120:                                              ; preds = %64
  %121 = load i32, i32* %8, align 4
  %122 = ashr i32 %121, 8
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %5, align 8
  %125 = load i32, i32* %6, align 4
  %126 = shl i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  store i8 %123, i8* %128, align 1
  %129 = load i32, i32* %8, align 4
  %130 = and i32 %129, 255
  %131 = trunc i32 %130 to i8
  %132 = load i8*, i8** %5, align 8
  %133 = load i32, i32* %6, align 4
  %134 = shl i32 %133, 1
  %135 = add nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %132, i64 %136
  store i8 %131, i8* %137, align 1
  br label %138

138:                                              ; preds = %64, %120, %113, %97, %81, %66
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
