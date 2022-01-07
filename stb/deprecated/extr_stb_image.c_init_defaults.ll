; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_init_defaults.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_init_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@default_length = common dso_local global i32* null, align 8
@default_distance = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_defaults() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %10, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp sle i32 %3, 143
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = load i32*, i32** @default_length, align 8
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  store i32 8, i32* %9, align 4
  br label %10

10:                                               ; preds = %5
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %1, align 4
  br label %2

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %22, %13
  %15 = load i32, i32* %1, align 4
  %16 = icmp sle i32 %15, 255
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i32*, i32** @default_length, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 9, i32* %21, align 4
  br label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %14

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %34, %25
  %27 = load i32, i32* %1, align 4
  %28 = icmp sle i32 %27, 279
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i32*, i32** @default_length, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 7, i32* %33, align 4
  br label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %1, align 4
  br label %26

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %46, %37
  %39 = load i32, i32* %1, align 4
  %40 = icmp sle i32 %39, 287
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32*, i32** @default_length, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 8, i32* %45, align 4
  br label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %1, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %1, align 4
  br label %38

49:                                               ; preds = %38
  store i32 0, i32* %1, align 4
  br label %50

50:                                               ; preds = %58, %49
  %51 = load i32, i32* %1, align 4
  %52 = icmp sle i32 %51, 31
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i32*, i32** @default_distance, align 8
  %55 = load i32, i32* %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 5, i32* %57, align 4
  br label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %1, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %1, align 4
  br label %50

61:                                               ; preds = %50
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
