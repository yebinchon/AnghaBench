; ModuleID = '/home/carl/AnghaBench/systemd/src/boot/efi/extr_crc32.c_crc32_exclude_offset.c'
source_filename = "/home/carl/AnghaBench/systemd/src/boot/efi/extr_crc32.c_crc32_exclude_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crc32_exclude_offset(i32 %0, i64* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i64*, i64** %7, align 8
  store i64* %15, i64** %11, align 8
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %12, align 4
  store i64 0, i64* %13, align 8
  br label %17

17:                                               ; preds = %39, %5
  %18 = load i64, i64* %13, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  %22 = load i64*, i64** %11, align 8
  %23 = getelementptr inbounds i64, i64* %22, i32 1
  store i64* %23, i64** %11, align 8
  %24 = load i64, i64* %22, align 8
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = add nsw i64 %30, %31
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i64 0, i64* %14, align 8
  br label %35

35:                                               ; preds = %34, %28, %21
  %36 = load i32, i32* %12, align 4
  %37 = load i64, i64* %14, align 8
  %38 = call i32 @crc32_add_char(i32 %36, i64 %37)
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %13, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %13, align 8
  br label %17

42:                                               ; preds = %17
  %43 = load i32, i32* %12, align 4
  ret i32 %43
}

declare dso_local i32 @crc32_add_char(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
