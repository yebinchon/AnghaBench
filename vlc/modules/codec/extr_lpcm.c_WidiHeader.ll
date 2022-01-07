; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_lpcm.c_WidiHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_lpcm.c_WidiHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AOUT_CHAN_LEFT = common dso_local global i32 0, align 4
@AOUT_CHAN_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*)* @WidiHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WidiHeader(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 160
  br i1 %15, label %21, label %16

16:                                               ; preds = %5
  %17 = load i32*, i32** %11, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 6
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %5
  store i32 -1, i32* %6, align 4
  br label %53

22:                                               ; preds = %16
  %23 = load i32*, i32** %11, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 56
  %27 = ashr i32 %26, 3
  switch i32 %27, label %32 [
    i32 1, label %28
    i32 2, label %30
  ]

28:                                               ; preds = %22
  %29 = load i32*, i32** %7, align 8
  store i32 44100, i32* %29, align 4
  br label %33

30:                                               ; preds = %22
  %31 = load i32*, i32** %7, align 8
  store i32 48000, i32* %31, align 4
  br label %33

32:                                               ; preds = %22
  store i32 -1, i32* %6, align 4
  br label %53

33:                                               ; preds = %30, %28
  %34 = load i32*, i32** %11, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 6
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 -1, i32* %6, align 4
  br label %53

40:                                               ; preds = %33
  %41 = load i32*, i32** %10, align 8
  store i32 16, i32* %41, align 4
  br label %42

42:                                               ; preds = %40
  %43 = load i32*, i32** %11, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 7
  %47 = add nsw i32 %46, 1
  %48 = load i32*, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %50 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %51 = or i32 %49, %50
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %42, %39, %32, %21
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
