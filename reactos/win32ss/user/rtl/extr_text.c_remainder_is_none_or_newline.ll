; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/rtl/extr_text.c_remainder_is_none_or_newline.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/rtl/extr_text.c_remainder_is_none_or_newline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@LF = common dso_local global i64 0, align 8
@CR = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*)* @remainder_is_none_or_newline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remainder_is_none_or_newline(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @TRUE, align 4
  store i32 %9, i32* %3, align 4
  br label %59

10:                                               ; preds = %2
  %11 = load i64*, i64** %5, align 8
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LF, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load i64*, i64** %5, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CR, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %3, align 4
  br label %59

22:                                               ; preds = %15, %10
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %3, align 4
  br label %59

28:                                               ; preds = %22
  %29 = load i64*, i64** %5, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %5, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %3, align 4
  br label %59

37:                                               ; preds = %28
  %38 = load i64*, i64** %5, align 8
  %39 = getelementptr inbounds i64, i64* %38, i32 1
  store i64* %39, i64** %5, align 8
  %40 = load i64*, i64** %5, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CR, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load i64*, i64** %5, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @LF, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %3, align 4
  br label %59

51:                                               ; preds = %44, %37
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %3, align 4
  br label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @TRUE, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %55, %49, %35, %26, %20, %8
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
