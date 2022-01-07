; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_utf8.c_utf8_encoded_expected_len.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_utf8.c_utf8_encoded_expected_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @utf8_encoded_expected_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @utf8_encoded_expected_len(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 128
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i64 1, i64* %2, align 8
  br label %33

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, 224
  %10 = icmp eq i32 %9, 192
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i64 2, i64* %2, align 8
  br label %33

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 240
  %15 = icmp eq i32 %14, 224
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i64 3, i64* %2, align 8
  br label %33

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 248
  %20 = icmp eq i32 %19, 240
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i64 4, i64* %2, align 8
  br label %33

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 252
  %25 = icmp eq i32 %24, 248
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i64 5, i64* %2, align 8
  br label %33

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, 254
  %30 = icmp eq i32 %29, 252
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i64 6, i64* %2, align 8
  br label %33

32:                                               ; preds = %27
  store i64 0, i64* %2, align 8
  br label %33

33:                                               ; preds = %32, %31, %26, %21, %16, %11, %6
  %34 = load i64, i64* %2, align 8
  ret i64 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
