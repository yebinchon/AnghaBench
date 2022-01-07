; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_unicode2.c_sqlite3Fts5UnicodeIsdiacritic.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_unicode2.c_sqlite3Fts5UnicodeIsdiacritic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5UnicodeIsdiacritic(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 134389727, i32* %4, align 4
  store i32 221688, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 768
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, 817
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %30

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 800
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 %17, 768
  %19 = shl i32 1, %18
  %20 = and i32 %16, %19
  br label %28

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %3, align 4
  %24 = sub nsw i32 %23, 768
  %25 = sub nsw i32 %24, 32
  %26 = shl i32 1, %25
  %27 = and i32 %22, %26
  br label %28

28:                                               ; preds = %21, %15
  %29 = phi i32 [ %20, %15 ], [ %27, %21 ]
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
