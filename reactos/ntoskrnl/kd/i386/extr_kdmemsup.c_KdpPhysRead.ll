; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kd/i386/extr_kdmemsup.c_KdpPhysRead.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kd/i386/extr_kdmemsup.c_KdpPhysRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @KdpPhysRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @KdpPhysRead(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @KdpPhysMap(i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %31 [
    i32 8, label %11
    i32 4, label %16
    i32 2, label %21
    i32 1, label %26
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  br label %31

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i32*
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  br label %31

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  br label %31

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %2, %26, %21, %16, %11
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @KdpPhysMap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
