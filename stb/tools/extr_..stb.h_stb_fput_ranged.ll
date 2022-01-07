; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_fput_ranged.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_fput_ranged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stb_fput_ranged(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = sub nsw i32 %10, %9
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp sle i32 %12, -2147483648
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  br label %20

20:                                               ; preds = %14, %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 16777216
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 24
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @fputc(i32 %25, i32* %26)
  br label %28

28:                                               ; preds = %23, %20
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 65536
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = ashr i32 %32, 16
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @fputc(i32 %33, i32* %34)
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %37, 256
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = ashr i32 %40, 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @fputc(i32 %41, i32* %42)
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i32, i32* %6, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @fputc(i32 %45, i32* %46)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fputc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
