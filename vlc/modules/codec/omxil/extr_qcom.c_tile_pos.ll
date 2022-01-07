; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_qcom.c_tile_pos.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_qcom.c_tile_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64)* @tile_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tile_pos(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = and i64 %11, -2
  %13 = load i64, i64* %7, align 8
  %14 = mul i64 %12, %13
  %15 = add i64 %10, %14
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = and i64 %16, 1
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, -4
  %22 = add i64 %21, 2
  %23 = load i64, i64* %9, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %9, align 8
  br label %41

25:                                               ; preds = %4
  %26 = load i64, i64* %8, align 8
  %27 = and i64 %26, 1
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %8, align 8
  %32 = sub i64 %31, 1
  %33 = icmp ne i64 %30, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %29, %25
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, 2
  %37 = and i64 %36, -4
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %9, align 8
  br label %40

40:                                               ; preds = %34, %29
  br label %41

41:                                               ; preds = %40, %19
  %42 = load i64, i64* %9, align 8
  ret i64 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
