; ModuleID = '/home/carl/AnghaBench/vlc/modules/visualization/visual/extr_fft.c_reverseBits.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/visualization/visual/extr_fft.c_reverseBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FFT_BUFFER_SIZE_LOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @reverseBits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reverseBits(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %18, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @FFT_BUFFER_SIZE_LOG, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = shl i32 %10, 1
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = and i32 %12, 1
  %14 = load i32, i32* %3, align 4
  %15 = add i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %2, align 4
  %17 = lshr i32 %16, 1
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %5

21:                                               ; preds = %5
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
