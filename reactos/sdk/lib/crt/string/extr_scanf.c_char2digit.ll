; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/string/extr_scanf.c_char2digit.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/string/extr_scanf.c_char2digit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i32)* @char2digit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @char2digit(i8 signext %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i32 %1, i32* %5, align 4
  %6 = load i8, i8* %4, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp sge i32 %7, 48
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load i8, i8* %4, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp sle i32 %11, 57
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load i8, i8* %4, align 1
  %15 = sext i8 %14 to i32
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 48, %16
  %18 = sub nsw i32 %17, 1
  %19 = icmp sle i32 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i8, i8* %4, align 1
  %22 = sext i8 %21 to i32
  %23 = sub nsw i32 %22, 48
  store i32 %23, i32* %3, align 4
  br label %69

24:                                               ; preds = %13, %9, %2
  %25 = load i32, i32* %5, align 4
  %26 = icmp sle i32 %25, 10
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %69

28:                                               ; preds = %24
  %29 = load i8, i8* %4, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp sge i32 %30, 65
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load i8, i8* %4, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sle i32 %34, 90
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load i8, i8* %4, align 1
  %38 = sext i8 %37 to i32
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 65, %39
  %41 = sub nsw i32 %40, 11
  %42 = icmp sle i32 %38, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i8, i8* %4, align 1
  %45 = sext i8 %44 to i32
  %46 = sub nsw i32 %45, 65
  %47 = add nsw i32 %46, 10
  store i32 %47, i32* %3, align 4
  br label %69

48:                                               ; preds = %36, %32, %28
  %49 = load i8, i8* %4, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sge i32 %50, 97
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load i8, i8* %4, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sle i32 %54, 122
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i8, i8* %4, align 1
  %58 = sext i8 %57 to i32
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 97, %59
  %61 = sub nsw i32 %60, 11
  %62 = icmp sle i32 %58, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load i8, i8* %4, align 1
  %65 = sext i8 %64 to i32
  %66 = sub nsw i32 %65, 97
  %67 = add nsw i32 %66, 10
  store i32 %67, i32* %3, align 4
  br label %69

68:                                               ; preds = %56, %52, %48
  store i32 -1, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %63, %43, %27, %20
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
