; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_missing.h_popcnt64.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_missing.h_popcnt64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @popcnt64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @popcnt64(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = and i64 %4, 6148914691236517205
  %6 = load i32, i32* %2, align 4
  %7 = ashr i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = and i64 %8, 6148914691236517205
  %10 = add nsw i64 %5, %9
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = and i64 %13, 3689348814741910323
  %15 = load i32, i32* %2, align 4
  %16 = ashr i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = and i64 %17, 3689348814741910323
  %19 = add nsw i64 %14, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = and i64 %22, 1085102592571150095
  %24 = load i32, i32* %2, align 4
  %25 = ashr i32 %24, 4
  %26 = sext i32 %25 to i64
  %27 = and i64 %26, 1085102592571150095
  %28 = add nsw i64 %23, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = and i64 %31, 71777214294589695
  %33 = load i32, i32* %2, align 4
  %34 = ashr i32 %33, 8
  %35 = sext i32 %34 to i64
  %36 = and i64 %35, 71777214294589695
  %37 = add nsw i64 %32, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = and i64 %40, 281470681808895
  %42 = load i32, i32* %2, align 4
  %43 = ashr i32 %42, 16
  %44 = sext i32 %43 to i64
  %45 = and i64 %44, 281470681808895
  %46 = add nsw i64 %41, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* %2, align 4
  %50 = ashr i32 %49, 32
  %51 = add i32 %48, %50
  store i32 %51, i32* %2, align 4
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
