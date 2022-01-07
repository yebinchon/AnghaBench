; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_7zIn.c_SzReadNumber.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_7zIn.c_SzReadNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @SzReadNumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SzReadNumber(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 128, i32* %7, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @SzReadByte(i32* %11, i32* %6)
  %13 = call i32 @RINOK(i32 %12)
  %14 = load i32*, i32** %5, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %49, %2
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %52

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 %25, 1
  %27 = and i32 %24, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = mul nsw i32 8, %29
  %31 = shl i32 %28, %30
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, %31
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @SZ_OK, align 4
  store i32 %35, i32* %3, align 4
  br label %54

36:                                               ; preds = %18
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @SzReadByte(i32* %37, i32* %9)
  %39 = call i32 @RINOK(i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = mul nsw i32 8, %41
  %43 = shl i32 %40, %42
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %7, align 4
  %48 = ashr i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %36
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %15

52:                                               ; preds = %15
  %53 = load i32, i32* @SZ_OK, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %23
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @SzReadByte(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
