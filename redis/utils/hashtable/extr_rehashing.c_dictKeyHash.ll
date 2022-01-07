; ModuleID = '/home/carl/AnghaBench/redis/utils/hashtable/extr_rehashing.c_dictKeyHash.c'
source_filename = "/home/carl/AnghaBench/redis/utils/hashtable/extr_rehashing.c_dictKeyHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dictKeyHash(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = ptrtoint i8* %4 to i64
  store i64 %5, i64* %3, align 8
  %6 = call i64 @dictGenHashFunction(i64* %3, i32 8)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = shl i64 %7, 15
  %9 = xor i64 %8, -1
  %10 = load i64, i64* %3, align 8
  %11 = add i64 %10, %9
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = lshr i64 %12, 10
  %14 = load i64, i64* %3, align 8
  %15 = xor i64 %14, %13
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = shl i64 %16, 3
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, %17
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = lshr i64 %20, 6
  %22 = load i64, i64* %3, align 8
  %23 = xor i64 %22, %21
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  %25 = shl i64 %24, 11
  %26 = xor i64 %25, -1
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = lshr i64 %29, 16
  %31 = load i64, i64* %3, align 8
  %32 = xor i64 %31, %30
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* %3, align 8
  %34 = trunc i64 %33 to i32
  ret i32 %34
}

declare dso_local i64 @dictGenHashFunction(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
