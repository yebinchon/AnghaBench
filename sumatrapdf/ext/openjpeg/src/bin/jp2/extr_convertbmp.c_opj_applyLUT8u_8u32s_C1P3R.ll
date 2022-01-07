; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convertbmp.c_opj_applyLUT8u_8u32s_C1P3R.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convertbmp.c_opj_applyLUT8u_8u32s_C1P3R.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, i64**, i64*, i64**, i32, i32)* @opj_applyLUT8u_8u32s_C1P3R to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opj_applyLUT8u_8u32s_C1P3R(i64* %0, i64 %1, i64** %2, i64* %3, i64** %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store i64* %0, i64** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64** %2, i64*** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %24 = load i64**, i64*** %10, align 8
  %25 = getelementptr inbounds i64*, i64** %24, i64 0
  %26 = load i64*, i64** %25, align 8
  store i64* %26, i64** %16, align 8
  %27 = load i64**, i64*** %10, align 8
  %28 = getelementptr inbounds i64*, i64** %27, i64 1
  %29 = load i64*, i64** %28, align 8
  store i64* %29, i64** %17, align 8
  %30 = load i64**, i64*** %10, align 8
  %31 = getelementptr inbounds i64*, i64** %30, i64 2
  %32 = load i64*, i64** %31, align 8
  store i64* %32, i64** %18, align 8
  %33 = load i64**, i64*** %12, align 8
  %34 = getelementptr inbounds i64*, i64** %33, i64 0
  %35 = load i64*, i64** %34, align 8
  store i64* %35, i64** %19, align 8
  %36 = load i64**, i64*** %12, align 8
  %37 = getelementptr inbounds i64*, i64** %36, i64 1
  %38 = load i64*, i64** %37, align 8
  store i64* %38, i64** %20, align 8
  %39 = load i64**, i64*** %12, align 8
  %40 = getelementptr inbounds i64*, i64** %39, i64 2
  %41 = load i64*, i64** %40, align 8
  store i64* %41, i64** %21, align 8
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %15, align 4
  br label %43

43:                                               ; preds = %103, %7
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %106

46:                                               ; preds = %43
  store i32 0, i32* %22, align 4
  br label %47

47:                                               ; preds = %81, %46
  %48 = load i32, i32* %22, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %84

51:                                               ; preds = %47
  %52 = load i64*, i64** %8, align 8
  %53 = load i32, i32* %22, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %23, align 8
  %57 = load i64*, i64** %19, align 8
  %58 = load i64, i64* %23, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %16, align 8
  %62 = load i32, i32* %22, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  store i64 %60, i64* %64, align 8
  %65 = load i64*, i64** %20, align 8
  %66 = load i64, i64* %23, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %17, align 8
  %70 = load i32, i32* %22, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 %68, i64* %72, align 8
  %73 = load i64*, i64** %21, align 8
  %74 = load i64, i64* %23, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** %18, align 8
  %78 = load i32, i32* %22, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  store i64 %76, i64* %80, align 8
  br label %81

81:                                               ; preds = %51
  %82 = load i32, i32* %22, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %22, align 4
  br label %47

84:                                               ; preds = %47
  %85 = load i64, i64* %9, align 8
  %86 = load i64*, i64** %8, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 %85
  store i64* %87, i64** %8, align 8
  %88 = load i64*, i64** %11, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64*, i64** %16, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 %90
  store i64* %92, i64** %16, align 8
  %93 = load i64*, i64** %11, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64*, i64** %17, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 %95
  store i64* %97, i64** %17, align 8
  %98 = load i64*, i64** %11, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %18, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 %100
  store i64* %102, i64** %18, align 8
  br label %103

103:                                              ; preds = %84
  %104 = load i32, i32* %15, align 4
  %105 = add i32 %104, -1
  store i32 %105, i32* %15, align 4
  br label %43

106:                                              ; preds = %43
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
