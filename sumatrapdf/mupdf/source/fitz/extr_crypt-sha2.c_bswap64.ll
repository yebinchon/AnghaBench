; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_crypt-sha2.c_bswap64.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_crypt-sha2.c_bswap64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bswap64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bswap64(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = shl i32 %3, 56
  %5 = sext i32 %4 to i64
  %6 = load i32, i32* %2, align 4
  %7 = shl i32 %6, 40
  %8 = sext i32 %7 to i64
  %9 = and i64 %8, 71776119061217280
  %10 = or i64 %5, %9
  %11 = load i32, i32* %2, align 4
  %12 = shl i32 %11, 24
  %13 = sext i32 %12 to i64
  %14 = and i64 %13, 280375465082880
  %15 = or i64 %10, %14
  %16 = load i32, i32* %2, align 4
  %17 = shl i32 %16, 8
  %18 = sext i32 %17 to i64
  %19 = and i64 %18, 1095216660480
  %20 = or i64 %15, %19
  %21 = load i32, i32* %2, align 4
  %22 = ashr i32 %21, 8
  %23 = sext i32 %22 to i64
  %24 = and i64 %23, 4278190080
  %25 = or i64 %20, %24
  %26 = load i32, i32* %2, align 4
  %27 = ashr i32 %26, 24
  %28 = sext i32 %27 to i64
  %29 = and i64 %28, 16711680
  %30 = or i64 %25, %29
  %31 = load i32, i32* %2, align 4
  %32 = ashr i32 %31, 40
  %33 = sext i32 %32 to i64
  %34 = and i64 %33, 65280
  %35 = or i64 %30, %34
  %36 = load i32, i32* %2, align 4
  %37 = ashr i32 %36, 56
  %38 = sext i32 %37 to i64
  %39 = or i64 %35, %38
  %40 = trunc i64 %39 to i32
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
