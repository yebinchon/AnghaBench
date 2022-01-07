; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym64.c_DwDecodeUleb128.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym64.c_DwDecodeUleb128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DwDecodeUleb128(i64* %0, i8* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %27, %2
  %10 = load i8*, i8** %4, align 8
  %11 = load i64, i64* %8, align 8
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %7, align 1
  %14 = load i64, i64* %8, align 8
  %15 = add i64 %14, 1
  store i64 %15, i64* %8, align 8
  %16 = load i8, i8* %7, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 127
  %19 = load i64, i64* %6, align 8
  %20 = trunc i64 %19 to i32
  %21 = shl i32 %18, %20
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %5, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, 7
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %9
  %28 = load i8, i8* %7, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 128
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %9, label %32

32:                                               ; preds = %27
  %33 = load i64, i64* %5, align 8
  %34 = load i64*, i64** %3, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i64, i64* %8, align 8
  ret i64 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
