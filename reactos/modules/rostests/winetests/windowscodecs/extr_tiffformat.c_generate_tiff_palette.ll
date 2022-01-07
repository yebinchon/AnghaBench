; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_tiffformat.c_generate_tiff_palette.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_tiffformat.c_generate_tiff_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @generate_tiff_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_tiff_palette(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to i16*
  store i16* %10, i16** %5, align 8
  %11 = load i16*, i16** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i16, i16* %11, i64 %13
  store i16* %14, i16** %6, align 8
  %15 = load i16*, i16** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i16, i16* %15, i64 %17
  store i16* %18, i16** %7, align 8
  %19 = load i16*, i16** %5, align 8
  %20 = getelementptr inbounds i16, i16* %19, i64 0
  store i16 4369, i16* %20, align 2
  %21 = load i16*, i16** %6, align 8
  %22 = getelementptr inbounds i16, i16* %21, i64 0
  store i16 8738, i16* %22, align 2
  %23 = load i16*, i16** %7, align 8
  %24 = getelementptr inbounds i16, i16* %23, i64 0
  store i16 13107, i16* %24, align 2
  %25 = load i16*, i16** %5, align 8
  %26 = getelementptr inbounds i16, i16* %25, i64 1
  store i16 17476, i16* %26, align 2
  %27 = load i16*, i16** %6, align 8
  %28 = getelementptr inbounds i16, i16* %27, i64 1
  store i16 21845, i16* %28, align 2
  %29 = load i16*, i16** %7, align 8
  %30 = getelementptr inbounds i16, i16* %29, i64 1
  store i16 26214, i16* %30, align 2
  %31 = load i16*, i16** %5, align 8
  %32 = getelementptr inbounds i16, i16* %31, i64 2
  store i16 30583, i16* %32, align 2
  %33 = load i16*, i16** %6, align 8
  %34 = getelementptr inbounds i16, i16* %33, i64 2
  store i16 -30584, i16* %34, align 2
  %35 = load i16*, i16** %7, align 8
  %36 = getelementptr inbounds i16, i16* %35, i64 2
  store i16 -26215, i16* %36, align 2
  %37 = load i16*, i16** %5, align 8
  %38 = getelementptr inbounds i16, i16* %37, i64 3
  store i16 -24159, i16* %38, align 2
  %39 = load i16*, i16** %6, align 8
  %40 = getelementptr inbounds i16, i16* %39, i64 3
  store i16 -19019, i16* %40, align 2
  %41 = load i16*, i16** %7, align 8
  %42 = getelementptr inbounds i16, i16* %41, i64 3
  store i16 -1, i16* %42, align 2
  store i32 4, i32* %8, align 4
  br label %43

43:                                               ; preds = %71, %2
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = mul i32 %48, 257
  %50 = trunc i32 %49 to i16
  %51 = load i16*, i16** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i16, i16* %51, i64 %53
  store i16 %50, i16* %54, align 2
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, 64
  %57 = mul i32 %56, 257
  %58 = trunc i32 %57 to i16
  %59 = load i16*, i16** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i16, i16* %59, i64 %61
  store i16 %58, i16* %62, align 2
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, 128
  %65 = mul i32 %64, 257
  %66 = trunc i32 %65 to i16
  %67 = load i16*, i16** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i16, i16* %67, i64 %69
  store i16 %66, i16* %70, align 2
  br label %71

71:                                               ; preds = %47
  %72 = load i32, i32* %8, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %43

74:                                               ; preds = %43
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
