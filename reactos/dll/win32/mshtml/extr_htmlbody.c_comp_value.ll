; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlbody.c_comp_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlbody.c_comp_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @comp_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_value(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 2
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 2, i32* %4, align 4
  br label %10

10:                                               ; preds = %9, %2
  br label %11

11:                                               ; preds = %66, %10
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %4, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %67

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %20, 16
  store i32 %21, i32* %5, align 4
  br label %66

22:                                               ; preds = %15
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %3, align 8
  %25 = load i32, i32* %23, align 4
  store i32 %25, i32* %6, align 4
  %26 = call i64 @isdigitW(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %29, 16
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 48
  %33 = add nsw i32 %30, %32
  store i32 %33, i32* %5, align 4
  br label %65

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = icmp sle i32 97, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = icmp sle i32 %38, 102
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = mul nsw i32 %41, 16
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 97
  %45 = add nsw i32 %42, %44
  %46 = add nsw i32 %45, 10
  store i32 %46, i32* %5, align 4
  br label %64

47:                                               ; preds = %37, %34
  %48 = load i32, i32* %6, align 4
  %49 = icmp sle i32 65, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = icmp sle i32 %51, 70
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = mul nsw i32 %54, 16
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %56, 65
  %58 = add nsw i32 %55, %57
  %59 = add nsw i32 %58, 10
  store i32 %59, i32* %5, align 4
  br label %63

60:                                               ; preds = %50, %47
  %61 = load i32, i32* %5, align 4
  %62 = mul nsw i32 %61, 16
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %53
  br label %64

64:                                               ; preds = %63, %40
  br label %65

65:                                               ; preds = %64, %28
  br label %66

66:                                               ; preds = %65, %19
  br label %11

67:                                               ; preds = %11
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @isdigitW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
