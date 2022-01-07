; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_opus.h_opus_frame_duration.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_opus.h_opus_frame_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opus_frame_duration.silk_fs_div = internal constant [4 x i32] [i32 6000, i32 3000, i32 1500, i32 1000], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @opus_frame_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opus_frame_duration(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp slt i64 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %78

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 3
  switch i32 %20, label %23 [
    i32 0, label %21
    i32 1, label %22
    i32 2, label %22
  ]

21:                                               ; preds = %14
  store i32 1, i32* %7, align 4
  br label %33

22:                                               ; preds = %14, %14
  store i32 2, i32* %7, align 4
  br label %33

23:                                               ; preds = %14
  %24 = load i64, i64* %5, align 8
  %25 = icmp slt i64 %24, 2
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %78

27:                                               ; preds = %23
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 63
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %27, %22, %21
  store i32 48000, i32* %10, align 4
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 128
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %6, align 4
  %40 = lshr i32 %39, 3
  %41 = and i32 %40, 3
  %42 = shl i32 %38, %41
  %43 = udiv i32 %42, 400
  store i32 %43, i32* %8, align 4
  br label %66

44:                                               ; preds = %33
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 96
  %47 = icmp eq i32 %46, 96
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %6, align 4
  %51 = lshr i32 %50, 3
  %52 = and i32 %51, 1
  %53 = ashr i32 100, %52
  %54 = udiv i32 %49, %53
  store i32 %54, i32* %8, align 4
  br label %65

55:                                               ; preds = %44
  %56 = load i32, i32* %10, align 4
  %57 = mul i32 %56, 60
  %58 = load i32, i32* %6, align 4
  %59 = lshr i32 %58, 3
  %60 = and i32 %59, 3
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* @opus_frame_duration.silk_fs_div, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = udiv i32 %57, %63
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %55, %48
  br label %66

66:                                               ; preds = %65, %37
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = mul i32 %67, %68
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = mul i32 %70, 25
  %72 = load i32, i32* %10, align 4
  %73 = mul i32 %72, 3
  %74 = icmp ugt i32 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %78

76:                                               ; preds = %66
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %75, %26, %13
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
