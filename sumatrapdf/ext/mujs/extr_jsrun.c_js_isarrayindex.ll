; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrun.c_js_isarrayindex.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrun.c_js_isarrayindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @js_isarrayindex(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %37, %3
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %6, align 8
  %17 = load i8, i8* %15, align 1
  %18 = sext i8 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sge i32 %19, 48
  br i1 %20, label %21, label %36

21:                                               ; preds = %14
  %22 = load i32, i32* %9, align 4
  %23 = icmp sle i32 %22, 57
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @INT_MAX, align 4
  %27 = sdiv i32 %26, 10
  %28 = icmp sge i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %41

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = mul nsw i32 %31, 10
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %33, 48
  %35 = add nsw i32 %32, %34
  store i32 %35, i32* %8, align 4
  br label %37

36:                                               ; preds = %21, %14
  store i32 0, i32* %4, align 4
  br label %41

37:                                               ; preds = %30
  br label %10

38:                                               ; preds = %10
  %39 = load i32, i32* %8, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  store i32 1, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %36, %29
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
