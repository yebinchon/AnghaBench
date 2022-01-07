; ModuleID = '/home/carl/AnghaBench/the_silver_searcher/src/extr_util.c_init_wordchar_table.c'
source_filename = "/home/carl/AnghaBench/the_silver_searcher/src/extr_util.c_init_wordchar_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wordchar_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_wordchar_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %43, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 256
  br i1 %5, label %6, label %46

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* %2, align 1
  %9 = load i8, i8* %2, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp sle i32 97, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = load i8, i8* %2, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp sle i32 %14, 122
  br i1 %15, label %36, label %16

16:                                               ; preds = %12, %6
  %17 = load i8, i8* %2, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp sle i32 65, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i8, i8* %2, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sle i32 %22, 90
  br i1 %23, label %36, label %24

24:                                               ; preds = %20, %16
  %25 = load i8, i8* %2, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp sle i32 48, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i8, i8* %2, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp sle i32 %30, 57
  br i1 %31, label %36, label %32

32:                                               ; preds = %28, %24
  %33 = load i8, i8* %2, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 95
  br label %36

36:                                               ; preds = %32, %28, %20, %12
  %37 = phi i1 [ true, %28 ], [ true, %20 ], [ true, %12 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = load i32*, i32** @wordchar_table, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  br label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %1, align 4
  br label %3

46:                                               ; preds = %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
