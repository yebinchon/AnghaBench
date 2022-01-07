; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_vout_spuregion_helper.h_spuregion_CreateVGradientPalette.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_vout_spuregion_helper.h_spuregion_CreateVGradientPalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32)* @spuregion_CreateVGradientPalette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spuregion_CreateVGradientPalette(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %90, %4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %93

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, 16777215
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, 16777215
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = ashr i32 %25, 16
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = sub nsw i32 %27, %28
  %30 = mul nsw i32 %26, %29
  %31 = load i32, i32* %11, align 4
  %32 = ashr i32 %31, 16
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 %32, %33
  %35 = add nsw i32 %30, %34
  %36 = load i32, i32* %6, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %10, align 4
  %39 = ashr i32 %38, 8
  %40 = and i32 %39, 255
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %41, %42
  %44 = mul nsw i32 %40, %43
  %45 = load i32, i32* %11, align 4
  %46 = ashr i32 %45, 8
  %47 = and i32 %46, 255
  %48 = load i32, i32* %9, align 4
  %49 = mul nsw i32 %47, %48
  %50 = add nsw i32 %44, %49
  %51 = load i32, i32* %6, align 4
  %52 = sdiv i32 %50, %51
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, 255
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %55, %56
  %58 = mul nsw i32 %54, %57
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %59, 255
  %61 = load i32, i32* %9, align 4
  %62 = mul nsw i32 %60, %61
  %63 = add nsw i32 %58, %62
  %64 = load i32, i32* %6, align 4
  %65 = sdiv i32 %63, %64
  store i32 %65, i32* %14, align 4
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @RGB2YUV(i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %66, align 4
  %71 = getelementptr inbounds i32, i32* %66, i64 1
  %72 = load i32, i32* %7, align 4
  %73 = ashr i32 %72, 24
  store i32 %73, i32* %71, align 4
  %74 = getelementptr inbounds i32, i32* %71, i64 1
  %75 = getelementptr inbounds i32, i32* %66, i64 4
  br label %76

76:                                               ; preds = %76, %20
  %77 = phi i32* [ %74, %20 ], [ %78, %76 ]
  store i32 0, i32* %77, align 4
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = icmp eq i32* %78, %75
  br i1 %79, label %80, label %76

80:                                               ; preds = %76
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %89 = call i32 @memcpy(i32 %87, i32* %88, i32 4)
  br label %90

90:                                               ; preds = %80
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %16

93:                                               ; preds = %16
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  ret void
}

declare dso_local i32 @RGB2YUV(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
