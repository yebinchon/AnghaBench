; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/avformat/extr_..vobsub.h_vobsub_palette_rgb2yuv.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/avformat/extr_..vobsub.h_vobsub_palette_rgb2yuv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @vobsub_palette_rgb2yuv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vobsub_palette_rgb2yuv(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %93, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %96

15:                                               ; preds = %12
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 16
  %22 = and i32 %21, 255
  store i32 %22, i32* %6, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 255
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 0
  %36 = and i32 %35, 255
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = mul nsw i32 %37, 2104
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %39, 4130
  %41 = add nsw i32 %38, %40
  %42 = load i32, i32* %8, align 4
  %43 = mul nsw i32 %42, 802
  %44 = add nsw i32 %41, %43
  %45 = add nsw i32 %44, 4096
  %46 = add nsw i32 %45, 131072
  %47 = call i32 @abs(i32 %46) #3
  %48 = ashr i32 %47, 13
  %49 = call i64 @__MIN(i32 %48, i32 235)
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %6, align 4
  %52 = mul nsw i32 %51, -1214
  %53 = load i32, i32* %7, align 4
  %54 = mul nsw i32 %53, -2384
  %55 = add nsw i32 %52, %54
  %56 = load i32, i32* %8, align 4
  %57 = mul nsw i32 %56, 3598
  %58 = add nsw i32 %55, %57
  %59 = add nsw i32 %58, 4096
  %60 = add nsw i32 %59, 1048576
  %61 = call i32 @abs(i32 %60) #3
  %62 = ashr i32 %61, 13
  %63 = call i64 @__MIN(i32 %62, i32 240)
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %6, align 4
  %66 = mul nsw i32 %65, 3598
  %67 = load i32, i32* %7, align 4
  %68 = mul nsw i32 %67, -3013
  %69 = add nsw i32 %66, %68
  %70 = load i32, i32* %8, align 4
  %71 = mul nsw i32 %70, -585
  %72 = add nsw i32 %69, %71
  %73 = add nsw i32 %72, 4096
  %74 = add nsw i32 %73, 1048576
  %75 = call i32 @abs(i32 %74) #3
  %76 = ashr i32 %75, 13
  %77 = call i64 @__MIN(i32 %76, i32 240)
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, 255
  %81 = shl i32 %80, 16
  %82 = load i32, i32* %11, align 4
  %83 = and i32 %82, 255
  %84 = shl i32 %83, 8
  %85 = or i32 %81, %84
  %86 = load i32, i32* %10, align 4
  %87 = and i32 %86, 255
  %88 = or i32 %85, %87
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %88, i32* %92, align 4
  br label %93

93:                                               ; preds = %15
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %12

96:                                               ; preds = %12
  ret void
}

declare dso_local i64 @__MIN(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
