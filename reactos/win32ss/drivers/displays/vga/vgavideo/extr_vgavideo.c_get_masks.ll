; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/drivers/displays/vga/vgavideo/extr_vgavideo.c_get_masks.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/drivers/displays/vga/vgavideo/extr_vgavideo.c_get_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rightMask = common dso_local global i32 0, align 4
@leftMask = common dso_local global i32 0, align 4
@byteCounter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_masks(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* @rightMask, align 4
  store i32 0, i32* @leftMask, align 4
  %6 = load i32, i32* %4, align 4
  store i32 %6, i32* @byteCounter, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %7, %8
  %10 = and i32 %9, 7
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @byteCounter, align 4
  %16 = sub nsw i32 %15, %14
  store i32 %16, i32* @byteCounter, align 4
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 65280, %17
  %19 = trunc i32 %18 to i8
  %20 = zext i8 %19 to i32
  store i32 %20, i32* @rightMask, align 4
  br label %21

21:                                               ; preds = %13, %2
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 7
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 8, %27
  %29 = load i32, i32* @byteCounter, align 4
  %30 = sub nsw i32 %29, %28
  store i32 %30, i32* @byteCounter, align 4
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 255, %31
  store i32 %32, i32* @leftMask, align 4
  br label %33

33:                                               ; preds = %26, %21
  %34 = load i32, i32* @byteCounter, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @rightMask, align 4
  %38 = load i32, i32* @leftMask, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* @leftMask, align 4
  store i32 0, i32* @rightMask, align 4
  store i32 0, i32* @byteCounter, align 4
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i32, i32* @byteCounter, align 4
  %42 = sdiv i32 %41, 8
  store i32 %42, i32* @byteCounter, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
