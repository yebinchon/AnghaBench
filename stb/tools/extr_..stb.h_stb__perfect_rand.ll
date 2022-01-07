; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb__perfect_rand.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb__perfect_rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stb__perfect_rand.stb__rand = internal global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @stb__perfect_rand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stb__perfect_rand() #0 {
  %1 = load i64, i64* @stb__perfect_rand.stb__rand, align 8
  %2 = mul i64 %1, 2147001325
  %3 = add i64 %2, 715136305
  store i64 %3, i64* @stb__perfect_rand.stb__rand, align 8
  %4 = load i64, i64* @stb__perfect_rand.stb__rand, align 8
  %5 = lshr i64 %4, 16
  %6 = load i64, i64* @stb__perfect_rand.stb__rand, align 8
  %7 = shl i64 %6, 16
  %8 = add i64 %5, %7
  %9 = xor i64 826366246, %8
  ret i64 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
