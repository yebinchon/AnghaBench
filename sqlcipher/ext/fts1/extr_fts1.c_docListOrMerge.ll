; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_docListOrMerge.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_docListOrMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @docListOrMerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @docListOrMerge(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @readerInit(i32* %7, i32* %12)
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @readerInit(i32* %8, i32* %14)
  %16 = call i64 @nextDocid(i32* %7)
  store i64 %16, i64* %9, align 8
  %17 = call i64 @nextDocid(i32* %8)
  store i64 %17, i64* %10, align 8
  br label %18

18:                                               ; preds = %54, %3
  %19 = load i64, i64* %9, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, i64* %10, align 8
  %23 = icmp sgt i64 %22, 0
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i1 [ false, %18 ], [ %23, %21 ]
  br i1 %25, label %26, label %55

26:                                               ; preds = %24
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @docListAddDocid(i32* %31, i64 %32)
  br label %38

34:                                               ; preds = %26
  %35 = load i32*, i32** %6, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @docListAddDocid(i32* %35, i64 %36)
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i64, i64* %9, align 8
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp sle i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i64 @nextDocid(i32* %7)
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %43, %38
  %46 = load i64, i64* %10, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i64 @nextDocid(i32* %8)
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %52, %48, %45
  br label %18

55:                                               ; preds = %24
  br label %56

56:                                               ; preds = %59, %55
  %57 = load i64, i64* %9, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32*, i32** %6, align 8
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @docListAddDocid(i32* %60, i64 %61)
  %63 = call i64 @nextDocid(i32* %7)
  store i64 %63, i64* %9, align 8
  br label %56

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %68, %64
  %66 = load i64, i64* %10, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32*, i32** %6, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @docListAddDocid(i32* %69, i64 %70)
  %72 = call i64 @nextDocid(i32* %8)
  store i64 %72, i64* %10, align 8
  br label %65

73:                                               ; preds = %65
  ret void
}

declare dso_local i32 @readerInit(i32*, i32*) #1

declare dso_local i64 @nextDocid(i32*) #1

declare dso_local i32 @docListAddDocid(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
