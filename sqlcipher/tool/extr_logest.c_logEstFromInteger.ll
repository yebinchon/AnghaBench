; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_logest.c_logEstFromInteger.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_logest.c_logEstFromInteger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@logEstFromInteger.a = internal global [8 x i32] [i32 0, i32 2, i32 3, i32 5, i32 6, i32 7, i32 8, i32 9], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @logEstFromInteger(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 40, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 8
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %49

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %15, %11
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, 10
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = shl i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %12

20:                                               ; preds = %12
  br label %40

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %25, %21
  %23 = load i32, i32* %3, align 4
  %24 = icmp sgt i32 %23, 255
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 40
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = ashr i32 %28, 4
  store i32 %29, i32* %3, align 4
  br label %22

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %34, %30
  %32 = load i32, i32* %3, align 4
  %33 = icmp sgt i32 %32, 15
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 10
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %3, align 4
  %38 = ashr i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %31

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %20
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, 7
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* @logEstFromInteger.a, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %45, %46
  %48 = sub nsw i32 %47, 10
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %40, %10
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
