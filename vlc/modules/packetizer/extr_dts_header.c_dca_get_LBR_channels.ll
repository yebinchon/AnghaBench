; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_dts_header.c_dca_get_LBR_channels.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_dts_header.c_dca_get_LBR_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i64 }

@dca_get_LBR_channels.bitmask = internal constant [16 x %struct.anon] [%struct.anon { i32 130, i64 1 }, %struct.anon { i32 133, i64 2 }, %struct.anon { i32 132, i64 2 }, %struct.anon { i32 129, i64 1 }, %struct.anon { i32 128, i64 1 }, %struct.anon { i32 0, i64 2 }, %struct.anon { i32 131, i64 2 }, %struct.anon { i32 0, i64 1 }, %struct.anon { i32 0, i64 1 }, %struct.anon { i32 0, i64 2 }, %struct.anon { i32 133, i64 2 }, %struct.anon { i32 132, i64 2 }, %struct.anon { i32 0, i64 1 }, %struct.anon { i32 0, i64 2 }, %struct.anon { i32 0, i64 1 }, %struct.anon { i32 0, i64 2 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*)* @dca_get_LBR_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dca_get_LBR_channels(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %33, %2
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [16 x %struct.anon], [16 x %struct.anon]* @dca_get_LBR_channels.bitmask, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 16
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [16 x %struct.anon], [16 x %struct.anon]* @dca_get_LBR_channels.bitmask, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = add nsw i64 %28, %27
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %15, %11
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  %35 = ashr i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %8

36:                                               ; preds = %8
  %37 = load i32, i32* %5, align 4
  %38 = load i32*, i32** %4, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i64, i64* %6, align 8
  ret i64 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
