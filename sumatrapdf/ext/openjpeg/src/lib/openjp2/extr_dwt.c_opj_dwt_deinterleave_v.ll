; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_dwt.c_opj_dwt_deinterleave_v.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_dwt.c_opj_dwt_deinterleave_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32)* @opj_dwt_deinterleave_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opj_dwt_deinterleave_v(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %13, align 4
  %17 = load i32*, i32** %8, align 8
  store i32* %17, i32** %14, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %12, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32* %21, i32** %15, align 8
  br label %22

22:                                               ; preds = %26, %6
  %23 = load i32, i32* %13, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %13, align 4
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i32*, i32** %15, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %14, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32*, i32** %14, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32* %33, i32** %14, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32* %35, i32** %15, align 8
  br label %22

36:                                               ; preds = %22
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  store i32* %42, i32** %14, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = sub i64 0, %46
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32* %48, i32** %15, align 8
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %54, %36
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %13, align 4
  %53 = icmp ne i32 %51, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i32*, i32** %15, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %14, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32*, i32** %14, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %14, align 8
  %62 = load i32*, i32** %15, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32* %63, i32** %15, align 8
  br label %50

64:                                               ; preds = %50
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
