; ModuleID = '/home/carl/AnghaBench/seafile/common/cdc/extr_rabin-checksum.c_fls32.c'
source_filename = "/home/carl/AnghaBench/seafile/common/cdc/extr_rabin-checksum.c_fls32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bytemsb = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @fls32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fls32(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, -65536
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, -16777216
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load i64*, i64** @bytemsb, align 8
  %13 = load i32, i32* %3, align 4
  %14 = ashr i32 %13, 24
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %12, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 24, %17
  store i64 %18, i64* %2, align 8
  br label %45

19:                                               ; preds = %7
  %20 = load i64*, i64** @bytemsb, align 8
  %21 = load i32, i32* %3, align 4
  %22 = ashr i32 %21, 16
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %20, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 16, %25
  store i64 %26, i64* %2, align 8
  br label %45

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, 65280
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i64*, i64** @bytemsb, align 8
  %33 = load i32, i32* %3, align 4
  %34 = ashr i32 %33, 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %32, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 8, %37
  store i64 %38, i64* %2, align 8
  br label %45

39:                                               ; preds = %27
  %40 = load i64*, i64** @bytemsb, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %2, align 8
  br label %45

45:                                               ; preds = %39, %31, %19, %11
  %46 = load i64, i64* %2, align 8
  ret i64 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
