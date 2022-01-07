; ModuleID = '/home/carl/AnghaBench/reactos/drivers/parallel/parallel/extr_parallel.c_Parallel_Reset.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/parallel/parallel/extr_parallel.c_Parallel_Reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LP_C = common dso_local global i64 0, align 8
@LP_DELAY = common dso_local global i32 0, align 4
@LP_PSELECP = common dso_local global i32 0, align 4
@LP_PINITP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Parallel_Reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Parallel_Reset() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @LP_C, align 8
  %3 = trunc i64 %2 to i32
  %4 = call i32 @WRITE_PORT_UCHAR(i32 %3, i32 0)
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %10, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @LP_DELAY, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %9
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %1, align 4
  br label %5

13:                                               ; preds = %5
  %14 = load i64, i64* @LP_C, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @LP_PSELECP, align 4
  %17 = load i32, i32* @LP_PINITP, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @WRITE_PORT_UCHAR(i32 %15, i32 %18)
  ret void
}

declare dso_local i32 @WRITE_PORT_UCHAR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
