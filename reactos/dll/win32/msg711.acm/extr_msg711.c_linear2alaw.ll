; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msg711.acm/extr_msg711.c_linear2alaw.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msg711.acm/extr_msg711.c_linear2alaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@seg_aend = common dso_local global i32 0, align 4
@SEG_SHIFT = common dso_local global i8 0, align 1
@QUANT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32)* @linear2alaw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @linear2alaw(i32 %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = ashr i32 %7, 3
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 213, i32* %4, align 4
  br label %16

12:                                               ; preds = %1
  store i32 85, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = sub nsw i32 0, %13
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %12, %11
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @seg_aend, align 4
  %19 = call i32 @search(i32 %17, i32 %18, i32 8)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 8
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = xor i32 127, %23
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %2, align 1
  br label %61

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = trunc i32 %27 to i8
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @SEG_SHIFT, align 1
  %31 = zext i8 %30 to i32
  %32 = shl i32 %29, %31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %6, align 1
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %45

36:                                               ; preds = %26
  %37 = load i32, i32* %3, align 4
  %38 = ashr i32 %37, 1
  %39 = load i32, i32* @QUANT_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i8, i8* %6, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %42, %40
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %6, align 1
  br label %55

45:                                               ; preds = %26
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %5, align 4
  %48 = ashr i32 %46, %47
  %49 = load i32, i32* @QUANT_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i8, i8* %6, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %52, %50
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %6, align 1
  br label %55

55:                                               ; preds = %45, %36
  %56 = load i8, i8* %6, align 1
  %57 = zext i8 %56 to i32
  %58 = load i32, i32* %4, align 4
  %59 = xor i32 %57, %58
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %2, align 1
  br label %61

61:                                               ; preds = %55, %22
  %62 = load i8, i8* %2, align 1
  ret i8 %62
}

declare dso_local i32 @search(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
