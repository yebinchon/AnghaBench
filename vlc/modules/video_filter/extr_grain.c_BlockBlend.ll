; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_grain.c_BlockBlend.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_grain.c_BlockBlend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BANK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, i64*, i64, i64*, i32, i32)* @BlockBlend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BlockBlend(i64* %0, i64 %1, i64* %2, i64 %3, i64* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64* %0, i64** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %17

17:                                               ; preds = %61, %7
  %18 = load i32, i32* %15, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %64

21:                                               ; preds = %17
  store i32 0, i32* %16, align 4
  br label %22

22:                                               ; preds = %57, %21
  %23 = load i32, i32* %16, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %22
  %27 = load i64*, i64** %10, align 8
  %28 = load i32, i32* %15, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %11, align 8
  %31 = mul i64 %29, %30
  %32 = load i32, i32* %16, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %31, %33
  %35 = getelementptr inbounds i64, i64* %27, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %12, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @BANK_SIZE, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32, i32* %16, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %37, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %36, %45
  %47 = call i64 @clip_uint8_vlc(i64 %46)
  %48 = load i64*, i64** %8, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %9, align 8
  %52 = mul i64 %50, %51
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %52, %54
  %56 = getelementptr inbounds i64, i64* %48, i64 %55
  store i64 %47, i64* %56, align 8
  br label %57

57:                                               ; preds = %26
  %58 = load i32, i32* %16, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %16, align 4
  br label %22

60:                                               ; preds = %22
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %15, align 4
  br label %17

64:                                               ; preds = %17
  ret void
}

declare dso_local i64 @clip_uint8_vlc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
