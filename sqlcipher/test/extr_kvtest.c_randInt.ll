; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_kvtest.c_randInt.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_kvtest.c_randInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@randInt.x = internal global i32 859444173, align 4
@randInt.y = internal global i32 -323834390, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @randInt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @randInt() #0 {
  %1 = load i32, i32* @randInt.x, align 4
  %2 = lshr i32 %1, 1
  %3 = load i32, i32* @randInt.x, align 4
  %4 = and i32 %3, 1
  %5 = xor i32 %4, -1
  %6 = add i32 1, %5
  %7 = and i32 %6, -805306367
  %8 = xor i32 %2, %7
  store i32 %8, i32* @randInt.x, align 4
  %9 = load i32, i32* @randInt.y, align 4
  %10 = mul i32 %9, 1103515245
  %11 = add i32 %10, 12345
  store i32 %11, i32* @randInt.y, align 4
  %12 = load i32, i32* @randInt.x, align 4
  %13 = load i32, i32* @randInt.y, align 4
  %14 = xor i32 %12, %13
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
