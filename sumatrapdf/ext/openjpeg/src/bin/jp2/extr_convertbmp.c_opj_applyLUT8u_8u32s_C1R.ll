; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convertbmp.c_opj_applyLUT8u_8u32s_C1R.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convertbmp.c_opj_applyLUT8u_8u32s_C1R.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, i64*, i64, i64*, i32, i32)* @opj_applyLUT8u_8u32s_C1R to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opj_applyLUT8u_8u32s_C1R(i64* %0, i64 %1, i64* %2, i64 %3, i64* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64* %0, i64** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %49, %7
  %19 = load i32, i32* %15, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %18
  store i32 0, i32* %16, align 4
  br label %22

22:                                               ; preds = %39, %21
  %23 = load i32, i32* %16, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load i64*, i64** %12, align 8
  %28 = load i64*, i64** %8, align 8
  %29 = load i32, i32* %16, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %27, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %10, align 8
  %36 = load i32, i32* %16, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  store i64 %34, i64* %38, align 8
  br label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %16, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %16, align 4
  br label %22

42:                                               ; preds = %22
  %43 = load i64, i64* %9, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 %43
  store i64* %45, i64** %8, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64*, i64** %10, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 %46
  store i64* %48, i64** %10, align 8
  br label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %15, align 4
  %51 = add i32 %50, -1
  store i32 %51, i32* %15, align 4
  br label %18

52:                                               ; preds = %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
