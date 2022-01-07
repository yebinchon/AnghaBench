; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vrtc.c_rtcget.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vrtc.c_rtcget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtcdev = type { i32 }

@RTCSB_BIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtcdev*, i32, i32*)* @rtcget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtcget(%struct.rtcdev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtcdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtcdev* %0, %struct.rtcdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.rtcdev*, %struct.rtcdev** %5, align 8
  %11 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RTCSB_BIN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  store i32 0, i32* %4, align 4
  br label %37

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 15
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 4
  %24 = and i32 %23, 15
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 9
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 9
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %19
  store i32 -1, i32* %4, align 4
  br label %37

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %32, 10
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %31, %30, %16
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
