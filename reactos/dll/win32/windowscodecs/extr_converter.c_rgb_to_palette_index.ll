; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_converter.c_rgb_to_palette_index.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_converter.c_rgb_to_palette_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i32*, i64)* @rgb_to_palette_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rgb_to_palette_index(i64 %0, i64 %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 -1, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %22

22:                                               ; preds = %76, %5
  %23 = load i64, i64* %14, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %79

26:                                               ; preds = %22
  %27 = load i32*, i32** %10, align 8
  %28 = load i64, i64* %14, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 16
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %15, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i64, i64* %14, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 8
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %16, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i64, i64* %14, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %17, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %15, align 8
  %46 = sub i64 %44, %45
  store i64 %46, i64* %18, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %16, align 8
  %49 = sub i64 %47, %48
  store i64 %49, i64* %19, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %17, align 8
  %52 = sub i64 %50, %51
  store i64 %52, i64* %20, align 8
  %53 = load i64, i64* %18, align 8
  %54 = load i64, i64* %18, align 8
  %55 = mul i64 %53, %54
  %56 = load i64, i64* %19, align 8
  %57 = load i64, i64* %19, align 8
  %58 = mul i64 %56, %57
  %59 = add i64 %55, %58
  %60 = load i64, i64* %20, align 8
  %61 = load i64, i64* %20, align 8
  %62 = mul i64 %60, %61
  %63 = add i64 %59, %62
  store i64 %63, i64* %21, align 8
  %64 = load i64, i64* %21, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %26
  %67 = load i64, i64* %14, align 8
  store i64 %67, i64* %6, align 8
  br label %81

68:                                               ; preds = %26
  %69 = load i64, i64* %21, align 8
  %70 = load i64, i64* %12, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i64, i64* %21, align 8
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %14, align 8
  store i64 %74, i64* %13, align 8
  br label %75

75:                                               ; preds = %72, %68
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %14, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %14, align 8
  br label %22

79:                                               ; preds = %22
  %80 = load i64, i64* %13, align 8
  store i64 %80, i64* %6, align 8
  br label %81

81:                                               ; preds = %79, %66
  %82 = load i64, i64* %6, align 8
  ret i64 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
