; ModuleID = '/home/carl/AnghaBench/twemproxy/src/hashkit/extr_nc_fnv.c_hash_fnv1_32.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/hashkit/extr_nc_fnv.c_hash_fnv1_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FNV_32_INIT = common dso_local global i32 0, align 4
@FNV_32_PRIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_fnv1_32(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @FNV_32_INIT, align 4
  store i32 %8, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %25, %2
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load i8*, i8** %3, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @FNV_32_PRIME, align 4
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = xor i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %13
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %6, align 8
  br label %9

28:                                               ; preds = %9
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
