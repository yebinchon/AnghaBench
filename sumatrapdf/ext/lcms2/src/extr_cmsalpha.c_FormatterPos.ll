; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsalpha.c_FormatterPos.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsalpha.c_FormatterPos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @FormatterPos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FormatterPos(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @T_BYTES(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @T_FLOAT(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 5, i32* %2, align 4
  br label %55

14:                                               ; preds = %9, %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @T_FLOAT(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 3, i32* %2, align 4
  br label %55

22:                                               ; preds = %17, %14
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @T_FLOAT(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 4, i32* %2, align 4
  br label %55

30:                                               ; preds = %25, %22
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @T_FLOAT(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %55

38:                                               ; preds = %33, %30
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = call i64 @T_FLOAT(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %55

46:                                               ; preds = %41, %38
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* %3, align 4
  %51 = call i64 @T_ENDIAN16(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 3, i32* %2, align 4
  br label %55

54:                                               ; preds = %49, %46
  store i32 -1, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %53, %45, %37, %29, %21, %13
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @T_BYTES(i32) #1

declare dso_local i64 @T_FLOAT(i32) #1

declare dso_local i64 @T_ENDIAN16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
