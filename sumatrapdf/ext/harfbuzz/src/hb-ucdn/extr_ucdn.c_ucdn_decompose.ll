; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/src/hb-ucdn/extr_ucdn.c_ucdn_decompose.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/src/hb-ucdn/extr_ucdn.c_ucdn_decompose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucdn_decompose(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i64 @hangul_pair_decompose(i32 %10, i32* %11, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %47

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = call i16* @get_decomp_record(i32 %17)
  store i16* %18, i16** %8, align 8
  %19 = load i16*, i16** %8, align 8
  %20 = getelementptr inbounds i16, i16* %19, i64 0
  %21 = load i16, i16* %20, align 2
  %22 = zext i16 %21 to i32
  %23 = ashr i32 %22, 8
  store i32 %23, i32* %9, align 4
  %24 = load i16*, i16** %8, align 8
  %25 = getelementptr inbounds i16, i16* %24, i64 0
  %26 = load i16, i16* %25, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 255
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %16
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %16
  store i32 0, i32* %4, align 4
  br label %47

34:                                               ; preds = %30
  %35 = load i16*, i16** %8, align 8
  %36 = getelementptr inbounds i16, i16* %35, i32 1
  store i16* %36, i16** %8, align 8
  %37 = call i32 @decode_utf16(i16** %8)
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = call i32 @decode_utf16(i16** %8)
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  br label %46

44:                                               ; preds = %34
  %45 = load i32*, i32** %7, align 8
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %44, %41
  store i32 1, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %33, %15
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @hangul_pair_decompose(i32, i32*, i32*) #1

declare dso_local i16* @get_decomp_record(i32) #1

declare dso_local i32 @decode_utf16(i16**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
