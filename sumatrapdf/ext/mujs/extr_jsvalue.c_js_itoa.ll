; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_js_itoa.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_js_itoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @js_itoa(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [32 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %6, align 8
  store i8 45, i8* %15, align 1
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %17, %12
  br label %20

20:                                               ; preds = %23, %19
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = urem i32 %24, 10
  %26 = add i32 %25, 48
  %27 = trunc i32 %26 to i8
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 %30
  store i8 %27, i8* %31, align 1
  %32 = load i32, i32* %7, align 4
  %33 = udiv i32 %32, 10
  store i32 %33, i32* %7, align 4
  br label %20

34:                                               ; preds = %20
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 %40
  store i8 48, i8* %41, align 1
  br label %42

42:                                               ; preds = %37, %34
  br label %43

43:                                               ; preds = %46, %42
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  store i8 %51, i8* %52, align 1
  br label %43

54:                                               ; preds = %43
  %55 = load i8*, i8** %6, align 8
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** %3, align 8
  ret i8* %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
