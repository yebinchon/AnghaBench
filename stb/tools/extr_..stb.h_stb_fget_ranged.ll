; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_fget_ranged.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_fget_ranged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_fget_ranged(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp sgt i32 %8, 16777216
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @stb_fgetc(i32* %11)
  %13 = shl i32 %12, 24
  %14 = load i32, i32* %7, align 4
  %15 = add i32 %14, %13
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 65536
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @stb_fgetc(i32* %20)
  %22 = shl i32 %21, 16
  %23 = load i32, i32* %7, align 4
  %24 = add i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %19, %16
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 256
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @stb_fgetc(i32* %29)
  %31 = shl i32 %30, 8
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %28, %25
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @stb_fgetc(i32* %35)
  %37 = load i32, i32* %7, align 4
  %38 = add i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %39, %40
  ret i32 %41
}

declare dso_local i32 @stb_fgetc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
