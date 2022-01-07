; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_fput_varlenu.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_fput_varlenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stb_fput_varlenu(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp uge i32 %5, 268435456
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @fputc(i32 240, i32* %8)
  br label %10

10:                                               ; preds = %7, %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp uge i32 %11, 2097152
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = icmp ult i32 %14, 268435456
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 224, i32 0
  %18 = load i32, i32* %4, align 4
  %19 = lshr i32 %18, 24
  %20 = add i32 %17, %19
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @fputc(i32 %20, i32* %21)
  br label %23

23:                                               ; preds = %13, %10
  %24 = load i32, i32* %4, align 4
  %25 = icmp uge i32 %24, 16384
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = icmp ult i32 %27, 2097152
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 192, i32 0
  %31 = load i32, i32* %4, align 4
  %32 = lshr i32 %31, 16
  %33 = add i32 %30, %32
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @fputc(i32 %33, i32* %34)
  br label %36

36:                                               ; preds = %26, %23
  %37 = load i32, i32* %4, align 4
  %38 = icmp uge i32 %37, 128
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = icmp ult i32 %40, 16384
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 128, i32 0
  %44 = load i32, i32* %4, align 4
  %45 = lshr i32 %44, 8
  %46 = add i32 %43, %45
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @fputc(i32 %46, i32* %47)
  br label %49

49:                                               ; preds = %39, %36
  %50 = load i32, i32* %4, align 4
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @fputc(i32 %50, i32* %51)
  ret void
}

declare dso_local i32 @fputc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
