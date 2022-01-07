; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_hqdn3d.h_deNoiseTemporal.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_hqdn3d.h_deNoiseTemporal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i16*, i32, i32, i32, i32, i32*)* @deNoiseTemporal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deNoiseTemporal(i8* %0, i8* %1, i16* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i16* %2, i16** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  store i64 0, i64* %18, align 8
  br label %20

20:                                               ; preds = %78, %8
  %21 = load i64, i64* %18, align 8
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %25, label %81

25:                                               ; preds = %20
  store i64 0, i64* %19, align 8
  br label %26

26:                                               ; preds = %62, %25
  %27 = load i64, i64* %19, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %26
  %32 = load i16*, i16** %11, align 8
  %33 = load i64, i64* %19, align 8
  %34 = getelementptr inbounds i16, i16* %32, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = shl i32 %36, 8
  %38 = trunc i32 %37 to i16
  %39 = load i8*, i8** %9, align 8
  %40 = load i64, i64* %19, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, 16
  %45 = trunc i32 %44 to i8
  %46 = load i32*, i32** %16, align 8
  %47 = call i32 @LowPassMul(i16 zeroext %38, i8 zeroext %45, i32* %46)
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = add i32 %48, 268435583
  %50 = lshr i32 %49, 8
  %51 = trunc i32 %50 to i16
  %52 = load i16*, i16** %11, align 8
  %53 = load i64, i64* %19, align 8
  %54 = getelementptr inbounds i16, i16* %52, i64 %53
  store i16 %51, i16* %54, align 2
  %55 = load i32, i32* %17, align 4
  %56 = add i32 %55, 268468223
  %57 = lshr i32 %56, 16
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %10, align 8
  %60 = load i64, i64* %19, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8 %58, i8* %61, align 1
  br label %62

62:                                               ; preds = %31
  %63 = load i64, i64* %19, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %19, align 8
  br label %26

65:                                               ; preds = %26
  %66 = load i32, i32* %14, align 4
  %67 = load i8*, i8** %9, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %9, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %10, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i16*, i16** %11, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i16, i16* %75, i64 %76
  store i16* %77, i16** %11, align 8
  br label %78

78:                                               ; preds = %65
  %79 = load i64, i64* %18, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %18, align 8
  br label %20

81:                                               ; preds = %20
  ret void
}

declare dso_local i32 @LowPassMul(i16 zeroext, i8 zeroext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
