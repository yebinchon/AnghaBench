; ModuleID = '/home/carl/AnghaBench/rufus/src/bled/extr_crc32.c_crc32init_le.c'
source_filename = "/home/carl/AnghaBench/rufus/src/bled/extr_crc32.c_crc32init_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRC_LE_BITS = common dso_local global i32 0, align 4
@CRCPOLY_LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @crc32init_le to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crc32init_le(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %5, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @CRC_LE_BITS, align 4
  %9 = sub nsw i32 %8, 1
  %10 = shl i32 1, %9
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %51, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @CRCPOLY_LE, align 4
  br label %23

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  %25 = xor i32 %16, %24
  store i32 %25, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %45, %23
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @CRC_LE_BITS, align 4
  %29 = shl i32 1, %28
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %32, %37
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = add i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  store i32 %38, i32* %44, align 4
  br label %45

45:                                               ; preds = %31
  %46 = load i32, i32* %3, align 4
  %47 = mul i32 2, %46
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %48, %47
  store i32 %49, i32* %4, align 4
  br label %26

50:                                               ; preds = %26
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %3, align 4
  %53 = lshr i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %11

54:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
