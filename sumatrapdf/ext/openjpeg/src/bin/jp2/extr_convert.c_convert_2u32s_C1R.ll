; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convert.c_convert_2u32s_C1R.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convert.c_convert_2u32s_C1R.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i32)* @convert_2u32s_C1R to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_2u32s_C1R(i32* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %53, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, -4
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %56

15:                                               ; preds = %10
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %4, align 8
  %18 = load i32, i32* %16, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = ashr i32 %19, 6
  %21 = sext i32 %20 to i64
  %22 = load i64*, i64** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = add i32 %23, 0
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %22, i64 %25
  store i64 %21, i64* %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = ashr i32 %27, 4
  %29 = and i32 %28, 3
  %30 = zext i32 %29 to i64
  %31 = load i64*, i64** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  store i64 %30, i64* %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 2
  %38 = and i32 %37, 3
  %39 = zext i32 %38 to i64
  %40 = load i64*, i64** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = add i32 %41, 2
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %40, i64 %43
  store i64 %39, i64* %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 3
  %47 = zext i32 %46 to i64
  %48 = load i64*, i64** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = add i32 %49, 3
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %48, i64 %51
  store i64 %47, i64* %52, align 8
  br label %53

53:                                               ; preds = %15
  %54 = load i32, i32* %7, align 4
  %55 = add i32 %54, 4
  store i32 %55, i32* %7, align 4
  br label %10

56:                                               ; preds = %10
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, 3
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %100

60:                                               ; preds = %56
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %4, align 8
  %63 = load i32, i32* %61, align 4
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 3
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %9, align 4
  %67 = ashr i32 %66, 6
  %68 = sext i32 %67 to i64
  %69 = load i64*, i64** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = add i32 %70, 0
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %69, i64 %72
  store i64 %68, i64* %73, align 8
  %74 = load i32, i32* %6, align 4
  %75 = icmp ugt i32 %74, 1
  br i1 %75, label %76, label %99

76:                                               ; preds = %60
  %77 = load i32, i32* %9, align 4
  %78 = ashr i32 %77, 4
  %79 = and i32 %78, 3
  %80 = zext i32 %79 to i64
  %81 = load i64*, i64** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = add i32 %82, 1
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %81, i64 %84
  store i64 %80, i64* %85, align 8
  %86 = load i32, i32* %6, align 4
  %87 = icmp ugt i32 %86, 2
  br i1 %87, label %88, label %98

88:                                               ; preds = %76
  %89 = load i32, i32* %9, align 4
  %90 = ashr i32 %89, 2
  %91 = and i32 %90, 3
  %92 = zext i32 %91 to i64
  %93 = load i64*, i64** %5, align 8
  %94 = load i32, i32* %7, align 4
  %95 = add i32 %94, 2
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %93, i64 %96
  store i64 %92, i64* %97, align 8
  br label %98

98:                                               ; preds = %88, %76
  br label %99

99:                                               ; preds = %98, %60
  br label %100

100:                                              ; preds = %99, %56
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
