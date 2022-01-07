; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_....packetizerav1_obu.h_leb128.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_....packetizerav1_obu.h_leb128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i32*)* @leb128 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @leb128(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load i32*, i32** %6, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %42, %3
  %11 = load i64, i64* %8, align 8
  %12 = icmp ult i64 %11, 8
  br i1 %12, label %13, label %45

13:                                               ; preds = %10
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %45

18:                                               ; preds = %13
  %19 = load i32*, i32** %4, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 127
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %8, align 8
  %26 = mul i64 %25, 7
  %27 = shl i64 %24, %26
  %28 = load i64, i64* %7, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %7, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 128
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %18
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %37, 1
  %39 = trunc i64 %38 to i32
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  br label %45

41:                                               ; preds = %18
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %8, align 8
  br label %10

45:                                               ; preds = %36, %17, %10
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* %7, align 8
  br label %52

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i64 [ %50, %49 ], [ 0, %51 ]
  ret i64 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
