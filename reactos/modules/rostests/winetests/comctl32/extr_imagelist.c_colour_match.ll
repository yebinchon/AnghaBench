; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_colour_match.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_colour_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @colour_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @colour_match(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i64 8, i64* %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 255
  %11 = sext i32 %10 to i64
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 255
  %14 = sext i32 %13 to i64
  %15 = sub nsw i64 %11, %14
  %16 = call i64 @abs(i64 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 65280
  %19 = ashr i32 %18, 8
  %20 = sext i32 %19 to i64
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 65280
  %23 = ashr i32 %22, 8
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 %20, %24
  %26 = call i64 @abs(i64 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 16711680
  %29 = ashr i32 %28, 16
  %30 = sext i32 %29 to i64
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 16711680
  %33 = ashr i32 %32, 16
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %30, %34
  %36 = call i64 @abs(i64 %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp sle i64 %37, 8
  br i1 %38, label %39, label %45

39:                                               ; preds = %2
  %40 = load i64, i64* %7, align 8
  %41 = icmp sle i64 %40, 8
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64, i64* %8, align 8
  %44 = icmp sle i64 %43, 8
  br label %45

45:                                               ; preds = %42, %39, %2
  %46 = phi i1 [ false, %39 ], [ false, %2 ], [ %44, %42 ]
  %47 = zext i1 %46 to i32
  ret i32 %47
}

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
