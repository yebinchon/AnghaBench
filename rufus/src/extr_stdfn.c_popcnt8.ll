; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_stdfn.c_popcnt8.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_stdfn.c_popcnt8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@popcnt8.nibble_lookup = internal constant [16 x i32] [i32 0, i32 1, i32 1, i32 2, i32 1, i32 2, i32 2, i32 3, i32 1, i32 2, i32 2, i32 3, i32 2, i32 3, i32 3, i32 4], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @popcnt8(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 15
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [16 x i32], [16 x i32]* @popcnt8.nibble_lookup, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %2, align 4
  %9 = ashr i32 %8, 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* @popcnt8.nibble_lookup, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %7, %12
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
