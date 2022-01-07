; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_utf.c_jsU_runetochar.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_utf.c_jsU_runetochar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Rune1 = common dso_local global i32 0, align 4
@Rune2 = common dso_local global i32 0, align 4
@T2 = common dso_local global i32 0, align 4
@Bitx = common dso_local global i32 0, align 4
@Tx = common dso_local global i32 0, align 4
@Maskx = common dso_local global i32 0, align 4
@T3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @runetochar(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @Rune1, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = trunc i32 %13 to i8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 %14, i8* %16, align 1
  store i32 1, i32* %3, align 4
  br label %68

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @Rune2, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load i32, i32* @T2, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @Bitx, align 4
  %25 = mul nsw i32 1, %24
  %26 = ashr i32 %23, %25
  %27 = or i32 %22, %26
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 %28, i8* %30, align 1
  %31 = load i32, i32* @Tx, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @Maskx, align 4
  %34 = and i32 %32, %33
  %35 = or i32 %31, %34
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  store i8 %36, i8* %38, align 1
  store i32 2, i32* %3, align 4
  br label %68

39:                                               ; preds = %17
  %40 = load i32, i32* @T3, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @Bitx, align 4
  %43 = mul nsw i32 2, %42
  %44 = ashr i32 %41, %43
  %45 = or i32 %40, %44
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  store i8 %46, i8* %48, align 1
  %49 = load i32, i32* @Tx, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @Bitx, align 4
  %52 = mul nsw i32 1, %51
  %53 = ashr i32 %50, %52
  %54 = load i32, i32* @Maskx, align 4
  %55 = and i32 %53, %54
  %56 = or i32 %49, %55
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  store i8 %57, i8* %59, align 1
  %60 = load i32, i32* @Tx, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @Maskx, align 4
  %63 = and i32 %61, %62
  %64 = or i32 %60, %63
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  store i8 %65, i8* %67, align 1
  store i32 3, i32* %3, align 4
  br label %68

68:                                               ; preds = %39, %21, %12
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
