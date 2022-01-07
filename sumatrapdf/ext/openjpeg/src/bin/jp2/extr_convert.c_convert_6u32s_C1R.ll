; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convert.c_convert_6u32s_C1R.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convert.c_convert_6u32s_C1R.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i32)* @convert_6u32s_C1R to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_6u32s_C1R(i32* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %69, %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, -4
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %72

19:                                               ; preds = %14
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %4, align 8
  %22 = load i32, i32* %20, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %4, align 8
  %25 = load i32, i32* %23, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %4, align 8
  %28 = load i32, i32* %26, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = ashr i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = load i64*, i64** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = add i32 %33, 0
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %32, i64 %35
  store i64 %31, i64* %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 3
  %39 = shl i32 %38, 4
  %40 = load i32, i32* %9, align 4
  %41 = ashr i32 %40, 4
  %42 = or i32 %39, %41
  %43 = zext i32 %42 to i64
  %44 = load i64*, i64** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, 1
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  store i64 %43, i64* %48, align 8
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 15
  %51 = shl i32 %50, 2
  %52 = load i32, i32* %10, align 4
  %53 = ashr i32 %52, 6
  %54 = or i32 %51, %53
  %55 = zext i32 %54 to i64
  %56 = load i64*, i64** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = add i32 %57, 2
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %56, i64 %59
  store i64 %55, i64* %60, align 8
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, 63
  %63 = zext i32 %62 to i64
  %64 = load i64*, i64** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = add i32 %65, 3
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %64, i64 %67
  store i64 %63, i64* %68, align 8
  br label %69

69:                                               ; preds = %19
  %70 = load i32, i32* %7, align 4
  %71 = add i32 %70, 4
  store i32 %71, i32* %7, align 4
  br label %14

72:                                               ; preds = %14
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, 3
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %128

76:                                               ; preds = %72
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %4, align 8
  %79 = load i32, i32* %77, align 4
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %6, align 4
  %81 = and i32 %80, 3
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %11, align 4
  %83 = ashr i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = load i64*, i64** %5, align 8
  %86 = load i32, i32* %7, align 4
  %87 = add i32 %86, 0
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %85, i64 %88
  store i64 %84, i64* %89, align 8
  %90 = load i32, i32* %6, align 4
  %91 = icmp ugt i32 %90, 1
  br i1 %91, label %92, label %127

92:                                               ; preds = %76
  %93 = load i32*, i32** %4, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %4, align 8
  %95 = load i32, i32* %93, align 4
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %11, align 4
  %97 = and i32 %96, 3
  %98 = shl i32 %97, 4
  %99 = load i32, i32* %12, align 4
  %100 = ashr i32 %99, 4
  %101 = or i32 %98, %100
  %102 = zext i32 %101 to i64
  %103 = load i64*, i64** %5, align 8
  %104 = load i32, i32* %7, align 4
  %105 = add i32 %104, 1
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %103, i64 %106
  store i64 %102, i64* %107, align 8
  %108 = load i32, i32* %6, align 4
  %109 = icmp ugt i32 %108, 2
  br i1 %109, label %110, label %126

110:                                              ; preds = %92
  %111 = load i32*, i32** %4, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %4, align 8
  %113 = load i32, i32* %111, align 4
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %12, align 4
  %115 = and i32 %114, 15
  %116 = shl i32 %115, 2
  %117 = load i32, i32* %13, align 4
  %118 = ashr i32 %117, 6
  %119 = or i32 %116, %118
  %120 = zext i32 %119 to i64
  %121 = load i64*, i64** %5, align 8
  %122 = load i32, i32* %7, align 4
  %123 = add i32 %122, 2
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %121, i64 %124
  store i64 %120, i64* %125, align 8
  br label %126

126:                                              ; preds = %110, %92
  br label %127

127:                                              ; preds = %126, %76
  br label %128

128:                                              ; preds = %127, %72
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
