; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_test-device.c_fz_test_fill_image_mask.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_test-device.c_fz_test_fill_image_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32*, float*, float, i32)* @fz_test_fill_image_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_test_fill_image_mask(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4, float* %5, float %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store float* %5, float** %14, align 8
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %17, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %8
  %25 = load i32*, i32** %9, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = load float*, float** %14, align 8
  %29 = load i32, i32* %16, align 4
  %30 = call i32 @fz_test_color(i32* %25, %struct.TYPE_3__* %26, i32* %27, float* %28, i32 %29)
  br label %31

31:                                               ; preds = %24, %8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = load float*, float** %14, align 8
  %45 = load float, float* %15, align 4
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @fz_fill_image_mask(i32* %37, i64 %40, i32* %41, i32 %42, i32* %43, float* %44, float %45, i32 %46)
  br label %48

48:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @fz_test_color(i32*, %struct.TYPE_3__*, i32*, float*, i32) #1

declare dso_local i32 @fz_fill_image_mask(i32*, i64, i32*, i32, i32*, float*, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
