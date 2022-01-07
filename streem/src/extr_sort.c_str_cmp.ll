; ModuleID = '/home/carl/AnghaBench/streem/src/extr_sort.c_str_cmp.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_sort.c_str_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @str_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_cmp(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @strm_value_str(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @strm_value_str(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @strm_str_len(i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @strm_str_len(i32 %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i64, i64* %9, align 8
  store i64 %24, i64* %10, align 8
  br label %27

25:                                               ; preds = %2
  %26 = load i64, i64* %8, align 8
  store i64 %26, i64* %10, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @strm_str_ptr(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @strm_str_ptr(i32 %30)
  %32 = load i64, i64* %10, align 8
  %33 = call i64 @memcmp(i32 %29, i32 %31, i64 %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %27
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %50

41:                                               ; preds = %36
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 -1, i32* %3, align 4
  br label %50

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %27
  %48 = load i64, i64* %11, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %45, %40
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @strm_value_str(i32) #1

declare dso_local i64 @strm_str_len(i32) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @strm_str_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
