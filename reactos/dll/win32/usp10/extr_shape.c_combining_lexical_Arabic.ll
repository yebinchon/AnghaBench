; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_combining_lexical_Arabic.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_combining_lexical_Arabic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @combining_lexical_Arabic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @combining_lexical_Arabic(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %13 [
    i32 1611, label %5
    i32 1612, label %5
    i32 1614, label %5
    i32 1615, label %5
    i32 1618, label %5
    i32 1623, label %5
    i32 1624, label %5
    i32 1761, label %5
    i32 1613, label %6
    i32 1616, label %6
    i32 1622, label %6
    i32 1617, label %7
    i32 1552, label %8
    i32 1553, label %8
    i32 1554, label %8
    i32 1555, label %8
    i32 1556, label %8
    i32 1625, label %8
    i32 1750, label %8
    i32 1756, label %8
    i32 1759, label %8
    i32 1760, label %8
    i32 1762, label %8
    i32 1764, label %8
    i32 1767, label %8
    i32 1768, label %8
    i32 1771, label %8
    i32 1772, label %8
    i32 1763, label %9
    i32 1770, label %9
    i32 1773, label %9
    i32 1648, label %10
    i32 1619, label %11
    i32 1621, label %12
    i32 1620, label %12
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  store i32 1, i32* %2, align 4
  br label %14

6:                                                ; preds = %1, %1, %1
  store i32 2, i32* %2, align 4
  br label %14

7:                                                ; preds = %1
  store i32 3, i32* %2, align 4
  br label %14

8:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 4, i32* %2, align 4
  br label %14

9:                                                ; preds = %1, %1, %1
  store i32 5, i32* %2, align 4
  br label %14

10:                                               ; preds = %1
  store i32 6, i32* %2, align 4
  br label %14

11:                                               ; preds = %1
  store i32 7, i32* %2, align 4
  br label %14

12:                                               ; preds = %1, %1
  store i32 8, i32* %2, align 4
  br label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %13, %12, %11, %10, %9, %8, %7, %6, %5
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
