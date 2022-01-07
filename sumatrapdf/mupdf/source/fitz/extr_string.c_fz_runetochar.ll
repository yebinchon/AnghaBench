; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_string.c_fz_runetochar.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_string.c_fz_runetochar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Rune1 = common dso_local global i32 0, align 4
@Rune2 = common dso_local global i32 0, align 4
@T2 = common dso_local global i32 0, align 4
@Bitx = common dso_local global i32 0, align 4
@Tx = common dso_local global i32 0, align 4
@Maskx = common dso_local global i32 0, align 4
@Runemax = common dso_local global i32 0, align 4
@Runeerror = common dso_local global i32 0, align 4
@Rune3 = common dso_local global i32 0, align 4
@T3 = common dso_local global i32 0, align 4
@T4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fz_runetochar(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @Rune1, align 4
  %10 = icmp ule i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  %13 = trunc i32 %12 to i8
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 %13, i8* %15, align 1
  store i32 1, i32* %3, align 4
  br label %117

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @Rune2, align 4
  %19 = icmp ule i32 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load i32, i32* @T2, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @Bitx, align 4
  %24 = mul nsw i32 1, %23
  %25 = lshr i32 %22, %24
  %26 = or i32 %21, %25
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 %27, i8* %29, align 1
  %30 = load i32, i32* @Tx, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @Maskx, align 4
  %33 = and i32 %31, %32
  %34 = or i32 %30, %33
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8 %35, i8* %37, align 1
  store i32 2, i32* %3, align 4
  br label %117

38:                                               ; preds = %16
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @Runemax, align 4
  %41 = icmp ugt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @Runeerror, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @Rune3, align 4
  %47 = icmp ule i32 %45, %46
  br i1 %47, label %48, label %77

48:                                               ; preds = %44
  %49 = load i32, i32* @T3, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @Bitx, align 4
  %52 = mul nsw i32 2, %51
  %53 = lshr i32 %50, %52
  %54 = or i32 %49, %53
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  store i8 %55, i8* %57, align 1
  %58 = load i32, i32* @Tx, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @Bitx, align 4
  %61 = mul nsw i32 1, %60
  %62 = lshr i32 %59, %61
  %63 = load i32, i32* @Maskx, align 4
  %64 = and i32 %62, %63
  %65 = or i32 %58, %64
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  store i8 %66, i8* %68, align 1
  %69 = load i32, i32* @Tx, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @Maskx, align 4
  %72 = and i32 %70, %71
  %73 = or i32 %69, %72
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  store i8 %74, i8* %76, align 1
  store i32 3, i32* %3, align 4
  br label %117

77:                                               ; preds = %44
  %78 = load i32, i32* @T4, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @Bitx, align 4
  %81 = mul nsw i32 3, %80
  %82 = lshr i32 %79, %81
  %83 = or i32 %78, %82
  %84 = trunc i32 %83 to i8
  %85 = load i8*, i8** %4, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  store i8 %84, i8* %86, align 1
  %87 = load i32, i32* @Tx, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @Bitx, align 4
  %90 = mul nsw i32 2, %89
  %91 = lshr i32 %88, %90
  %92 = load i32, i32* @Maskx, align 4
  %93 = and i32 %91, %92
  %94 = or i32 %87, %93
  %95 = trunc i32 %94 to i8
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  store i8 %95, i8* %97, align 1
  %98 = load i32, i32* @Tx, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @Bitx, align 4
  %101 = mul nsw i32 1, %100
  %102 = lshr i32 %99, %101
  %103 = load i32, i32* @Maskx, align 4
  %104 = and i32 %102, %103
  %105 = or i32 %98, %104
  %106 = trunc i32 %105 to i8
  %107 = load i8*, i8** %4, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 2
  store i8 %106, i8* %108, align 1
  %109 = load i32, i32* @Tx, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @Maskx, align 4
  %112 = and i32 %110, %111
  %113 = or i32 %109, %112
  %114 = trunc i32 %113 to i8
  %115 = load i8*, i8** %4, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 3
  store i8 %114, i8* %116, align 1
  store i32 4, i32* %3, align 4
  br label %117

117:                                              ; preds = %77, %48, %20, %11
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
