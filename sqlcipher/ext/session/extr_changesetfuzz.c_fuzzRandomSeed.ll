; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/session/extr_changesetfuzz.c_fuzzRandomSeed.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/session/extr_changesetfuzz.c_fuzzRandomSeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@sqlite3Prng = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fuzzRandomSeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuzzRandomSeed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %47, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 256
  br i1 %6, label %7, label %50

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = lshr i32 %8, 24
  %10 = and i32 %9, 255
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3Prng, i32 0, i32 0), align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = xor i32 %15, %10
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %2, align 4
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3Prng, i32 0, i32 0), align 8
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = xor i32 %25, %19
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %2, align 4
  %28 = lshr i32 %27, 8
  %29 = and i32 %28, 255
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3Prng, i32 0, i32 0), align 8
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = xor i32 %35, %29
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* %2, align 4
  %38 = lshr i32 %37, 0
  %39 = and i32 %38, 255
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqlite3Prng, i32 0, i32 0), align 8
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 3
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %45, %39
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %7
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 4
  store i32 %49, i32* %3, align 4
  br label %4

50:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
