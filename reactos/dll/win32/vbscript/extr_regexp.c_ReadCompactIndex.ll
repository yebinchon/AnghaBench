; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_regexp.c_ReadCompactIndex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_regexp.c_ReadCompactIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64*)* @ReadCompactIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ReadCompactIndex(i32* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = getelementptr inbounds i32, i32* %7, i32 1
  store i32* %8, i32** %3, align 8
  %9 = load i32, i32* %7, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 128
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load i64*, i64** %4, align 8
  store i64 %15, i64* %16, align 8
  br label %40

17:                                               ; preds = %2
  store i64 7, i64* %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = and i64 127, %18
  %20 = load i64*, i64** %4, align 8
  store i64 %19, i64* %20, align 8
  br label %21

21:                                               ; preds = %35, %17
  %22 = load i32*, i32** %3, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %3, align 8
  %24 = load i32, i32* %22, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = and i64 %26, 127
  %28 = load i64, i64* %6, align 8
  %29 = shl i64 %27, %28
  %30 = load i64*, i64** %4, align 8
  %31 = load i64, i64* %30, align 8
  %32 = or i64 %31, %29
  store i64 %32, i64* %30, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 7
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %21
  %36 = load i64, i64* %5, align 8
  %37 = and i64 %36, 128
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %21, label %39

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39, %14
  %41 = load i32*, i32** %3, align 8
  ret i32* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
