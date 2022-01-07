; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_adler32.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_adler32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_adler32(i32 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 65521, i64* %7, align 8
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 65535
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %8, align 8
  %15 = load i32, i32* %4, align 4
  %16 = ashr i32 %15, 16
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = srem i32 %18, 5552
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %10, align 8
  br label %21

21:                                               ; preds = %117, %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %127

24:                                               ; preds = %21
  store i64 0, i64* %11, align 8
  br label %25

25:                                               ; preds = %97, %24
  %26 = load i64, i64* %11, align 8
  %27 = add i64 %26, 7
  %28 = load i64, i64* %10, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %100

30:                                               ; preds = %25
  %31 = load i64*, i64** %5, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %9, align 8
  %39 = load i64*, i64** %5, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %9, align 8
  %47 = load i64*, i64** %5, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %9, align 8
  %55 = load i64*, i64** %5, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %9, align 8
  %63 = load i64*, i64** %5, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 4
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %9, align 8
  %71 = load i64*, i64** %5, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 5
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %9, align 8
  %79 = load i64*, i64** %5, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 6
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %8, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %9, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %9, align 8
  %87 = load i64*, i64** %5, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 7
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %8, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %9, align 8
  %95 = load i64*, i64** %5, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 8
  store i64* %96, i64** %5, align 8
  br label %97

97:                                               ; preds = %30
  %98 = load i64, i64* %11, align 8
  %99 = add i64 %98, 8
  store i64 %99, i64* %11, align 8
  br label %25

100:                                              ; preds = %25
  br label %101

101:                                              ; preds = %114, %100
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* %10, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %101
  %106 = load i64*, i64** %5, align 8
  %107 = getelementptr inbounds i64, i64* %106, i32 1
  store i64* %107, i64** %5, align 8
  %108 = load i64, i64* %106, align 8
  %109 = load i64, i64* %8, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %8, align 8
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* %9, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %9, align 8
  br label %114

114:                                              ; preds = %105
  %115 = load i64, i64* %11, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %11, align 8
  br label %101

117:                                              ; preds = %101
  %118 = load i64, i64* %8, align 8
  %119 = urem i64 %118, 65521
  store i64 %119, i64* %8, align 8
  %120 = load i64, i64* %9, align 8
  %121 = urem i64 %120, 65521
  store i64 %121, i64* %9, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = sub i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %6, align 4
  store i64 5552, i64* %10, align 8
  br label %21

127:                                              ; preds = %21
  %128 = load i64, i64* %9, align 8
  %129 = shl i64 %128, 16
  %130 = load i64, i64* %8, align 8
  %131 = add i64 %129, %130
  %132 = trunc i64 %131 to i32
  ret i32 %132
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
