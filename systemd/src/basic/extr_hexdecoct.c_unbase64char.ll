; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_hexdecoct.c_unbase64char.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_hexdecoct.c_unbase64char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unbase64char(i8 signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp sge i32 %6, 65
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i8, i8* %3, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp sle i32 %10, 90
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i8, i8* %3, align 1
  %14 = sext i8 %13 to i32
  %15 = sub nsw i32 %14, 65
  store i32 %15, i32* %2, align 4
  br label %65

16:                                               ; preds = %8, %1
  store i32 26, i32* %4, align 4
  %17 = load i8, i8* %3, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp sge i32 %18, 97
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i8, i8* %3, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sle i32 %22, 122
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i8, i8* %3, align 1
  %26 = sext i8 %25 to i32
  %27 = sub nsw i32 %26, 97
  %28 = load i32, i32* %4, align 4
  %29 = add i32 %27, %28
  store i32 %29, i32* %2, align 4
  br label %65

30:                                               ; preds = %20, %16
  %31 = load i32, i32* %4, align 4
  %32 = add i32 %31, 26
  store i32 %32, i32* %4, align 4
  %33 = load i8, i8* %3, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sge i32 %34, 48
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load i8, i8* %3, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp sle i32 %38, 57
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i8, i8* %3, align 1
  %42 = sext i8 %41 to i32
  %43 = sub nsw i32 %42, 48
  %44 = load i32, i32* %4, align 4
  %45 = add i32 %43, %44
  store i32 %45, i32* %2, align 4
  br label %65

46:                                               ; preds = %36, %30
  %47 = load i32, i32* %4, align 4
  %48 = add i32 %47, 10
  store i32 %48, i32* %4, align 4
  %49 = load i8, i8* %3, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 43
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %65

54:                                               ; preds = %46
  %55 = load i32, i32* %4, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %4, align 4
  %57 = load i8, i8* %3, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 47
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %65

62:                                               ; preds = %54
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %60, %52, %40, %24, %12
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
