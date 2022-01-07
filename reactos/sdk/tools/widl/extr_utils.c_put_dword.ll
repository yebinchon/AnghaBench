; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_utils.c_put_dword.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_utils.c_put_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@byte_swapped = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @put_dword(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @byte_swapped, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = shl i32 %6, 24
  %8 = load i32, i32* %2, align 4
  %9 = shl i32 %8, 8
  %10 = and i32 %9, 16711680
  %11 = or i32 %7, %10
  %12 = load i32, i32* %2, align 4
  %13 = lshr i32 %12, 8
  %14 = and i32 %13, 65280
  %15 = or i32 %11, %14
  %16 = load i32, i32* %2, align 4
  %17 = lshr i32 %16, 24
  %18 = or i32 %15, %17
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %5, %1
  %20 = call i32 @put_data(i32* %2, i32 4)
  ret void
}

declare dso_local i32 @put_data(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
