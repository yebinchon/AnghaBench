; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_stb.c_stb_adler32_old.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_stb.c_stb_adler32_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_adler32_old(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 65521, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 65535
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 16
  store i32 %13, i32* %9, align 4
  br label %14

14:                                               ; preds = %38, %3
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %6, align 4
  %17 = icmp sgt i32 %15, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %5, align 8
  %21 = load i32, i32* %19, align 4
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 65521
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %27, 65521
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %26, %18
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp sgt i32 %33, 65521
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %36, 65521
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %35, %29
  br label %14

39:                                               ; preds = %14
  %40 = load i32, i32* %9, align 4
  %41 = shl i32 %40, 16
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %41, %42
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
