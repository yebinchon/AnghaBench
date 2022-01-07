; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convert.c_convert_4u32s_C1R.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convert.c_convert_4u32s_C1R.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i32)* @convert_4u32s_C1R to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_4u32s_C1R(i32* %0, i64* %1, i32 %2) #0 {
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

10:                                               ; preds = %35, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, -2
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %10
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %4, align 8
  %18 = load i32, i32* %16, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = ashr i32 %19, 4
  %21 = sext i32 %20 to i64
  %22 = load i64*, i64** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = add i32 %23, 0
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %22, i64 %25
  store i64 %21, i64* %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 15
  %29 = zext i32 %28 to i64
  %30 = load i64*, i64** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = add i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %30, i64 %33
  store i64 %29, i64* %34, align 8
  br label %35

35:                                               ; preds = %15
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %36, 2
  store i32 %37, i32* %7, align 4
  br label %10

38:                                               ; preds = %10
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %4, align 8
  %45 = load i32, i32* %43, align 4
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = ashr i32 %46, 4
  %48 = sext i32 %47 to i64
  %49 = load i64*, i64** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = add i32 %50, 0
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %49, i64 %52
  store i64 %48, i64* %53, align 8
  br label %54

54:                                               ; preds = %42, %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
