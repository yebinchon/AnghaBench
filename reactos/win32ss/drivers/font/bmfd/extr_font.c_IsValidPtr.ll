; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/drivers/font/bmfd/extr_font.c_IsValidPtr.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/drivers/font/bmfd/extr_font.c_IsValidPtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i64)* @IsValidPtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IsValidPtr(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %5
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i64, i64* %10, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %11, align 8
  %24 = sub nsw i64 %23, 1
  %25 = and i64 %22, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21, %15, %5
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %6, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
