; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_docListExceptMerge.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_docListExceptMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @docListExceptMerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @docListExceptMerge(i32* %0, i32* %1, i32* %2) #0 {
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

18:                                               ; preds = %50, %3
  %19 = load i64, i64* %9, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, i64* %10, align 8
  %23 = icmp sgt i64 %22, 0
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i1 [ false, %18 ], [ %23, %21 ]
  br i1 %25, label %26, label %51

26:                                               ; preds = %24
  %27 = load i64, i64* %9, align 8
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32*, i32** %6, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @docListAddDocid(i32* %32, i64 %33)
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp sle i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i64 @nextDocid(i32* %7)
  store i64 %40, i64* %9, align 8
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i64, i64* %10, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp sle i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i64 @nextDocid(i32* %8)
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %48, %44, %41
  br label %18

51:                                               ; preds = %24
  br label %52

52:                                               ; preds = %55, %51
  %53 = load i64, i64* %9, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32*, i32** %6, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @docListAddDocid(i32* %56, i64 %57)
  %59 = call i64 @nextDocid(i32* %7)
  store i64 %59, i64* %9, align 8
  br label %52

60:                                               ; preds = %52
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
