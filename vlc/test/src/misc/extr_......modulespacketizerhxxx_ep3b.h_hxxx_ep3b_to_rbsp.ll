; ModuleID = '/home/carl/AnghaBench/vlc/test/src/misc/extr_......modulespacketizerhxxx_ep3b.h_hxxx_ep3b_to_rbsp.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/misc/extr_......modulespacketizerhxxx_ep3b.h_hxxx_ep3b_to_rbsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i64)* @hxxx_ep3b_to_rbsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hxxx_ep3b_to_rbsp(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %62, %4
  %12 = load i64, i64* %10, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %65

15:                                               ; preds = %11
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp uge i32* %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32*, i32** %6, align 8
  store i32* %21, i32** %5, align 8
  br label %67

22:                                               ; preds = %15
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 1
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = or i32 %25, %30
  %32 = load i32*, i32** %8, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %61

36:                                               ; preds = %22
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 6
  %45 = icmp eq i32 %44, 6
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %6, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = lshr i32 %50, 1
  %52 = shl i32 %51, 1
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = or i32 %52, %57
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %46, %41
  br label %61

61:                                               ; preds = %60, %36, %22
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %10, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %10, align 8
  br label %11

65:                                               ; preds = %11
  %66 = load i32*, i32** %6, align 8
  store i32* %66, i32** %5, align 8
  br label %67

67:                                               ; preds = %65, %20
  %68 = load i32*, i32** %5, align 8
  ret i32* %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
