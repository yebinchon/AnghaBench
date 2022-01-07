; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_get_nearest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_get_nearest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @get_nearest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_nearest(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = mul nsw i32 %7, %8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = mul nsw i32 %10, %11
  %13 = add nsw i32 %9, %12
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = mul nsw i32 %14, %15
  %17 = add nsw i32 %13, %16
  %18 = load i32, i32* %4, align 4
  %19 = sub nsw i32 255, %18
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 255, %20
  %22 = mul nsw i32 %19, %21
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 255, %23
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 255, %25
  %27 = mul nsw i32 %24, %26
  %28 = add nsw i32 %22, %27
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 255, %29
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 255, %31
  %33 = mul nsw i32 %30, %32
  %34 = add nsw i32 %28, %33
  %35 = icmp slt i32 %17, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 16777215
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
