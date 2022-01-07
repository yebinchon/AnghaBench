; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_string.c_ngx_utf8_decode.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_string.c_ngx_utf8_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_utf8_decode(i32** %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i32**, i32*** %4, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sge i32 %13, 240
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 7
  store i32 %17, i32* %7, align 4
  store i32 65535, i32* %9, align 4
  store i64 3, i64* %6, align 8
  br label %36

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = icmp sge i32 %19, 224
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 15
  store i32 %23, i32* %7, align 4
  store i32 2047, i32* %9, align 4
  store i64 2, i64* %6, align 8
  br label %35

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = icmp sge i32 %25, 194
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 31
  store i32 %29, i32* %7, align 4
  store i32 127, i32* %9, align 4
  store i64 1, i64* %6, align 8
  br label %34

30:                                               ; preds = %24
  %31 = load i32**, i32*** %4, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %31, align 8
  store i32 -1, i32* %3, align 4
  br label %72

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %21
  br label %36

36:                                               ; preds = %35, %15
  %37 = load i64, i64* %5, align 8
  %38 = sub i64 %37, 1
  %39 = load i64, i64* %6, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 -2, i32* %3, align 4
  br label %72

42:                                               ; preds = %36
  %43 = load i32**, i32*** %4, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %43, align 8
  br label %46

46:                                               ; preds = %57, %42
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = load i32**, i32*** %4, align 8
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %50, align 8
  %53 = load i32, i32* %51, align 4
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 128
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %72

57:                                               ; preds = %49
  %58 = load i32, i32* %7, align 4
  %59 = shl i32 %58, 6
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, 63
  %62 = or i32 %59, %61
  store i32 %62, i32* %7, align 4
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, -1
  store i64 %64, i64* %6, align 8
  br label %46

65:                                               ; preds = %46
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %65
  store i32 -1, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %69, %56, %41, %30
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
