; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_mmr.c_jbig2_find_changing_element.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_mmr.c_jbig2_find_changing_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MINUS1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64)* @jbig2_find_changing_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @jbig2_find_changing_element(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  store i64 %13, i64* %4, align 8
  br label %50

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @MINUS1, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  store i64 0, i64* %6, align 8
  br label %32

19:                                               ; preds = %14
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @getbit(i32* %24, i64 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i64, i64* %6, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %6, align 8
  br label %31

29:                                               ; preds = %19
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %4, align 8
  br label %50

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %18
  br label %33

33:                                               ; preds = %45, %32
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @getbit(i32* %38, i64 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %48

45:                                               ; preds = %37
  %46 = load i64, i64* %6, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %6, align 8
  br label %33

48:                                               ; preds = %44, %33
  %49 = load i64, i64* %6, align 8
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %48, %29, %12
  %51 = load i64, i64* %4, align 8
  ret i64 %51
}

declare dso_local i32 @getbit(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
